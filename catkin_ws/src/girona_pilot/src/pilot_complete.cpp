// pilot_complete.cpp
// GIRONA PILOT – FULL MISSION VERSION (Orbit, Waypoint, Depth & Pitch Hold)
// Features: 
// 1. SWAY STABILIZATION: Deadband=0.01, KV_SWAY=8.5 (Fixes oscillation)
// 2. HEAVE SMOOTHING: KP=7.0, KD=25.0 (Fixes overshoot & diving issues)
// 3. GAIN SCHEDULING: Depth-based PID strengthening
// 4. FULL FEATURES: Anti-windup, Back-calculation, Bias Estimator, Rate Limiting
// 5. NEW: Dynamic Setpoint Listener (/girona/setpoint) for X, Y, Depth, Pitch

#include <ros/ros.h>
#include <nav_msgs/Odometry.h>
#include <std_msgs/Float64MultiArray.h>
#include <geometry_msgs/PoseStamped.h> // HEDEF DINLEMEK ICIN EKLENDI
#include <tf/transform_datatypes.h>
#include <cmath>
#include <algorithm>
#include <vector>
#include <string>

static inline double angle_normalize(double a){
    while(a > M_PI) a -= 2.0*M_PI;
    while(a < -M_PI) a += 2.0*M_PI;
    return a;
}

class GironaPilot {
private:
    ros::NodeHandle nh;
    ros::Subscriber sub_odom;
    ros::Subscriber sub_setpoint; // YENI: Hedef dinleyicisi
    ros::Publisher  pub_thrusters;

    const int IDX_SURGE_R = 0;
    const int IDX_SURGE_L = 1;
    const int IDX_HEAVE_S = 2;
    const int IDX_HEAVE_B = 3;
    const int IDX_SWAY    = 4;
    const int N_THR = 5;

    // inversion flags
    bool INV_SURGE   = true;
    bool INV_SWAY    = false;
    bool INV_HEAVE_B = true;
    bool INV_HEAVE_S = true;

    const double X_BOW   =  0.5347;
    const double X_STERN = -0.5347;

    // YENI: Artik degistirilebilir hedefler
    double target_depth = 5.0; 
    double target_pitch = 0.0;

    // === GAINS (tweakable via ROS params) ===
    
    // [SWAY FIX 2] AGRESIFLIK DENGELENDI (0.8 -> 0.45)
    // Hedefi gorunce aniden saldirmasin, daha kontrollu yaklassin.
    double KP_POS   = 0.45; 
    
    double KV_SURGE = 2.5;
    
    // [SWAY FIX 1] SANAL SURTUNME ARTIRILDI (6.0 -> 8.5)
    // Yanal kaymayi durdurmak icin "bal kivami" etkisi. Sallantiyi emer.
    double KV_SWAY  = 8.5; 

    // --- GAIN SCHEDULING PARAMETER ---
    // Her metre derinlikte kazancı ne kadar artıracağız? (0.05 = %5 per meter)
    double GAIN_SCHED_DEPTH_COEFF = 0.05; 

    // Integrators (position)
    double KI_POS_SURGE = 0.0;
    
    // [SWAY FIX] Salınımı önlemek için integral düşürüldü (Bias estimator işi yapacak)
    double KI_POS_SWAY  = 0.05; 
    
    double I_POS_MAX    = 1.0;

    // integrator anti-windup back-calculation gains
    double K_AW_SURGE = 2.0;
    double K_AW_SWAY  = 2.0;

    // pre-saturation start (0..1). When base_control magnitude > this, KI is reduced.
    double PRE_SAT_START = 0.7;

    // integrator leak (per second)
    double I_LEAK_RATE = 0.002;

    // [SWAY FIX] Ölü bölge daraltıldı, geç tepki vermesin diye
    const double POS_DEADBAND = 0.01;
    const double V_DEADBAND   = 0.01;

    // Thruster output ramp (max change per second)
    double max_delta_per_second = 0.6;
    double max_delta_heave = 0.2; // Derinlikte yumuşak geçiş
    
    // [SWAY FIX 3] HIZLANMA RAMPASI KISILDI (1.5 -> 0.8)
    // Motorlar aniden vurup robotu savurmayacak (Kick effect onlendi).
    double max_delta_sway  = 0.8; 

    // Disturbance estimator (bias LPF)
    double bias_alpha = 0.1;
    std::string bias_mode = "actuator"; // "actuator" | "position" | "vel"

    // Yaw-into-current
    bool enable_yaw_into_current = false;
    double K_YAW = 0.6;
    double max_yaw_feed = 0.3;

    // Safety
    double odom_timeout = 1.0;
    bool allow_outputs = true;

    // Depth signal LPF
    double depth_lpf_alpha = 0.15;
    double depth_filtered = 0.0;

    bool ref_set=false;
    double x_ref=0, y_ref=0;

    double px=0, py=0, pz=0;
    double vx=0, vy=0;
    double roll=0,pitch=0,yaw=0;

    ros::Time last;

    std::vector<double> prev_thr;

    // integrator state (position)
    double i_ex = 0.0;
    double i_ey = 0.0;

    // disturbance bias estimates
    double bias_surge = 0.0;
    double bias_sway  = 0.0;

    // for position-derivative estimator
    double prev_ex_b = 0.0;
    double prev_ey_b = 0.0;

    static double clamp(double v,double lo=-1.0,double hi=1.0){
        return std::max(lo,std::min(hi,v));
    }

    // Enhanced PID struct:
    struct PID {
        double kp,ki,kd;
        double i;        // integrator state
        double imax;
        double prev_e;   // previous error (for derivative)
        double deriv_prev;  // filtered derivative
        double deriv_alpha; // 0..1, larger => smoother derivative
        double out_min, out_max; // optional output saturation for local AW
        double aw_gain; // back-calculation gain for integrator

        PID(double p=0,double i_=0,double d=0,double im=0,
            double deriv_a=0.7, double outmin=-1.0, double outmax=1.0, double aw=0.0)
            :kp(p),ki(i_),kd(d),i(0.0),imax(im),prev_e(0.0),
             deriv_prev(0.0), deriv_alpha(deriv_a),
             out_min(outmin), out_max(outmax), aw_gain(aw) {}

        // step returns final saturated output
        double step(double tgt, double cur, double dt){
            double e = tgt - cur;
            // derivative (filtered)
            double raw_d = (dt > 1e-6) ? ((e - prev_e)/dt) : 0.0;
            deriv_prev = deriv_alpha * deriv_prev + (1.0 - deriv_alpha) * raw_d;
            double D = kd * deriv_prev;
            double P = kp * e;

            // use previous integrator state to compute provisional raw output
            double I_old = ki * i;
            double raw_old = P + I_old + D;
            double sat_old = clamp(raw_old, out_min, out_max);

            // integrator derivative with back-calculation:
            // i_dot = e + aw_gain * (sat_old - raw_old)
            double i_dot = e;
            if(aw_gain != 0.0){
                i_dot += aw_gain * (sat_old - raw_old);
            }
            i += i_dot * dt;
            // clamp integrator magnitude
            if(imax > 0.0) i = std::max(-imax, std::min(imax, i));

            // final output and saturation
            double I = ki * i;
            double raw = P + I + D;
            double out = clamp(raw, out_min, out_max);

            prev_e = e;
            return out;
        }
    };

    // [HEAVE & PITCH] Onayladığın "On Numara" Ayarlar
    PID pid_depth {7.0, 0.05, 25.0, 0.4, 0.3, -1.0, 1.0, 1.0}; 
    PID pid_pitch {9.0, 0.5, 6.0, 0.3, 0.6, -1.0, 1.0, 1.0};

public:
    GironaPilot(){
        // load params (allow overrides)
        nh.param("girona/inv_surge", INV_SURGE, INV_SURGE);
        nh.param("girona/inv_sway",  INV_SWAY,  INV_SWAY);
        nh.param("girona/inv_heave_b", INV_HEAVE_B, INV_HEAVE_B);
        nh.param("girona/inv_heave_s", INV_HEAVE_S, INV_HEAVE_S);

        nh.param("girona/kp_pos", KP_POS, KP_POS);
        nh.param("girona/kv_surge", KV_SURGE, KV_SURGE);
        nh.param("girona/kv_sway",  KV_SWAY,  KV_SWAY);
        
        nh.param("girona/gain_sched_coeff", GAIN_SCHED_DEPTH_COEFF, GAIN_SCHED_DEPTH_COEFF);

        nh.param("girona/max_delta_per_second", max_delta_per_second, max_delta_per_second);
        nh.param("girona/max_delta_heave", max_delta_heave, max_delta_heave);
        nh.param("girona/max_delta_sway", max_delta_sway, max_delta_sway);

        nh.param("girona/ki_pos_surge", KI_POS_SURGE, KI_POS_SURGE);
        nh.param("girona/ki_pos_sway",  KI_POS_SWAY,  KI_POS_SWAY);
        nh.param("girona/i_pos_max",    I_POS_MAX,    I_POS_MAX);
        nh.param("girona/i_leak_rate",  I_LEAK_RATE,  I_LEAK_RATE);

        nh.param("girona/bias_alpha", bias_alpha, bias_alpha);
        nh.param<std::string>("girona/bias_mode", bias_mode, bias_mode); // actuator | position | vel

        nh.param("girona/enable_yaw_into_current", enable_yaw_into_current, enable_yaw_into_current);
        nh.param("girona/k_yaw", K_YAW, K_YAW);
        nh.param("girona/max_yaw_feed", max_yaw_feed, max_yaw_feed);

        nh.param("girona/odom_timeout", odom_timeout, odom_timeout);
        nh.param("girona/allow_outputs", allow_outputs, allow_outputs);

        nh.param("girona/k_aw_surge", K_AW_SURGE, K_AW_SURGE);
        nh.param("girona/k_aw_sway",  K_AW_SWAY,  K_AW_SWAY);
        nh.param("girona/pre_sat_start", PRE_SAT_START, PRE_SAT_START);

        nh.param("girona/depth_lpf_alpha", depth_lpf_alpha, depth_lpf_alpha);

        // allow tuning depth/pitch PID from params if desired
        nh.param("girona/pid_depth_kp", pid_depth.kp, pid_depth.kp);
        nh.param("girona/pid_depth_ki", pid_depth.ki, pid_depth.ki);
        nh.param("girona/pid_depth_kd", pid_depth.kd, pid_depth.kd);
        nh.param("girona/pid_depth_deriv_alpha", pid_depth.deriv_alpha, pid_depth.deriv_alpha);
        nh.param("girona/pid_depth_imax", pid_depth.imax, pid_depth.imax);
        nh.param("girona/pid_depth_aw", pid_depth.aw_gain, pid_depth.aw_gain);

        nh.param("girona/pid_pitch_kp", pid_pitch.kp, pid_pitch.kp);
        nh.param("girona/pid_pitch_ki", pid_pitch.ki, pid_pitch.ki);
        nh.param("girona/pid_pitch_kd", pid_pitch.kd, pid_pitch.kd);
        nh.param("girona/pid_pitch_deriv_alpha", pid_pitch.deriv_alpha, pid_pitch.deriv_alpha);
        nh.param("girona/pid_pitch_imax", pid_pitch.imax, pid_pitch.imax);
        nh.param("girona/pid_pitch_aw", pid_pitch.aw_gain, pid_pitch.aw_gain);

        sub_odom = nh.subscribe("/GIRONA500/odometry",1,
                                &GironaPilot::odom_cb,this);
        
        // YENI: Setpoint Listener
        // Mesaj Tipi: geometry_msgs/PoseStamped
        // Kullanim: 
        //  pose.position.x -> Hedef X
        //  pose.position.y -> Hedef Y
        //  pose.position.z -> Hedef Derinlik (Depth)
        //  pose.orientation -> Pitch icin kullanilacak (Quaternion'dan donusturulur)
        sub_setpoint = nh.subscribe("/girona/setpoint", 1, &GironaPilot::setpoint_cb, this);

        pub_thrusters =
            nh.advertise<std_msgs::Float64MultiArray>(
                "/GIRONA500/thrusters",1);
        last = ros::Time::now();
        prev_thr.assign(N_THR,0.0);
        ROS_INFO("GironaPilot: MISSION MODE READY (Listen /girona/setpoint)");
        ROS_INFO("Modes: Orbit(Update XY), Waypoint(Set XY), DepthHold(Set Z), PitchHold(Set Pitch)");
    }

    // YENI: Hedef Guncelleme Callback
    void setpoint_cb(const geometry_msgs::PoseStamped::ConstPtr& msg){
        x_ref = msg->pose.position.x;
        y_ref = msg->pose.position.y;
        target_depth = msg->pose.position.z;

        // Pitch'i Quaternion'dan cek
        tf::Quaternion q;
        tf::quaternionMsgToTF(msg->pose.orientation, q);
        double r_tgt, p_tgt, y_tgt;
        tf::Matrix3x3(q).getRPY(r_tgt, p_tgt, y_tgt);
        target_pitch = p_tgt;

        // Eger ilk kez setpoint geliyorsa ref_set bayragini kaldir
        if(!ref_set) {
            ref_set = true;
            ROS_INFO("ILK HEDEF KILITLENDI");
        }
        
        // Debug
        // ROS_INFO_THROTTLE(2.0, "New Setpoint -> X:%.1f Y:%.1f Z:%.1f P:%.2f", x_ref, y_ref, target_depth, target_pitch);
    }

    // per-thruster rate limiter
    double rate_limited(double prev, double desired, double dt, int thr_idx){
        double max_delta = max_delta_per_second * dt;
        
        // Custom limits based on axis physics
        if(thr_idx == IDX_HEAVE_B || thr_idx == IDX_HEAVE_S){
            max_delta = max_delta_heave * dt; // Slower for heave stability
        } else if (thr_idx == IDX_SWAY){
            max_delta = max_delta_sway * dt;  // Faster for sway response
        }

        double delta = desired - prev;
        if(delta > max_delta) delta = max_delta;
        if(delta < -max_delta) delta = -max_delta;
        return prev + delta;
    }

    void odom_cb(const nav_msgs::Odometry::ConstPtr& m){
        ros::Time now = ros::Time::now();
        double dt = (now - last).toSec();
        if(dt < 1e-4) return;
        if(dt > odom_timeout && odom_timeout > 0.0){
            std_msgs::Float64MultiArray msg;
            msg.data.assign(N_THR,0.0);
            pub_thrusters.publish(msg);
            ROS_WARN_THROTTLE(2.0,"No odom for %.2fs (timeout=%.2f) -> outputs zeroed", dt, odom_timeout);
            last = now;
            i_ex *= 0.95; i_ey *= 0.95;
            return;
        }
        last = now;

        tf::Quaternion q;
        tf::quaternionMsgToTF(m->pose.pose.orientation,q);
        tf::Matrix3x3(q).getRPY(roll,pitch,yaw);

        px=m->pose.pose.position.x;
        py=m->pose.pose.position.y;
        pz=m->pose.pose.position.z;

        vx=m->twist.twist.linear.x;
        vy=m->twist.twist.linear.y;

        // depth LPF (filter pressure noise)
        if(depth_filtered == 0.0) depth_filtered = pz;
        depth_filtered = depth_lpf_alpha * pz + (1.0 - depth_lpf_alpha) * depth_filtered;

        // Fallback: Eger disaridan hedef gelmediyse oldugu yere kilitlen
        if(!ref_set){
            x_ref=px; y_ref=py;
            // target_depth ve pitch default degerlerinde kalir (5.0m, 0.0 rad)
            ref_set=true;
            ROS_WARN("NO SETPOINT RECEIVED - STATION KEEPING AT CURRENT POS");
        }

        // WORLD errors
        double ex_w = x_ref - px;
        double ey_w = y_ref - py;

        // WORLD -> BODY
        double c = cos(yaw), s = sin(yaw);
        double ex_b =  c*ex_w + s*ey_w;
        double ey_b = -s*ex_w + c*ey_w;

        double vx_b =  c*vx + s*vy;
        double vy_b = -s*vx + c*vy;

        if(std::abs(ex_b) < POS_DEADBAND) ex_b = 0.0;
        if(std::abs(ey_b) < POS_DEADBAND) ey_b = 0.0;
        if(std::abs(vx_b) < V_DEADBAND)   vx_b = 0.0;
        if(std::abs(vy_b) < V_DEADBAND)   vy_b = 0.0;

        // --- GAIN SCHEDULING IMPLEMENTATION ---
        // Calculate scaling factor based on depth. 
        double current_depth_val = std::max(0.0, depth_filtered);
        double gain_scale = 1.0 + (current_depth_val * GAIN_SCHED_DEPTH_COEFF);
        
        // Scale the gains dynamically
        double KP_POS_sched   = KP_POS * gain_scale;
        double KV_SURGE_sched = KV_SURGE * gain_scale;
        double KV_SWAY_sched  = KV_SWAY * gain_scale;

        // --- compute base (no-integrator) controls ---
        double base_sur = KP_POS_sched * ex_b - KV_SURGE_sched * (vx_b - bias_surge);
        double base_swa = KP_POS_sched * ey_b - KV_SWAY_sched  * (vy_b - bias_sway);

        // --- pre-saturation scaling for KI (slow integrator when base already large) ---
        auto compute_ki_eff = [&](double KI_base, double base_ctrl)->double{
            double mag = std::abs(base_ctrl);
            if(PRE_SAT_START <= 0.0) return KI_base;
            if(mag <= PRE_SAT_START) return KI_base;
            // linear ramp down from PRE_SAT_START to 1.0
            double t = (mag - PRE_SAT_START) / (1.0 - PRE_SAT_START);
            t = std::max(0.0, std::min(1.0, t));
            double scale = 1.0 - t; // from 1 -> 0
            return KI_base * scale;
        };

        double KI_eff_sur = compute_ki_eff(KI_POS_SURGE, base_sur);
        double KI_eff_swa = compute_ki_eff(KI_POS_SWAY,  base_swa);

        // --- compute u_raw (with current integrator) and then apply back-calculation anti-windup ---
        double u_raw_sur = base_sur + KI_eff_sur * i_ex;
        double u_raw_swa = base_swa  + KI_eff_swa * i_ey;

        // saturate (actuator limits)
        double u_sat_sur = clamp(u_raw_sur);
        double u_sat_swa = clamp(u_raw_swa);

        // back-calculation: I_dot = KI_eff * e + K_aw * (u_sat - u_raw)
        double i_dot_ex = KI_eff_sur * ex_b + K_AW_SURGE * (u_sat_sur - u_raw_sur);
        double i_dot_ey = KI_eff_swa * ey_b  + K_AW_SWAY  * (u_sat_swa  - u_raw_swa);

        // integrate integrators
        i_ex += i_dot_ex * dt;
        i_ey += i_dot_ey * dt;

        // clamp integrators
        i_ex = std::max(-I_POS_MAX, std::min(I_POS_MAX, i_ex));
        i_ey = std::max(-I_POS_MAX, std::min(I_POS_MAX, i_ey));

        // integrator leak
        if(I_LEAK_RATE > 0.0){
            double leak_factor = 1.0 - I_LEAK_RATE * dt;
            if(leak_factor < 0.0) leak_factor = 0.0;
            i_ex *= leak_factor;
            i_ey *= leak_factor;
        }

        // zero integrator if inside deadband
        if(std::abs(ex_b) < POS_DEADBAND) i_ex = 0.0;
        if(std::abs(ey_b) < POS_DEADBAND) i_ey = 0.0;

        // final control with updated integrator (recompute)
        double Tsurge = base_sur + KI_eff_sur * i_ex;
        double Tsway  = base_swa  + KI_eff_swa * i_ey;

        // clamp
        Tsurge = clamp(Tsurge);
        Tsway  = clamp(Tsway);

        // yaw-into-current feed (optional)
        double yaw_feed = 0.0;
        if(enable_yaw_into_current){
            double desired_yaw = atan2(bias_sway, bias_surge) + M_PI;
            double bias_mag = std::hypot(bias_surge, bias_sway);
            if(bias_mag > 0.01){
                double yaw_err = angle_normalize(desired_yaw - yaw);
                yaw_feed = K_YAW * yaw_err;
                yaw_feed = clamp(yaw_feed, -max_yaw_feed, max_yaw_feed);
            }
        }

        double surge_r = Tsurge - yaw_feed;
        double surge_l = Tsurge + yaw_feed;
        double sway    = Tsway;

        if(INV_SURGE){ surge_r = -surge_r; surge_l = -surge_l; }
        if(INV_SWAY)  sway    = -sway;

        // DEPTH + PITCH (YENI: target_pitch ve target_depth degiskenleri kullaniliyor)
        // use depth_filtered instead of raw pz
        double Fz = pid_depth.step(target_depth, depth_filtered, dt);
        double Mp = pid_pitch.step(target_pitch, pitch, dt); // ARTIK PITCH HEDEFI DINAMIK

        double d=(X_BOW-X_STERN);
        double Tb=(Mp - Fz*X_STERN)/d;
        double Ts=(Fz*X_BOW - Mp)/d;

        Tb = clamp(Tb); Ts = clamp(Ts);
        if(INV_HEAVE_B) Tb=-Tb;
        if(INV_HEAVE_S) Ts=-Ts;

        std::vector<double> desired(N_THR,0.0);
        desired[IDX_SURGE_R] = surge_r;
        desired[IDX_SURGE_L] = surge_l;
        desired[IDX_SWAY]     = sway;
        desired[IDX_HEAVE_B]  = Tb;
        desired[IDX_HEAVE_S]  = Ts;

        std::vector<double> out(N_THR,0.0);
        for(int i=0;i<N_THR;i++){
            if(!allow_outputs){ out[i]=0.0; prev_thr[i]=0.0; continue; }
            out[i] = rate_limited(prev_thr[i], desired[i], dt, i);
            prev_thr[i] = out[i];
        }

        std_msgs::Float64MultiArray msg;
        msg.data.resize(N_THR);
        for(int i=0;i<N_THR;i++) msg.data[i]=out[i];
        pub_thrusters.publish(msg);

        // ----------------------------
        // NEW: actuator/position/vel-based bias estimator update (LPF)
        double bias_meas_sur = 0.0;
        double bias_meas_swa = 0.0;
        if(bias_mode == "actuator"){
            // Bias estimator uses the SCHEDULED gains to reverse-engineer the disturbance
            if(std::abs(KV_SURGE_sched) > 1e-6){
                bias_meas_sur = (u_sat_sur + KV_SURGE_sched * vx_b - KP_POS_sched * ex_b) / KV_SURGE_sched;
            } else {
                bias_meas_sur = vx_b;
            }
            if(std::abs(KV_SWAY_sched) > 1e-6){
                bias_meas_swa = (u_sat_swa + KV_SWAY_sched * vy_b - KP_POS_sched * ey_b) / KV_SWAY_sched;
            } else {
                bias_meas_swa = vy_b;
            }
        } else if(bias_mode == "position"){
            double ex_dot = (ex_b - prev_ex_b) / std::max(dt, 1e-6);
            double ey_dot = (ey_b - prev_ey_b) / std::max(dt, 1e-6);
            bias_meas_sur = -ex_dot;
            bias_meas_swa = -ey_dot;
            prev_ex_b = ex_b;
            prev_ey_b = ey_b;
        } else {
            bias_meas_sur = vx_b;
            bias_meas_swa = vy_b;
        }

        bias_surge += bias_alpha * (bias_meas_sur - bias_surge);
        bias_sway  += bias_alpha * (bias_meas_swa  - bias_sway);

        // For visibility
        ROS_INFO_THROTTLE(1.0,
            "Tgt[X:%.1f Y:%.1f Z:%.1f P:%.2f] | Err(%.2f %.2f) | Bias(%.3f) | Scale(%.2f)",
            x_ref, y_ref, target_depth, target_pitch, ex_b, ey_b, bias_surge, gain_scale);
    }
};

int main(int argc,char** argv){
    ros::init(argc,argv,"pilot_complete");
    GironaPilot p;
    ros::spin();
    return 0;
}

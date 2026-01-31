;; Auto-generated. Do not edit!


(when (boundp 'stonefish_ros::INS)
  (if (not (find-package "STONEFISH_ROS"))
    (make-package "STONEFISH_ROS"))
  (shadow 'INS (find-package "STONEFISH_ROS")))
(unless (find-package "STONEFISH_ROS::INS")
  (make-package "STONEFISH_ROS::INS"))

(in-package "ROS")
;;//! \htmlinclude INS.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass stonefish_ros::INS
  :super ros::object
  :slots (_header _latitude _longitude _origin_latitude _origin_longitude _pose _pose_variance _altitude _body_velocity _rpy_rate ))

(defmethod stonefish_ros::INS
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:latitude __latitude) 0.0)
    ((:longitude __longitude) 0.0)
    ((:origin_latitude __origin_latitude) 0.0)
    ((:origin_longitude __origin_longitude) 0.0)
    ((:pose __pose) (instance stonefish_ros::NEDPose :init))
    ((:pose_variance __pose_variance) (instance stonefish_ros::NEDPose :init))
    ((:altitude __altitude) 0.0)
    ((:body_velocity __body_velocity) (instance geometry_msgs::Vector3 :init))
    ((:rpy_rate __rpy_rate) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _latitude (float __latitude))
   (setq _longitude (float __longitude))
   (setq _origin_latitude (float __origin_latitude))
   (setq _origin_longitude (float __origin_longitude))
   (setq _pose __pose)
   (setq _pose_variance __pose_variance)
   (setq _altitude (float __altitude))
   (setq _body_velocity __body_velocity)
   (setq _rpy_rate __rpy_rate)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:origin_latitude
   (&optional __origin_latitude)
   (if __origin_latitude (setq _origin_latitude __origin_latitude)) _origin_latitude)
  (:origin_longitude
   (&optional __origin_longitude)
   (if __origin_longitude (setq _origin_longitude __origin_longitude)) _origin_longitude)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:pose_variance
   (&rest __pose_variance)
   (if (keywordp (car __pose_variance))
       (send* _pose_variance __pose_variance)
     (progn
       (if __pose_variance (setq _pose_variance (car __pose_variance)))
       _pose_variance)))
  (:altitude
   (&optional __altitude)
   (if __altitude (setq _altitude __altitude)) _altitude)
  (:body_velocity
   (&rest __body_velocity)
   (if (keywordp (car __body_velocity))
       (send* _body_velocity __body_velocity)
     (progn
       (if __body_velocity (setq _body_velocity (car __body_velocity)))
       _body_velocity)))
  (:rpy_rate
   (&rest __rpy_rate)
   (if (keywordp (car __rpy_rate))
       (send* _rpy_rate __rpy_rate)
     (progn
       (if __rpy_rate (setq _rpy_rate (car __rpy_rate)))
       _rpy_rate)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _latitude
    8
    ;; float64 _longitude
    8
    ;; float64 _origin_latitude
    8
    ;; float64 _origin_longitude
    8
    ;; stonefish_ros/NEDPose _pose
    (send _pose :serialization-length)
    ;; stonefish_ros/NEDPose _pose_variance
    (send _pose_variance :serialization-length)
    ;; float64 _altitude
    8
    ;; geometry_msgs/Vector3 _body_velocity
    (send _body_velocity :serialization-length)
    ;; geometry_msgs/Vector3 _rpy_rate
    (send _rpy_rate :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _origin_latitude
       (sys::poke _origin_latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _origin_longitude
       (sys::poke _origin_longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; stonefish_ros/NEDPose _pose
       (send _pose :serialize s)
     ;; stonefish_ros/NEDPose _pose_variance
       (send _pose_variance :serialize s)
     ;; float64 _altitude
       (sys::poke _altitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Vector3 _body_velocity
       (send _body_velocity :serialize s)
     ;; geometry_msgs/Vector3 _rpy_rate
       (send _rpy_rate :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _latitude
     (setq _latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _longitude
     (setq _longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _origin_latitude
     (setq _origin_latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _origin_longitude
     (setq _origin_longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; stonefish_ros/NEDPose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; stonefish_ros/NEDPose _pose_variance
     (send _pose_variance :deserialize buf ptr-) (incf ptr- (send _pose_variance :serialization-length))
   ;; float64 _altitude
     (setq _altitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Vector3 _body_velocity
     (send _body_velocity :deserialize buf ptr-) (incf ptr- (send _body_velocity :serialization-length))
   ;; geometry_msgs/Vector3 _rpy_rate
     (send _rpy_rate :deserialize buf ptr-) (incf ptr- (send _rpy_rate :serialization-length))
   ;;
   self)
  )

(setf (get stonefish_ros::INS :md5sum-) "aea13212cea3e4dea3f14d7fcc89e387")
(setf (get stonefish_ros::INS :datatype-) "stonefish_ros/INS")
(setf (get stonefish_ros::INS :definition-)
      "Header header

# Global position of robot
float64 latitude
float64 longitude

# Global position of NED origin
float64 origin_latitude
float64 origin_longitude

# Robot pose in NED
NEDPose pose
NEDPose pose_variance
float64 altitude

# Robot body velocity
geometry_msgs/Vector3 body_velocity
geometry_msgs/Vector3 rpy_rate
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: stonefish_ros/NEDPose
float64 north
float64 east
float64 down
float64 roll
float64 pitch
float64 yaw
================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :stonefish_ros/INS "aea13212cea3e4dea3f14d7fcc89e387")



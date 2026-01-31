;; Auto-generated. Do not edit!


(when (boundp 'stonefish_ros::NEDPose)
  (if (not (find-package "STONEFISH_ROS"))
    (make-package "STONEFISH_ROS"))
  (shadow 'NEDPose (find-package "STONEFISH_ROS")))
(unless (find-package "STONEFISH_ROS::NEDPOSE")
  (make-package "STONEFISH_ROS::NEDPOSE"))

(in-package "ROS")
;;//! \htmlinclude NEDPose.msg.html


(defclass stonefish_ros::NEDPose
  :super ros::object
  :slots (_north _east _down _roll _pitch _yaw ))

(defmethod stonefish_ros::NEDPose
  (:init
   (&key
    ((:north __north) 0.0)
    ((:east __east) 0.0)
    ((:down __down) 0.0)
    ((:roll __roll) 0.0)
    ((:pitch __pitch) 0.0)
    ((:yaw __yaw) 0.0)
    )
   (send-super :init)
   (setq _north (float __north))
   (setq _east (float __east))
   (setq _down (float __down))
   (setq _roll (float __roll))
   (setq _pitch (float __pitch))
   (setq _yaw (float __yaw))
   self)
  (:north
   (&optional __north)
   (if __north (setq _north __north)) _north)
  (:east
   (&optional __east)
   (if __east (setq _east __east)) _east)
  (:down
   (&optional __down)
   (if __down (setq _down __down)) _down)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:serialization-length
   ()
   (+
    ;; float64 _north
    8
    ;; float64 _east
    8
    ;; float64 _down
    8
    ;; float64 _roll
    8
    ;; float64 _pitch
    8
    ;; float64 _yaw
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _north
       (sys::poke _north (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _east
       (sys::poke _east (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _down
       (sys::poke _down (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _north
     (setq _north (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _east
     (setq _east (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _down
     (setq _down (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _roll
     (setq _roll (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch
     (setq _pitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw
     (setq _yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get stonefish_ros::NEDPose :md5sum-) "bf68106789b8189234a99c7c2b1e461e")
(setf (get stonefish_ros::NEDPose :datatype-) "stonefish_ros/NEDPose")
(setf (get stonefish_ros::NEDPose :definition-)
      "float64 north
float64 east
float64 down
float64 roll
float64 pitch
float64 yaw
")



(provide :stonefish_ros/NEDPose "bf68106789b8189234a99c7c2b1e461e")



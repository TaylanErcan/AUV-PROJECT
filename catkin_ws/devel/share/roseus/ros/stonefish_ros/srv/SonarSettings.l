;; Auto-generated. Do not edit!


(when (boundp 'stonefish_ros::SonarSettings)
  (if (not (find-package "STONEFISH_ROS"))
    (make-package "STONEFISH_ROS"))
  (shadow 'SonarSettings (find-package "STONEFISH_ROS")))
(unless (find-package "STONEFISH_ROS::SONARSETTINGS")
  (make-package "STONEFISH_ROS::SONARSETTINGS"))
(unless (find-package "STONEFISH_ROS::SONARSETTINGSREQUEST")
  (make-package "STONEFISH_ROS::SONARSETTINGSREQUEST"))
(unless (find-package "STONEFISH_ROS::SONARSETTINGSRESPONSE")
  (make-package "STONEFISH_ROS::SONARSETTINGSRESPONSE"))

(in-package "ROS")





(defclass stonefish_ros::SonarSettingsRequest
  :super ros::object
  :slots (_range_min _range_max _gain ))

(defmethod stonefish_ros::SonarSettingsRequest
  (:init
   (&key
    ((:range_min __range_min) 0.0)
    ((:range_max __range_max) 0.0)
    ((:gain __gain) 0.0)
    )
   (send-super :init)
   (setq _range_min (float __range_min))
   (setq _range_max (float __range_max))
   (setq _gain (float __gain))
   self)
  (:range_min
   (&optional __range_min)
   (if __range_min (setq _range_min __range_min)) _range_min)
  (:range_max
   (&optional __range_max)
   (if __range_max (setq _range_max __range_max)) _range_max)
  (:gain
   (&optional __gain)
   (if __gain (setq _gain __gain)) _gain)
  (:serialization-length
   ()
   (+
    ;; float64 _range_min
    8
    ;; float64 _range_max
    8
    ;; float64 _gain
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _range_min
       (sys::poke _range_min (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _range_max
       (sys::poke _range_max (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _gain
       (sys::poke _gain (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _range_min
     (setq _range_min (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _range_max
     (setq _range_max (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _gain
     (setq _gain (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass stonefish_ros::SonarSettingsResponse
  :super ros::object
  :slots (_success _message ))

(defmethod stonefish_ros::SonarSettingsResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass stonefish_ros::SonarSettings
  :super ros::object
  :slots ())

(setf (get stonefish_ros::SonarSettings :md5sum-) "3dd7b67bb9c281a0e1f972514667dae6")
(setf (get stonefish_ros::SonarSettings :datatype-) "stonefish_ros/SonarSettings")
(setf (get stonefish_ros::SonarSettings :request) stonefish_ros::SonarSettingsRequest)
(setf (get stonefish_ros::SonarSettings :response) stonefish_ros::SonarSettingsResponse)

(defmethod stonefish_ros::SonarSettingsRequest
  (:response () (instance stonefish_ros::SonarSettingsResponse :init)))

(setf (get stonefish_ros::SonarSettingsRequest :md5sum-) "3dd7b67bb9c281a0e1f972514667dae6")
(setf (get stonefish_ros::SonarSettingsRequest :datatype-) "stonefish_ros/SonarSettingsRequest")
(setf (get stonefish_ros::SonarSettingsRequest :definition-)
      "float64 range_min
float64 range_max
float64 gain
---
bool success
string message
")

(setf (get stonefish_ros::SonarSettingsResponse :md5sum-) "3dd7b67bb9c281a0e1f972514667dae6")
(setf (get stonefish_ros::SonarSettingsResponse :datatype-) "stonefish_ros/SonarSettingsResponse")
(setf (get stonefish_ros::SonarSettingsResponse :definition-)
      "float64 range_min
float64 range_max
float64 gain
---
bool success
string message
")



(provide :stonefish_ros/SonarSettings "3dd7b67bb9c281a0e1f972514667dae6")



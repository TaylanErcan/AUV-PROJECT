;; Auto-generated. Do not edit!


(when (boundp 'stonefish_ros::Respawn)
  (if (not (find-package "STONEFISH_ROS"))
    (make-package "STONEFISH_ROS"))
  (shadow 'Respawn (find-package "STONEFISH_ROS")))
(unless (find-package "STONEFISH_ROS::RESPAWN")
  (make-package "STONEFISH_ROS::RESPAWN"))
(unless (find-package "STONEFISH_ROS::RESPAWNREQUEST")
  (make-package "STONEFISH_ROS::RESPAWNREQUEST"))
(unless (find-package "STONEFISH_ROS::RESPAWNRESPONSE")
  (make-package "STONEFISH_ROS::RESPAWNRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass stonefish_ros::RespawnRequest
  :super ros::object
  :slots (_name _origin ))

(defmethod stonefish_ros::RespawnRequest
  (:init
   (&key
    ((:name __name) "")
    ((:origin __origin) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _origin __origin)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:origin
   (&rest __origin)
   (if (keywordp (car __origin))
       (send* _origin __origin)
     (progn
       (if __origin (setq _origin (car __origin)))
       _origin)))
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; geometry_msgs/Pose _origin
    (send _origin :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; geometry_msgs/Pose _origin
       (send _origin :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose _origin
     (send _origin :deserialize buf ptr-) (incf ptr- (send _origin :serialization-length))
   ;;
   self)
  )

(defclass stonefish_ros::RespawnResponse
  :super ros::object
  :slots (_success _message ))

(defmethod stonefish_ros::RespawnResponse
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

(defclass stonefish_ros::Respawn
  :super ros::object
  :slots ())

(setf (get stonefish_ros::Respawn :md5sum-) "4dd68abb2191666666d42e4d2cd55f30")
(setf (get stonefish_ros::Respawn :datatype-) "stonefish_ros/Respawn")
(setf (get stonefish_ros::Respawn :request) stonefish_ros::RespawnRequest)
(setf (get stonefish_ros::Respawn :response) stonefish_ros::RespawnResponse)

(defmethod stonefish_ros::RespawnRequest
  (:response () (instance stonefish_ros::RespawnResponse :init)))

(setf (get stonefish_ros::RespawnRequest :md5sum-) "4dd68abb2191666666d42e4d2cd55f30")
(setf (get stonefish_ros::RespawnRequest :datatype-) "stonefish_ros/RespawnRequest")
(setf (get stonefish_ros::RespawnRequest :definition-)
      "string name
geometry_msgs/Pose origin

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
bool success
string message
")

(setf (get stonefish_ros::RespawnResponse :md5sum-) "4dd68abb2191666666d42e4d2cd55f30")
(setf (get stonefish_ros::RespawnResponse :datatype-) "stonefish_ros/RespawnResponse")
(setf (get stonefish_ros::RespawnResponse :definition-)
      "string name
geometry_msgs/Pose origin

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
bool success
string message
")



(provide :stonefish_ros/Respawn "4dd68abb2191666666d42e4d2cd55f30")



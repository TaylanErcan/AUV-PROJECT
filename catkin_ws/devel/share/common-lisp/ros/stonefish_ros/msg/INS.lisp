; Auto-generated. Do not edit!


(cl:in-package stonefish_ros-msg)


;//! \htmlinclude INS.msg.html

(cl:defclass <INS> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (latitude
    :reader latitude
    :initarg :latitude
    :type cl:float
    :initform 0.0)
   (longitude
    :reader longitude
    :initarg :longitude
    :type cl:float
    :initform 0.0)
   (origin_latitude
    :reader origin_latitude
    :initarg :origin_latitude
    :type cl:float
    :initform 0.0)
   (origin_longitude
    :reader origin_longitude
    :initarg :origin_longitude
    :type cl:float
    :initform 0.0)
   (pose
    :reader pose
    :initarg :pose
    :type stonefish_ros-msg:NEDPose
    :initform (cl:make-instance 'stonefish_ros-msg:NEDPose))
   (pose_variance
    :reader pose_variance
    :initarg :pose_variance
    :type stonefish_ros-msg:NEDPose
    :initform (cl:make-instance 'stonefish_ros-msg:NEDPose))
   (altitude
    :reader altitude
    :initarg :altitude
    :type cl:float
    :initform 0.0)
   (body_velocity
    :reader body_velocity
    :initarg :body_velocity
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (rpy_rate
    :reader rpy_rate
    :initarg :rpy_rate
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass INS (<INS>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <INS>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'INS)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name stonefish_ros-msg:<INS> is deprecated: use stonefish_ros-msg:INS instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <INS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stonefish_ros-msg:header-val is deprecated.  Use stonefish_ros-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'latitude-val :lambda-list '(m))
(cl:defmethod latitude-val ((m <INS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stonefish_ros-msg:latitude-val is deprecated.  Use stonefish_ros-msg:latitude instead.")
  (latitude m))

(cl:ensure-generic-function 'longitude-val :lambda-list '(m))
(cl:defmethod longitude-val ((m <INS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stonefish_ros-msg:longitude-val is deprecated.  Use stonefish_ros-msg:longitude instead.")
  (longitude m))

(cl:ensure-generic-function 'origin_latitude-val :lambda-list '(m))
(cl:defmethod origin_latitude-val ((m <INS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stonefish_ros-msg:origin_latitude-val is deprecated.  Use stonefish_ros-msg:origin_latitude instead.")
  (origin_latitude m))

(cl:ensure-generic-function 'origin_longitude-val :lambda-list '(m))
(cl:defmethod origin_longitude-val ((m <INS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stonefish_ros-msg:origin_longitude-val is deprecated.  Use stonefish_ros-msg:origin_longitude instead.")
  (origin_longitude m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <INS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stonefish_ros-msg:pose-val is deprecated.  Use stonefish_ros-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'pose_variance-val :lambda-list '(m))
(cl:defmethod pose_variance-val ((m <INS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stonefish_ros-msg:pose_variance-val is deprecated.  Use stonefish_ros-msg:pose_variance instead.")
  (pose_variance m))

(cl:ensure-generic-function 'altitude-val :lambda-list '(m))
(cl:defmethod altitude-val ((m <INS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stonefish_ros-msg:altitude-val is deprecated.  Use stonefish_ros-msg:altitude instead.")
  (altitude m))

(cl:ensure-generic-function 'body_velocity-val :lambda-list '(m))
(cl:defmethod body_velocity-val ((m <INS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stonefish_ros-msg:body_velocity-val is deprecated.  Use stonefish_ros-msg:body_velocity instead.")
  (body_velocity m))

(cl:ensure-generic-function 'rpy_rate-val :lambda-list '(m))
(cl:defmethod rpy_rate-val ((m <INS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stonefish_ros-msg:rpy_rate-val is deprecated.  Use stonefish_ros-msg:rpy_rate instead.")
  (rpy_rate m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <INS>) ostream)
  "Serializes a message object of type '<INS>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'latitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'longitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'origin_latitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'origin_longitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose_variance) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'altitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'body_velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rpy_rate) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <INS>) istream)
  "Deserializes a message object of type '<INS>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'latitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'longitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'origin_latitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'origin_longitude) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose_variance) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'altitude) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'body_velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rpy_rate) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<INS>)))
  "Returns string type for a message object of type '<INS>"
  "stonefish_ros/INS")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'INS)))
  "Returns string type for a message object of type 'INS"
  "stonefish_ros/INS")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<INS>)))
  "Returns md5sum for a message object of type '<INS>"
  "aea13212cea3e4dea3f14d7fcc89e387")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'INS)))
  "Returns md5sum for a message object of type 'INS"
  "aea13212cea3e4dea3f14d7fcc89e387")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<INS>)))
  "Returns full string definition for message of type '<INS>"
  (cl:format cl:nil "Header header~%~%# Global position of robot~%float64 latitude~%float64 longitude~%~%# Global position of NED origin~%float64 origin_latitude~%float64 origin_longitude~%~%# Robot pose in NED~%NEDPose pose~%NEDPose pose_variance~%float64 altitude~%~%# Robot body velocity~%geometry_msgs/Vector3 body_velocity~%geometry_msgs/Vector3 rpy_rate~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: stonefish_ros/NEDPose~%float64 north~%float64 east~%float64 down~%float64 roll~%float64 pitch~%float64 yaw~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'INS)))
  "Returns full string definition for message of type 'INS"
  (cl:format cl:nil "Header header~%~%# Global position of robot~%float64 latitude~%float64 longitude~%~%# Global position of NED origin~%float64 origin_latitude~%float64 origin_longitude~%~%# Robot pose in NED~%NEDPose pose~%NEDPose pose_variance~%float64 altitude~%~%# Robot body velocity~%geometry_msgs/Vector3 body_velocity~%geometry_msgs/Vector3 rpy_rate~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: stonefish_ros/NEDPose~%float64 north~%float64 east~%float64 down~%float64 roll~%float64 pitch~%float64 yaw~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <INS>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose_variance))
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'body_velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rpy_rate))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <INS>))
  "Converts a ROS message object to a list"
  (cl:list 'INS
    (cl:cons ':header (header msg))
    (cl:cons ':latitude (latitude msg))
    (cl:cons ':longitude (longitude msg))
    (cl:cons ':origin_latitude (origin_latitude msg))
    (cl:cons ':origin_longitude (origin_longitude msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':pose_variance (pose_variance msg))
    (cl:cons ':altitude (altitude msg))
    (cl:cons ':body_velocity (body_velocity msg))
    (cl:cons ':rpy_rate (rpy_rate msg))
))

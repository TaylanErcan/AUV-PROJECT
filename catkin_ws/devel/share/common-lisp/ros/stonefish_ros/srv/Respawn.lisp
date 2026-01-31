; Auto-generated. Do not edit!


(cl:in-package stonefish_ros-srv)


;//! \htmlinclude Respawn-request.msg.html

(cl:defclass <Respawn-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (origin
    :reader origin
    :initarg :origin
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass Respawn-request (<Respawn-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Respawn-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Respawn-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name stonefish_ros-srv:<Respawn-request> is deprecated: use stonefish_ros-srv:Respawn-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <Respawn-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stonefish_ros-srv:name-val is deprecated.  Use stonefish_ros-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'origin-val :lambda-list '(m))
(cl:defmethod origin-val ((m <Respawn-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stonefish_ros-srv:origin-val is deprecated.  Use stonefish_ros-srv:origin instead.")
  (origin m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Respawn-request>) ostream)
  "Serializes a message object of type '<Respawn-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'origin) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Respawn-request>) istream)
  "Deserializes a message object of type '<Respawn-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'origin) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Respawn-request>)))
  "Returns string type for a service object of type '<Respawn-request>"
  "stonefish_ros/RespawnRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Respawn-request)))
  "Returns string type for a service object of type 'Respawn-request"
  "stonefish_ros/RespawnRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Respawn-request>)))
  "Returns md5sum for a message object of type '<Respawn-request>"
  "4dd68abb2191666666d42e4d2cd55f30")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Respawn-request)))
  "Returns md5sum for a message object of type 'Respawn-request"
  "4dd68abb2191666666d42e4d2cd55f30")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Respawn-request>)))
  "Returns full string definition for message of type '<Respawn-request>"
  (cl:format cl:nil "string name~%geometry_msgs/Pose origin~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Respawn-request)))
  "Returns full string definition for message of type 'Respawn-request"
  (cl:format cl:nil "string name~%geometry_msgs/Pose origin~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Respawn-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'origin))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Respawn-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Respawn-request
    (cl:cons ':name (name msg))
    (cl:cons ':origin (origin msg))
))
;//! \htmlinclude Respawn-response.msg.html

(cl:defclass <Respawn-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass Respawn-response (<Respawn-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Respawn-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Respawn-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name stonefish_ros-srv:<Respawn-response> is deprecated: use stonefish_ros-srv:Respawn-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Respawn-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stonefish_ros-srv:success-val is deprecated.  Use stonefish_ros-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <Respawn-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stonefish_ros-srv:message-val is deprecated.  Use stonefish_ros-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Respawn-response>) ostream)
  "Serializes a message object of type '<Respawn-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Respawn-response>) istream)
  "Deserializes a message object of type '<Respawn-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Respawn-response>)))
  "Returns string type for a service object of type '<Respawn-response>"
  "stonefish_ros/RespawnResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Respawn-response)))
  "Returns string type for a service object of type 'Respawn-response"
  "stonefish_ros/RespawnResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Respawn-response>)))
  "Returns md5sum for a message object of type '<Respawn-response>"
  "4dd68abb2191666666d42e4d2cd55f30")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Respawn-response)))
  "Returns md5sum for a message object of type 'Respawn-response"
  "4dd68abb2191666666d42e4d2cd55f30")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Respawn-response>)))
  "Returns full string definition for message of type '<Respawn-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Respawn-response)))
  "Returns full string definition for message of type 'Respawn-response"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Respawn-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Respawn-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Respawn-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Respawn)))
  'Respawn-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Respawn)))
  'Respawn-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Respawn)))
  "Returns string type for a service object of type '<Respawn>"
  "stonefish_ros/Respawn")
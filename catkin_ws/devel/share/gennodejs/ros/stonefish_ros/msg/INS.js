// Auto-generated. Do not edit!

// (in-package stonefish_ros.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let NEDPose = require('./NEDPose.js');
let std_msgs = _finder('std_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class INS {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.latitude = null;
      this.longitude = null;
      this.origin_latitude = null;
      this.origin_longitude = null;
      this.pose = null;
      this.pose_variance = null;
      this.altitude = null;
      this.body_velocity = null;
      this.rpy_rate = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('latitude')) {
        this.latitude = initObj.latitude
      }
      else {
        this.latitude = 0.0;
      }
      if (initObj.hasOwnProperty('longitude')) {
        this.longitude = initObj.longitude
      }
      else {
        this.longitude = 0.0;
      }
      if (initObj.hasOwnProperty('origin_latitude')) {
        this.origin_latitude = initObj.origin_latitude
      }
      else {
        this.origin_latitude = 0.0;
      }
      if (initObj.hasOwnProperty('origin_longitude')) {
        this.origin_longitude = initObj.origin_longitude
      }
      else {
        this.origin_longitude = 0.0;
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new NEDPose();
      }
      if (initObj.hasOwnProperty('pose_variance')) {
        this.pose_variance = initObj.pose_variance
      }
      else {
        this.pose_variance = new NEDPose();
      }
      if (initObj.hasOwnProperty('altitude')) {
        this.altitude = initObj.altitude
      }
      else {
        this.altitude = 0.0;
      }
      if (initObj.hasOwnProperty('body_velocity')) {
        this.body_velocity = initObj.body_velocity
      }
      else {
        this.body_velocity = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('rpy_rate')) {
        this.rpy_rate = initObj.rpy_rate
      }
      else {
        this.rpy_rate = new geometry_msgs.msg.Vector3();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type INS
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [latitude]
    bufferOffset = _serializer.float64(obj.latitude, buffer, bufferOffset);
    // Serialize message field [longitude]
    bufferOffset = _serializer.float64(obj.longitude, buffer, bufferOffset);
    // Serialize message field [origin_latitude]
    bufferOffset = _serializer.float64(obj.origin_latitude, buffer, bufferOffset);
    // Serialize message field [origin_longitude]
    bufferOffset = _serializer.float64(obj.origin_longitude, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = NEDPose.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [pose_variance]
    bufferOffset = NEDPose.serialize(obj.pose_variance, buffer, bufferOffset);
    // Serialize message field [altitude]
    bufferOffset = _serializer.float64(obj.altitude, buffer, bufferOffset);
    // Serialize message field [body_velocity]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.body_velocity, buffer, bufferOffset);
    // Serialize message field [rpy_rate]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.rpy_rate, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type INS
    let len;
    let data = new INS(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [latitude]
    data.latitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [longitude]
    data.longitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [origin_latitude]
    data.origin_latitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [origin_longitude]
    data.origin_longitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = NEDPose.deserialize(buffer, bufferOffset);
    // Deserialize message field [pose_variance]
    data.pose_variance = NEDPose.deserialize(buffer, bufferOffset);
    // Deserialize message field [altitude]
    data.altitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [body_velocity]
    data.body_velocity = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [rpy_rate]
    data.rpy_rate = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 184;
  }

  static datatype() {
    // Returns string type for a message object
    return 'stonefish_ros/INS';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'aea13212cea3e4dea3f14d7fcc89e387';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new INS(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.latitude !== undefined) {
      resolved.latitude = msg.latitude;
    }
    else {
      resolved.latitude = 0.0
    }

    if (msg.longitude !== undefined) {
      resolved.longitude = msg.longitude;
    }
    else {
      resolved.longitude = 0.0
    }

    if (msg.origin_latitude !== undefined) {
      resolved.origin_latitude = msg.origin_latitude;
    }
    else {
      resolved.origin_latitude = 0.0
    }

    if (msg.origin_longitude !== undefined) {
      resolved.origin_longitude = msg.origin_longitude;
    }
    else {
      resolved.origin_longitude = 0.0
    }

    if (msg.pose !== undefined) {
      resolved.pose = NEDPose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new NEDPose()
    }

    if (msg.pose_variance !== undefined) {
      resolved.pose_variance = NEDPose.Resolve(msg.pose_variance)
    }
    else {
      resolved.pose_variance = new NEDPose()
    }

    if (msg.altitude !== undefined) {
      resolved.altitude = msg.altitude;
    }
    else {
      resolved.altitude = 0.0
    }

    if (msg.body_velocity !== undefined) {
      resolved.body_velocity = geometry_msgs.msg.Vector3.Resolve(msg.body_velocity)
    }
    else {
      resolved.body_velocity = new geometry_msgs.msg.Vector3()
    }

    if (msg.rpy_rate !== undefined) {
      resolved.rpy_rate = geometry_msgs.msg.Vector3.Resolve(msg.rpy_rate)
    }
    else {
      resolved.rpy_rate = new geometry_msgs.msg.Vector3()
    }

    return resolved;
    }
};

module.exports = INS;

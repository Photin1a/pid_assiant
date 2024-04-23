// Auto-generated. Do not edit!

// (in-package dg_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Localization3D {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.localization = null;
      this.confidence = null;
      this.delay_ms = null;
    }
    else {
      if (initObj.hasOwnProperty('localization')) {
        this.localization = initObj.localization
      }
      else {
        this.localization = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('confidence')) {
        this.confidence = initObj.confidence
      }
      else {
        this.confidence = 0.0;
      }
      if (initObj.hasOwnProperty('delay_ms')) {
        this.delay_ms = initObj.delay_ms
      }
      else {
        this.delay_ms = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Localization3D
    // Serialize message field [localization]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.localization, buffer, bufferOffset);
    // Serialize message field [confidence]
    bufferOffset = _serializer.float32(obj.confidence, buffer, bufferOffset);
    // Serialize message field [delay_ms]
    bufferOffset = _serializer.float32(obj.delay_ms, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Localization3D
    let len;
    let data = new Localization3D(null);
    // Deserialize message field [localization]
    data.localization = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [confidence]
    data.confidence = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [delay_ms]
    data.delay_ms = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.localization);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dg_msgs/Localization3D';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ce50be351436d14407b6f3d3588249ed';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 3D导航用的定位信息
    geometry_msgs/PoseStamped localization              # 位置姿态
    float32 confidence                                  # 定位置信度
    float32 delay_ms                                    # 定位延时
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Localization3D(null);
    if (msg.localization !== undefined) {
      resolved.localization = geometry_msgs.msg.PoseStamped.Resolve(msg.localization)
    }
    else {
      resolved.localization = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.confidence !== undefined) {
      resolved.confidence = msg.confidence;
    }
    else {
      resolved.confidence = 0.0
    }

    if (msg.delay_ms !== undefined) {
      resolved.delay_ms = msg.delay_ms;
    }
    else {
      resolved.delay_ms = 0.0
    }

    return resolved;
    }
};

module.exports = Localization3D;

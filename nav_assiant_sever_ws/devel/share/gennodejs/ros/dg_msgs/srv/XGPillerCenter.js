// Auto-generated. Do not edit!

// (in-package dg_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let UniversalStateInfo = require('../msg/UniversalStateInfo.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class XGPillerCenterRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.detect_dis = null;
    }
    else {
      if (initObj.hasOwnProperty('detect_dis')) {
        this.detect_dis = initObj.detect_dis
      }
      else {
        this.detect_dis = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type XGPillerCenterRequest
    // Serialize message field [detect_dis]
    bufferOffset = _serializer.float32(obj.detect_dis, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type XGPillerCenterRequest
    let len;
    let data = new XGPillerCenterRequest(null);
    // Deserialize message field [detect_dis]
    data.detect_dis = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/XGPillerCenterRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ea150c0acebf3bc8e38a3c829e37e505';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 detect_dis          # 距离motion_link的检测距离
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new XGPillerCenterRequest(null);
    if (msg.detect_dis !== undefined) {
      resolved.detect_dis = msg.detect_dis;
    }
    else {
      resolved.detect_dis = 0.0
    }

    return resolved;
    }
};

class XGPillerCenterResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.confidence = null;
      this.piller_stamped = null;
      this.state_info = null;
    }
    else {
      if (initObj.hasOwnProperty('confidence')) {
        this.confidence = initObj.confidence
      }
      else {
        this.confidence = 0.0;
      }
      if (initObj.hasOwnProperty('piller_stamped')) {
        this.piller_stamped = initObj.piller_stamped
      }
      else {
        this.piller_stamped = [];
      }
      if (initObj.hasOwnProperty('state_info')) {
        this.state_info = initObj.state_info
      }
      else {
        this.state_info = new UniversalStateInfo();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type XGPillerCenterResponse
    // Serialize message field [confidence]
    bufferOffset = _serializer.float32(obj.confidence, buffer, bufferOffset);
    // Serialize message field [piller_stamped]
    // Serialize the length for message field [piller_stamped]
    bufferOffset = _serializer.uint32(obj.piller_stamped.length, buffer, bufferOffset);
    obj.piller_stamped.forEach((val) => {
      bufferOffset = geometry_msgs.msg.TransformStamped.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [state_info]
    bufferOffset = UniversalStateInfo.serialize(obj.state_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type XGPillerCenterResponse
    let len;
    let data = new XGPillerCenterResponse(null);
    // Deserialize message field [confidence]
    data.confidence = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [piller_stamped]
    // Deserialize array length for message field [piller_stamped]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.piller_stamped = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.piller_stamped[i] = geometry_msgs.msg.TransformStamped.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [state_info]
    data.state_info = UniversalStateInfo.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.piller_stamped.forEach((val) => {
      length += geometry_msgs.msg.TransformStamped.getMessageSize(val);
    });
    length += UniversalStateInfo.getMessageSize(object.state_info);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/XGPillerCenterResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '72a889aab6fd6f93610efcc7fd67127b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 confidence          # 仙工底盘对当前位置的置信度
    geometry_msgs/TransformStamped[] piller_stamped
    UniversalStateInfo state_info
    
    ================================================================================
    MSG: geometry_msgs/TransformStamped
    # This expresses a transform from coordinate frame header.frame_id
    # to the coordinate frame child_frame_id
    #
    # This message is mostly used by the 
    # <a href="http://wiki.ros.org/tf">tf</a> package. 
    # See its documentation for more information.
    
    Header header
    string child_frame_id # the frame id of the child frame
    Transform transform
    
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
    MSG: geometry_msgs/Transform
    # This represents the transform between two coordinate frames in free space.
    
    Vector3 translation
    Quaternion rotation
    
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
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: dg_msgs/UniversalStateInfo
    int32 state_index   # 状态索引值：统一0是正常，其他数字自定义
    string node_name    # 当前节点名
    string state_msgs   # 附加信息，相当于additional_msgs
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new XGPillerCenterResponse(null);
    if (msg.confidence !== undefined) {
      resolved.confidence = msg.confidence;
    }
    else {
      resolved.confidence = 0.0
    }

    if (msg.piller_stamped !== undefined) {
      resolved.piller_stamped = new Array(msg.piller_stamped.length);
      for (let i = 0; i < resolved.piller_stamped.length; ++i) {
        resolved.piller_stamped[i] = geometry_msgs.msg.TransformStamped.Resolve(msg.piller_stamped[i]);
      }
    }
    else {
      resolved.piller_stamped = []
    }

    if (msg.state_info !== undefined) {
      resolved.state_info = UniversalStateInfo.Resolve(msg.state_info)
    }
    else {
      resolved.state_info = new UniversalStateInfo()
    }

    return resolved;
    }
};

module.exports = {
  Request: XGPillerCenterRequest,
  Response: XGPillerCenterResponse,
  md5sum() { return '44a8d4b0b3e7baca9bbc0e508470774d'; },
  datatype() { return 'dg_msgs/XGPillerCenter'; }
};

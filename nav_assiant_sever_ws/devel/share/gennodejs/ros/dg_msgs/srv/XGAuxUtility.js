// Auto-generated. Do not edit!

// (in-package dg_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

let UniversalStateInfo = require('../msg/UniversalStateInfo.js');

//-----------------------------------------------------------

class XGAuxUtilityRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.reg_pose = null;
      this.teach_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('reg_pose')) {
        this.reg_pose = initObj.reg_pose
      }
      else {
        this.reg_pose = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('teach_pose')) {
        this.teach_pose = initObj.teach_pose
      }
      else {
        this.teach_pose = new geometry_msgs.msg.PoseStamped();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type XGAuxUtilityRequest
    // Serialize message field [reg_pose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.reg_pose, buffer, bufferOffset);
    // Serialize message field [teach_pose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.teach_pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type XGAuxUtilityRequest
    let len;
    let data = new XGAuxUtilityRequest(null);
    // Deserialize message field [reg_pose]
    data.reg_pose = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [teach_pose]
    data.teach_pose = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.reg_pose);
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.teach_pose);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/XGAuxUtilityRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6fae053f29583b77e6a367184b6a915b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 仙工底盘的辅助服务，用于中心节点和底盘之间交互媒介
    
    # 内容一：用于转化的pose
    geometry_msgs/PoseStamped reg_pose          # 配准结果pose，从中心节点处传入
    geometry_msgs/PoseStamped teach_pose        # 当时示校时的pose，从中心节点传入 
    
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
    const resolved = new XGAuxUtilityRequest(null);
    if (msg.reg_pose !== undefined) {
      resolved.reg_pose = geometry_msgs.msg.PoseStamped.Resolve(msg.reg_pose)
    }
    else {
      resolved.reg_pose = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.teach_pose !== undefined) {
      resolved.teach_pose = geometry_msgs.msg.PoseStamped.Resolve(msg.teach_pose)
    }
    else {
      resolved.teach_pose = new geometry_msgs.msg.PoseStamped()
    }

    return resolved;
    }
};

class XGAuxUtilityResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state_info = null;
    }
    else {
      if (initObj.hasOwnProperty('state_info')) {
        this.state_info = initObj.state_info
      }
      else {
        this.state_info = new UniversalStateInfo();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type XGAuxUtilityResponse
    // Serialize message field [state_info]
    bufferOffset = UniversalStateInfo.serialize(obj.state_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type XGAuxUtilityResponse
    let len;
    let data = new XGAuxUtilityResponse(null);
    // Deserialize message field [state_info]
    data.state_info = UniversalStateInfo.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += UniversalStateInfo.getMessageSize(object.state_info);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/XGAuxUtilityResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8b810613bd7e6867ccbfac2fb14e2de4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    UniversalStateInfo  state_info
    
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
    const resolved = new XGAuxUtilityResponse(null);
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
  Request: XGAuxUtilityRequest,
  Response: XGAuxUtilityResponse,
  md5sum() { return '8f88c347ee9cc9a18c8541916b5018b2'; },
  datatype() { return 'dg_msgs/XGAuxUtility'; }
};

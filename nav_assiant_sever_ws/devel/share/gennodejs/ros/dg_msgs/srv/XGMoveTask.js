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

class XGMoveTaskRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.station_name = null;
      this.target_pose = null;
      this.max_deviation = null;
      this.method = null;
      this.backing_to_home = null;
    }
    else {
      if (initObj.hasOwnProperty('station_name')) {
        this.station_name = initObj.station_name
      }
      else {
        this.station_name = '';
      }
      if (initObj.hasOwnProperty('target_pose')) {
        this.target_pose = initObj.target_pose
      }
      else {
        this.target_pose = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('max_deviation')) {
        this.max_deviation = initObj.max_deviation
      }
      else {
        this.max_deviation = 0.0;
      }
      if (initObj.hasOwnProperty('method')) {
        this.method = initObj.method
      }
      else {
        this.method = '';
      }
      if (initObj.hasOwnProperty('backing_to_home')) {
        this.backing_to_home = initObj.backing_to_home
      }
      else {
        this.backing_to_home = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type XGMoveTaskRequest
    // Serialize message field [station_name]
    bufferOffset = _serializer.string(obj.station_name, buffer, bufferOffset);
    // Serialize message field [target_pose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.target_pose, buffer, bufferOffset);
    // Serialize message field [max_deviation]
    bufferOffset = _serializer.float32(obj.max_deviation, buffer, bufferOffset);
    // Serialize message field [method]
    bufferOffset = _serializer.string(obj.method, buffer, bufferOffset);
    // Serialize message field [backing_to_home]
    bufferOffset = _serializer.bool(obj.backing_to_home, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type XGMoveTaskRequest
    let len;
    let data = new XGMoveTaskRequest(null);
    // Deserialize message field [station_name]
    data.station_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [target_pose]
    data.target_pose = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [max_deviation]
    data.max_deviation = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [method]
    data.method = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [backing_to_home]
    data.backing_to_home = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.station_name.length;
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.target_pose);
    length += object.method.length;
    return length + 13;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/XGMoveTaskRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd964965b1269cdb0136414f2dbecfc3b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 为仙工底盘提供的专用move_task服务
    
    # string line_name                          # 任务线名，可缺省 -- 未来可能弃用
    string station_name                         # 站点名，可缺省
    geometry_msgs/PoseStamped target_pose       # 目标pose
    float32 max_deviation                       # 最大偏移误差
    string method                               # 运动方式，forward, backward
    bool backing_to_home                        # 返回到地图初始点
    
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
    const resolved = new XGMoveTaskRequest(null);
    if (msg.station_name !== undefined) {
      resolved.station_name = msg.station_name;
    }
    else {
      resolved.station_name = ''
    }

    if (msg.target_pose !== undefined) {
      resolved.target_pose = geometry_msgs.msg.PoseStamped.Resolve(msg.target_pose)
    }
    else {
      resolved.target_pose = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.max_deviation !== undefined) {
      resolved.max_deviation = msg.max_deviation;
    }
    else {
      resolved.max_deviation = 0.0
    }

    if (msg.method !== undefined) {
      resolved.method = msg.method;
    }
    else {
      resolved.method = ''
    }

    if (msg.backing_to_home !== undefined) {
      resolved.backing_to_home = msg.backing_to_home;
    }
    else {
      resolved.backing_to_home = false
    }

    return resolved;
    }
};

class XGMoveTaskResponse {
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
    // Serializes a message object of type XGMoveTaskResponse
    // Serialize message field [state_info]
    bufferOffset = UniversalStateInfo.serialize(obj.state_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type XGMoveTaskResponse
    let len;
    let data = new XGMoveTaskResponse(null);
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
    return 'dg_msgs/XGMoveTaskResponse';
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
    const resolved = new XGMoveTaskResponse(null);
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
  Request: XGMoveTaskRequest,
  Response: XGMoveTaskResponse,
  md5sum() { return '9663c9eb04f4ae4d5ab6a6596938f0d3'; },
  datatype() { return 'dg_msgs/XGMoveTask'; }
};

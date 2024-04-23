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

//-----------------------------------------------------------

class FastLioOdometryRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.use_odometry = null;
      this.topic_lidar = null;
    }
    else {
      if (initObj.hasOwnProperty('use_odometry')) {
        this.use_odometry = initObj.use_odometry
      }
      else {
        this.use_odometry = false;
      }
      if (initObj.hasOwnProperty('topic_lidar')) {
        this.topic_lidar = initObj.topic_lidar
      }
      else {
        this.topic_lidar = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FastLioOdometryRequest
    // Serialize message field [use_odometry]
    bufferOffset = _serializer.bool(obj.use_odometry, buffer, bufferOffset);
    // Serialize message field [topic_lidar]
    bufferOffset = _serializer.string(obj.topic_lidar, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FastLioOdometryRequest
    let len;
    let data = new FastLioOdometryRequest(null);
    // Deserialize message field [use_odometry]
    data.use_odometry = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [topic_lidar]
    data.topic_lidar = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.topic_lidar.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/FastLioOdometryRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '30fbc2f80ab1b64118ce3edf97e82bf6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool use_odometry
    string topic_lidar
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FastLioOdometryRequest(null);
    if (msg.use_odometry !== undefined) {
      resolved.use_odometry = msg.use_odometry;
    }
    else {
      resolved.use_odometry = false
    }

    if (msg.topic_lidar !== undefined) {
      resolved.topic_lidar = msg.topic_lidar;
    }
    else {
      resolved.topic_lidar = ''
    }

    return resolved;
    }
};

class FastLioOdometryResponse {
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
    // Serializes a message object of type FastLioOdometryResponse
    // Serialize message field [state_info]
    bufferOffset = UniversalStateInfo.serialize(obj.state_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FastLioOdometryResponse
    let len;
    let data = new FastLioOdometryResponse(null);
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
    return 'dg_msgs/FastLioOdometryResponse';
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
    const resolved = new FastLioOdometryResponse(null);
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
  Request: FastLioOdometryRequest,
  Response: FastLioOdometryResponse,
  md5sum() { return 'f2ec15a71932af1d5083f00b9a5a2788'; },
  datatype() { return 'dg_msgs/FastLioOdometry'; }
};

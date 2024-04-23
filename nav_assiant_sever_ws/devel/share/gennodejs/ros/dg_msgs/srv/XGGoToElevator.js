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

class XGGoToElevatorRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.enter_method = null;
    }
    else {
      if (initObj.hasOwnProperty('enter_method')) {
        this.enter_method = initObj.enter_method
      }
      else {
        this.enter_method = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type XGGoToElevatorRequest
    // Serialize message field [enter_method]
    bufferOffset = _serializer.string(obj.enter_method, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type XGGoToElevatorRequest
    let len;
    let data = new XGGoToElevatorRequest(null);
    // Deserialize message field [enter_method]
    data.enter_method = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.enter_method.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/XGGoToElevatorRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b5c26d5725409043fdefbebe77f6f933';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 变量说明
    # enter_method 进入电梯的方式，从左侧进入、从右侧进入
    string enter_method
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new XGGoToElevatorRequest(null);
    if (msg.enter_method !== undefined) {
      resolved.enter_method = msg.enter_method;
    }
    else {
      resolved.enter_method = ''
    }

    return resolved;
    }
};

class XGGoToElevatorResponse {
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
    // Serializes a message object of type XGGoToElevatorResponse
    // Serialize message field [state_info]
    bufferOffset = UniversalStateInfo.serialize(obj.state_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type XGGoToElevatorResponse
    let len;
    let data = new XGGoToElevatorResponse(null);
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
    return 'dg_msgs/XGGoToElevatorResponse';
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
    const resolved = new XGGoToElevatorResponse(null);
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
  Request: XGGoToElevatorRequest,
  Response: XGGoToElevatorResponse,
  md5sum() { return '965d0474a6d7d045c4a405625226a152'; },
  datatype() { return 'dg_msgs/XGGoToElevator'; }
};

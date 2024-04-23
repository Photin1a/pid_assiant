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

class RobotArmAcqPauseRecoveryRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.number = null;
      this.state_index = null;
    }
    else {
      if (initObj.hasOwnProperty('number')) {
        this.number = initObj.number
      }
      else {
        this.number = '';
      }
      if (initObj.hasOwnProperty('state_index')) {
        this.state_index = initObj.state_index
      }
      else {
        this.state_index = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotArmAcqPauseRecoveryRequest
    // Serialize message field [number]
    bufferOffset = _serializer.string(obj.number, buffer, bufferOffset);
    // Serialize message field [state_index]
    bufferOffset = _serializer.int32(obj.state_index, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotArmAcqPauseRecoveryRequest
    let len;
    let data = new RobotArmAcqPauseRecoveryRequest(null);
    // Deserialize message field [number]
    data.number = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [state_index]
    data.state_index = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.number.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/RobotArmAcqPauseRecoveryRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a16ec2e10be40e1fed7532494c087807';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string number        # 设备编码
    int32 state_index    # pause(1), recovery(2), terminate(-1)
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotArmAcqPauseRecoveryRequest(null);
    if (msg.number !== undefined) {
      resolved.number = msg.number;
    }
    else {
      resolved.number = ''
    }

    if (msg.state_index !== undefined) {
      resolved.state_index = msg.state_index;
    }
    else {
      resolved.state_index = 0
    }

    return resolved;
    }
};

class RobotArmAcqPauseRecoveryResponse {
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
    // Serializes a message object of type RobotArmAcqPauseRecoveryResponse
    // Serialize message field [state_info]
    bufferOffset = UniversalStateInfo.serialize(obj.state_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotArmAcqPauseRecoveryResponse
    let len;
    let data = new RobotArmAcqPauseRecoveryResponse(null);
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
    return 'dg_msgs/RobotArmAcqPauseRecoveryResponse';
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
    const resolved = new RobotArmAcqPauseRecoveryResponse(null);
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
  Request: RobotArmAcqPauseRecoveryRequest,
  Response: RobotArmAcqPauseRecoveryResponse,
  md5sum() { return 'fa4fc94033ee71ead6be9ed12f3a7bc1'; },
  datatype() { return 'dg_msgs/RobotArmAcqPauseRecovery'; }
};

// Auto-generated. Do not edit!

// (in-package dg_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let UniversalStateInfo = require('./UniversalStateInfo.js');

//-----------------------------------------------------------

class CarBaseMoveTaskResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.time_cost = null;
      this.state_info = null;
    }
    else {
      if (initObj.hasOwnProperty('time_cost')) {
        this.time_cost = initObj.time_cost
      }
      else {
        this.time_cost = 0.0;
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
    // Serializes a message object of type CarBaseMoveTaskResult
    // Serialize message field [time_cost]
    bufferOffset = _serializer.float32(obj.time_cost, buffer, bufferOffset);
    // Serialize message field [state_info]
    bufferOffset = UniversalStateInfo.serialize(obj.state_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CarBaseMoveTaskResult
    let len;
    let data = new CarBaseMoveTaskResult(null);
    // Deserialize message field [time_cost]
    data.time_cost = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [state_info]
    data.state_info = UniversalStateInfo.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += UniversalStateInfo.getMessageSize(object.state_info);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dg_msgs/CarBaseMoveTaskResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fb056551c70c0a36ef2b4a2179be1f62';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    float32 time_cost                           # 到达耗时  result
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
    const resolved = new CarBaseMoveTaskResult(null);
    if (msg.time_cost !== undefined) {
      resolved.time_cost = msg.time_cost;
    }
    else {
      resolved.time_cost = 0.0
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

module.exports = CarBaseMoveTaskResult;

// Auto-generated. Do not edit!

// (in-package dg_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MonitorState = require('./MonitorState.js');

//-----------------------------------------------------------

class GeneralHardwareAndNodeState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.state_info = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('state_info')) {
        this.state_info = initObj.state_info
      }
      else {
        this.state_info = new MonitorState();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GeneralHardwareAndNodeState
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [state_info]
    bufferOffset = MonitorState.serialize(obj.state_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GeneralHardwareAndNodeState
    let len;
    let data = new GeneralHardwareAndNodeState(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [state_info]
    data.state_info = MonitorState.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    length += MonitorState.getMessageSize(object.state_info);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dg_msgs/GeneralHardwareAndNodeState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8286b537435a2ee37a9de658f76fd67d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 通用的状态信息
    string name                 # 对象名
    
    dg_msgs/MonitorState state_info         # 状态信息
    ================================================================================
    MSG: dg_msgs/MonitorState
    # 监控状态 - 当状态正常时错误码为0
    int32 error_code            # 错误码
    string additional_msgs       # 附加信息
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GeneralHardwareAndNodeState(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.state_info !== undefined) {
      resolved.state_info = MonitorState.Resolve(msg.state_info)
    }
    else {
      resolved.state_info = new MonitorState()
    }

    return resolved;
    }
};

module.exports = GeneralHardwareAndNodeState;

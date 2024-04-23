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

class NetworkedDevicesState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.device_name = null;
      this.ip_address = null;
      this.state_info = null;
    }
    else {
      if (initObj.hasOwnProperty('device_name')) {
        this.device_name = initObj.device_name
      }
      else {
        this.device_name = '';
      }
      if (initObj.hasOwnProperty('ip_address')) {
        this.ip_address = initObj.ip_address
      }
      else {
        this.ip_address = '';
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
    // Serializes a message object of type NetworkedDevicesState
    // Serialize message field [device_name]
    bufferOffset = _serializer.string(obj.device_name, buffer, bufferOffset);
    // Serialize message field [ip_address]
    bufferOffset = _serializer.string(obj.ip_address, buffer, bufferOffset);
    // Serialize message field [state_info]
    bufferOffset = MonitorState.serialize(obj.state_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NetworkedDevicesState
    let len;
    let data = new NetworkedDevicesState(null);
    // Deserialize message field [device_name]
    data.device_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [ip_address]
    data.ip_address = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [state_info]
    data.state_info = MonitorState.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.device_name.length;
    length += object.ip_address.length;
    length += MonitorState.getMessageSize(object.state_info);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dg_msgs/NetworkedDevicesState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9aa0832958f0e07c49da88632d6eef9a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 联网设备状态
    string device_name          # 设备名
    string ip_address           # 设备地址IPv4
    
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
    const resolved = new NetworkedDevicesState(null);
    if (msg.device_name !== undefined) {
      resolved.device_name = msg.device_name;
    }
    else {
      resolved.device_name = ''
    }

    if (msg.ip_address !== undefined) {
      resolved.ip_address = msg.ip_address;
    }
    else {
      resolved.ip_address = ''
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

module.exports = NetworkedDevicesState;

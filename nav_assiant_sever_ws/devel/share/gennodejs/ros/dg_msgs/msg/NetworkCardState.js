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

class NetworkCardState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.network_card_name = null;
      this.ip_address = null;
      this.net_upload = null;
      this.net_download = null;
      this.state_info = null;
    }
    else {
      if (initObj.hasOwnProperty('network_card_name')) {
        this.network_card_name = initObj.network_card_name
      }
      else {
        this.network_card_name = '';
      }
      if (initObj.hasOwnProperty('ip_address')) {
        this.ip_address = initObj.ip_address
      }
      else {
        this.ip_address = '';
      }
      if (initObj.hasOwnProperty('net_upload')) {
        this.net_upload = initObj.net_upload
      }
      else {
        this.net_upload = 0.0;
      }
      if (initObj.hasOwnProperty('net_download')) {
        this.net_download = initObj.net_download
      }
      else {
        this.net_download = 0.0;
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
    // Serializes a message object of type NetworkCardState
    // Serialize message field [network_card_name]
    bufferOffset = _serializer.string(obj.network_card_name, buffer, bufferOffset);
    // Serialize message field [ip_address]
    bufferOffset = _serializer.string(obj.ip_address, buffer, bufferOffset);
    // Serialize message field [net_upload]
    bufferOffset = _serializer.float32(obj.net_upload, buffer, bufferOffset);
    // Serialize message field [net_download]
    bufferOffset = _serializer.float32(obj.net_download, buffer, bufferOffset);
    // Serialize message field [state_info]
    bufferOffset = MonitorState.serialize(obj.state_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NetworkCardState
    let len;
    let data = new NetworkCardState(null);
    // Deserialize message field [network_card_name]
    data.network_card_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [ip_address]
    data.ip_address = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [net_upload]
    data.net_upload = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [net_download]
    data.net_download = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [state_info]
    data.state_info = MonitorState.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.network_card_name.length;
    length += object.ip_address.length;
    length += MonitorState.getMessageSize(object.state_info);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dg_msgs/NetworkCardState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '52de5677eb4029ed135c560d8dca6c4f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 网卡状态
    string network_card_name        # 网卡名
    string ip_address               # IP地址IPv4
    float32 net_upload              # 网卡上传速度 KB/s
    float32 net_download            # 网卡下载速度 KB/s
    
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
    const resolved = new NetworkCardState(null);
    if (msg.network_card_name !== undefined) {
      resolved.network_card_name = msg.network_card_name;
    }
    else {
      resolved.network_card_name = ''
    }

    if (msg.ip_address !== undefined) {
      resolved.ip_address = msg.ip_address;
    }
    else {
      resolved.ip_address = ''
    }

    if (msg.net_upload !== undefined) {
      resolved.net_upload = msg.net_upload;
    }
    else {
      resolved.net_upload = 0.0
    }

    if (msg.net_download !== undefined) {
      resolved.net_download = msg.net_download;
    }
    else {
      resolved.net_download = 0.0
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

module.exports = NetworkCardState;

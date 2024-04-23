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

class DiskState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.disk_name = null;
      this.disk_total = null;
      this.disk_used = null;
      this.disk_avail = null;
      this.disk_used_percent = null;
      this.state_info = null;
    }
    else {
      if (initObj.hasOwnProperty('disk_name')) {
        this.disk_name = initObj.disk_name
      }
      else {
        this.disk_name = '';
      }
      if (initObj.hasOwnProperty('disk_total')) {
        this.disk_total = initObj.disk_total
      }
      else {
        this.disk_total = 0.0;
      }
      if (initObj.hasOwnProperty('disk_used')) {
        this.disk_used = initObj.disk_used
      }
      else {
        this.disk_used = 0.0;
      }
      if (initObj.hasOwnProperty('disk_avail')) {
        this.disk_avail = initObj.disk_avail
      }
      else {
        this.disk_avail = 0.0;
      }
      if (initObj.hasOwnProperty('disk_used_percent')) {
        this.disk_used_percent = initObj.disk_used_percent
      }
      else {
        this.disk_used_percent = 0.0;
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
    // Serializes a message object of type DiskState
    // Serialize message field [disk_name]
    bufferOffset = _serializer.string(obj.disk_name, buffer, bufferOffset);
    // Serialize message field [disk_total]
    bufferOffset = _serializer.float32(obj.disk_total, buffer, bufferOffset);
    // Serialize message field [disk_used]
    bufferOffset = _serializer.float32(obj.disk_used, buffer, bufferOffset);
    // Serialize message field [disk_avail]
    bufferOffset = _serializer.float32(obj.disk_avail, buffer, bufferOffset);
    // Serialize message field [disk_used_percent]
    bufferOffset = _serializer.float32(obj.disk_used_percent, buffer, bufferOffset);
    // Serialize message field [state_info]
    bufferOffset = MonitorState.serialize(obj.state_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DiskState
    let len;
    let data = new DiskState(null);
    // Deserialize message field [disk_name]
    data.disk_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [disk_total]
    data.disk_total = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [disk_used]
    data.disk_used = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [disk_avail]
    data.disk_avail = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [disk_used_percent]
    data.disk_used_percent = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [state_info]
    data.state_info = MonitorState.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.disk_name.length;
    length += MonitorState.getMessageSize(object.state_info);
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dg_msgs/DiskState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0ae89d9226df323af7a5a7808953730a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 硬盘状态
    string disk_name            # 硬盘盘符
    float32 disk_total          # 硬盘总空间 GB
    float32 disk_used           # 已经使用的空间 GB
    float32 disk_avail          # 剩余可用空间
    float32 disk_used_percent   # 硬盘使用率
    
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
    const resolved = new DiskState(null);
    if (msg.disk_name !== undefined) {
      resolved.disk_name = msg.disk_name;
    }
    else {
      resolved.disk_name = ''
    }

    if (msg.disk_total !== undefined) {
      resolved.disk_total = msg.disk_total;
    }
    else {
      resolved.disk_total = 0.0
    }

    if (msg.disk_used !== undefined) {
      resolved.disk_used = msg.disk_used;
    }
    else {
      resolved.disk_used = 0.0
    }

    if (msg.disk_avail !== undefined) {
      resolved.disk_avail = msg.disk_avail;
    }
    else {
      resolved.disk_avail = 0.0
    }

    if (msg.disk_used_percent !== undefined) {
      resolved.disk_used_percent = msg.disk_used_percent;
    }
    else {
      resolved.disk_used_percent = 0.0
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

module.exports = DiskState;

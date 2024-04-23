// Auto-generated. Do not edit!

// (in-package dg_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class MonitorState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.error_code = null;
      this.additional_msgs = null;
    }
    else {
      if (initObj.hasOwnProperty('error_code')) {
        this.error_code = initObj.error_code
      }
      else {
        this.error_code = 0;
      }
      if (initObj.hasOwnProperty('additional_msgs')) {
        this.additional_msgs = initObj.additional_msgs
      }
      else {
        this.additional_msgs = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MonitorState
    // Serialize message field [error_code]
    bufferOffset = _serializer.int32(obj.error_code, buffer, bufferOffset);
    // Serialize message field [additional_msgs]
    bufferOffset = _serializer.string(obj.additional_msgs, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MonitorState
    let len;
    let data = new MonitorState(null);
    // Deserialize message field [error_code]
    data.error_code = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [additional_msgs]
    data.additional_msgs = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.additional_msgs.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dg_msgs/MonitorState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bda9bd9fb908de41898b36bdcadd650f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new MonitorState(null);
    if (msg.error_code !== undefined) {
      resolved.error_code = msg.error_code;
    }
    else {
      resolved.error_code = 0
    }

    if (msg.additional_msgs !== undefined) {
      resolved.additional_msgs = msg.additional_msgs;
    }
    else {
      resolved.additional_msgs = ''
    }

    return resolved;
    }
};

module.exports = MonitorState;

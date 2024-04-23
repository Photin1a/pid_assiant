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

class UniversalStateInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state_index = null;
      this.node_name = null;
      this.state_msgs = null;
    }
    else {
      if (initObj.hasOwnProperty('state_index')) {
        this.state_index = initObj.state_index
      }
      else {
        this.state_index = 0;
      }
      if (initObj.hasOwnProperty('node_name')) {
        this.node_name = initObj.node_name
      }
      else {
        this.node_name = '';
      }
      if (initObj.hasOwnProperty('state_msgs')) {
        this.state_msgs = initObj.state_msgs
      }
      else {
        this.state_msgs = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UniversalStateInfo
    // Serialize message field [state_index]
    bufferOffset = _serializer.int32(obj.state_index, buffer, bufferOffset);
    // Serialize message field [node_name]
    bufferOffset = _serializer.string(obj.node_name, buffer, bufferOffset);
    // Serialize message field [state_msgs]
    bufferOffset = _serializer.string(obj.state_msgs, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UniversalStateInfo
    let len;
    let data = new UniversalStateInfo(null);
    // Deserialize message field [state_index]
    data.state_index = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [node_name]
    data.node_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [state_msgs]
    data.state_msgs = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.node_name.length;
    length += object.state_msgs.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dg_msgs/UniversalStateInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '77e9811d2f2bef9dda3fcadf75d60619';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new UniversalStateInfo(null);
    if (msg.state_index !== undefined) {
      resolved.state_index = msg.state_index;
    }
    else {
      resolved.state_index = 0
    }

    if (msg.node_name !== undefined) {
      resolved.node_name = msg.node_name;
    }
    else {
      resolved.node_name = ''
    }

    if (msg.state_msgs !== undefined) {
      resolved.state_msgs = msg.state_msgs;
    }
    else {
      resolved.state_msgs = ''
    }

    return resolved;
    }
};

module.exports = UniversalStateInfo;

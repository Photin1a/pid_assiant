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

let AssembleState = require('../msg/AssembleState.js');

//-----------------------------------------------------------

class GetAssembleStateRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.assemble_index = null;
    }
    else {
      if (initObj.hasOwnProperty('assemble_index')) {
        this.assemble_index = initObj.assemble_index
      }
      else {
        this.assemble_index = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetAssembleStateRequest
    // Serialize message field [assemble_index]
    bufferOffset = _serializer.string(obj.assemble_index, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetAssembleStateRequest
    let len;
    let data = new GetAssembleStateRequest(null);
    // Deserialize message field [assemble_index]
    data.assemble_index = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.assemble_index.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/GetAssembleStateRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8c01392cb66a9eb73f995bc04929e206';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 获取上装体状态请求
    string assemble_index
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetAssembleStateRequest(null);
    if (msg.assemble_index !== undefined) {
      resolved.assemble_index = msg.assemble_index;
    }
    else {
      resolved.assemble_index = ''
    }

    return resolved;
    }
};

class GetAssembleStateResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state_ = null;
    }
    else {
      if (initObj.hasOwnProperty('state_')) {
        this.state_ = initObj.state_
      }
      else {
        this.state_ = new AssembleState();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetAssembleStateResponse
    // Serialize message field [state_]
    bufferOffset = AssembleState.serialize(obj.state_, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetAssembleStateResponse
    let len;
    let data = new GetAssembleStateResponse(null);
    // Deserialize message field [state_]
    data.state_ = AssembleState.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/GetAssembleStateResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '108a9200f03144761e3482fd81be1087';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    AssembleState state_
    
    ================================================================================
    MSG: dg_msgs/AssembleState
    # 上装箱体状态信息
    bool is_emergency           # 是否是急停
    bool is_auto                # 是否是自动档
    bool is_rescue              # 是否是救援模式
    bool is_reset               # 是否是复位
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetAssembleStateResponse(null);
    if (msg.state_ !== undefined) {
      resolved.state_ = AssembleState.Resolve(msg.state_)
    }
    else {
      resolved.state_ = new AssembleState()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetAssembleStateRequest,
  Response: GetAssembleStateResponse,
  md5sum() { return 'f047080dfaa590aae4f29539db7e0f2b'; },
  datatype() { return 'dg_msgs/GetAssembleState'; }
};

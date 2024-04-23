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


//-----------------------------------------------------------

class LiftkitUpDownRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.number = null;
      this.operation = null;
    }
    else {
      if (initObj.hasOwnProperty('number')) {
        this.number = initObj.number
      }
      else {
        this.number = '';
      }
      if (initObj.hasOwnProperty('operation')) {
        this.operation = initObj.operation
      }
      else {
        this.operation = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LiftkitUpDownRequest
    // Serialize message field [number]
    bufferOffset = _serializer.string(obj.number, buffer, bufferOffset);
    // Serialize message field [operation]
    bufferOffset = _serializer.int32(obj.operation, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LiftkitUpDownRequest
    let len;
    let data = new LiftkitUpDownRequest(null);
    // Deserialize message field [number]
    data.number = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [operation]
    data.operation = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.number.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/LiftkitUpDownRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3b007819b02bbb1523509a91db0b1b6d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string number       # 设备编码
    int32 operation     # 1：上升； 2：下降； 3：停止
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LiftkitUpDownRequest(null);
    if (msg.number !== undefined) {
      resolved.number = msg.number;
    }
    else {
      resolved.number = ''
    }

    if (msg.operation !== undefined) {
      resolved.operation = msg.operation;
    }
    else {
      resolved.operation = 0
    }

    return resolved;
    }
};

class LiftkitUpDownResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.height = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
      }
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LiftkitUpDownResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.float32(obj.height, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LiftkitUpDownResponse
    let len;
    let data = new LiftkitUpDownResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/LiftkitUpDownResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4bee10a76df103ce680ba5e319093346';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 result
    float32 height          # 升降柱当前的高度
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LiftkitUpDownResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
    }

    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: LiftkitUpDownRequest,
  Response: LiftkitUpDownResponse,
  md5sum() { return 'b6726b2e06edf8d1dc8c1c47a838612e'; },
  datatype() { return 'dg_msgs/LiftkitUpDown'; }
};

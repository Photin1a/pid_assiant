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

class BollardPauseRecvTermRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.operation_ = null;
    }
    else {
      if (initObj.hasOwnProperty('operation_')) {
        this.operation_ = initObj.operation_
      }
      else {
        this.operation_ = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BollardPauseRecvTermRequest
    // Serialize message field [operation_]
    bufferOffset = _serializer.string(obj.operation_, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BollardPauseRecvTermRequest
    let len;
    let data = new BollardPauseRecvTermRequest(null);
    // Deserialize message field [operation_]
    data.operation_ = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.operation_.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/BollardPauseRecvTermRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '398e2ac342a0c2237a00de64b5e4e124';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 升降柱暂停/恢复/终止服务
    # 一旦调用了这个服务中的暂停，必须给一个对应的恢复才能将控制权给自动模式下
    # 但调用了暂停后仍然可以使用手动控制，因为人工权限大于自动权限
    string operation_           # pause暂停，recovery恢复，terminate终止，必须是三选一，否则直接拒绝
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BollardPauseRecvTermRequest(null);
    if (msg.operation_ !== undefined) {
      resolved.operation_ = msg.operation_;
    }
    else {
      resolved.operation_ = ''
    }

    return resolved;
    }
};

class BollardPauseRecvTermResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.current_height = null;
    }
    else {
      if (initObj.hasOwnProperty('current_height')) {
        this.current_height = initObj.current_height
      }
      else {
        this.current_height = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BollardPauseRecvTermResponse
    // Serialize message field [current_height]
    bufferOffset = _serializer.float32(obj.current_height, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BollardPauseRecvTermResponse
    let len;
    let data = new BollardPauseRecvTermResponse(null);
    // Deserialize message field [current_height]
    data.current_height = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/BollardPauseRecvTermResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9316e2f24599ef5a0ba747910cce59b6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 current_height      # 当前高度
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BollardPauseRecvTermResponse(null);
    if (msg.current_height !== undefined) {
      resolved.current_height = msg.current_height;
    }
    else {
      resolved.current_height = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: BollardPauseRecvTermRequest,
  Response: BollardPauseRecvTermResponse,
  md5sum() { return '79a8946e4b3e453cc2c4ad94be08ff4e'; },
  datatype() { return 'dg_msgs/BollardPauseRecvTerm'; }
};

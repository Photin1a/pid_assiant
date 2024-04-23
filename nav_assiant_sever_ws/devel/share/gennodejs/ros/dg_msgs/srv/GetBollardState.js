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

let BollardState = require('../msg/BollardState.js');

//-----------------------------------------------------------

class GetBollardStateRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.bollard_index = null;
    }
    else {
      if (initObj.hasOwnProperty('bollard_index')) {
        this.bollard_index = initObj.bollard_index
      }
      else {
        this.bollard_index = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetBollardStateRequest
    // Serialize message field [bollard_index]
    bufferOffset = _serializer.int32(obj.bollard_index, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetBollardStateRequest
    let len;
    let data = new GetBollardStateRequest(null);
    // Deserialize message field [bollard_index]
    data.bollard_index = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/GetBollardStateRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a4e4c048ccf1d3acdeec8c85b63f11ee';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 获得升降柱状态
    int32 bollard_index         # 升降柱编号
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetBollardStateRequest(null);
    if (msg.bollard_index !== undefined) {
      resolved.bollard_index = msg.bollard_index;
    }
    else {
      resolved.bollard_index = 0
    }

    return resolved;
    }
};

class GetBollardStateResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.bollard_state = null;
    }
    else {
      if (initObj.hasOwnProperty('bollard_state')) {
        this.bollard_state = initObj.bollard_state
      }
      else {
        this.bollard_state = new BollardState();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetBollardStateResponse
    // Serialize message field [bollard_state]
    bufferOffset = BollardState.serialize(obj.bollard_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetBollardStateResponse
    let len;
    let data = new GetBollardStateResponse(null);
    // Deserialize message field [bollard_state]
    data.bollard_state = BollardState.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += BollardState.getMessageSize(object.bollard_state);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/GetBollardStateResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '46329bf08315b68e8287f20b995b0a8b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    BollardState bollard_state  # 升降柱状态
    
    ================================================================================
    MSG: dg_msgs/BollardState
    # 升降柱状态信息
    string number               # 设备组编号
    string bollard_name         # 升降柱名
    float32 absolute_height     # 升降柱绝对高度
    float32 speed               # 升降柱速度
    bool is_aviable             # 当前是否可用；急停被按下、当前处于自动、modbus指针没有成功建立
    bool is_moving              # 当前是否正在运动
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetBollardStateResponse(null);
    if (msg.bollard_state !== undefined) {
      resolved.bollard_state = BollardState.Resolve(msg.bollard_state)
    }
    else {
      resolved.bollard_state = new BollardState()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetBollardStateRequest,
  Response: GetBollardStateResponse,
  md5sum() { return 'b8d36c8ac70f1a2e4bd8359afad61cf1'; },
  datatype() { return 'dg_msgs/GetBollardState'; }
};

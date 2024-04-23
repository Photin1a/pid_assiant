// Auto-generated. Do not edit!

// (in-package dg_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let AntiCollisionWheelState = require('../msg/AntiCollisionWheelState.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class GetSetAntiCollisionWheelRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.target_state = null;
    }
    else {
      if (initObj.hasOwnProperty('target_state')) {
        this.target_state = initObj.target_state
      }
      else {
        this.target_state = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetSetAntiCollisionWheelRequest
    // Serialize message field [target_state]
    // Serialize the length for message field [target_state]
    bufferOffset = _serializer.uint32(obj.target_state.length, buffer, bufferOffset);
    obj.target_state.forEach((val) => {
      bufferOffset = AntiCollisionWheelState.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetSetAntiCollisionWheelRequest
    let len;
    let data = new GetSetAntiCollisionWheelRequest(null);
    // Deserialize message field [target_state]
    // Deserialize array length for message field [target_state]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.target_state = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.target_state[i] = AntiCollisionWheelState.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.target_state.forEach((val) => {
      length += AntiCollisionWheelState.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/GetSetAntiCollisionWheelRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '52179119cac1f3fc553cd5881acb98e5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 获取/设置防撞轮状态 - 允许同时设置/获取多个防撞轮状态
    AntiCollisionWheelState[] target_state
    
    ================================================================================
    MSG: dg_msgs/AntiCollisionWheelState
    # 防撞轮状态 - 设置和获取通用
    string wheel_name           # 防撞轮名
    bool is_get_state           # 当前请求是否是获得状态，如果为true为请求状态，false则为设置状态
    float32 position            # 位置
    float32 speed               # 速度
    int32 state_word            # 状态字
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetSetAntiCollisionWheelRequest(null);
    if (msg.target_state !== undefined) {
      resolved.target_state = new Array(msg.target_state.length);
      for (let i = 0; i < resolved.target_state.length; ++i) {
        resolved.target_state[i] = AntiCollisionWheelState.Resolve(msg.target_state[i]);
      }
    }
    else {
      resolved.target_state = []
    }

    return resolved;
    }
};

class GetSetAntiCollisionWheelResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.current_state = null;
    }
    else {
      if (initObj.hasOwnProperty('current_state')) {
        this.current_state = initObj.current_state
      }
      else {
        this.current_state = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetSetAntiCollisionWheelResponse
    // Serialize message field [current_state]
    // Serialize the length for message field [current_state]
    bufferOffset = _serializer.uint32(obj.current_state.length, buffer, bufferOffset);
    obj.current_state.forEach((val) => {
      bufferOffset = AntiCollisionWheelState.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetSetAntiCollisionWheelResponse
    let len;
    let data = new GetSetAntiCollisionWheelResponse(null);
    // Deserialize message field [current_state]
    // Deserialize array length for message field [current_state]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.current_state = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.current_state[i] = AntiCollisionWheelState.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.current_state.forEach((val) => {
      length += AntiCollisionWheelState.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/GetSetAntiCollisionWheelResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '77134c7c59fe3250d354786c4e515985';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    AntiCollisionWheelState[] current_state
    
    ================================================================================
    MSG: dg_msgs/AntiCollisionWheelState
    # 防撞轮状态 - 设置和获取通用
    string wheel_name           # 防撞轮名
    bool is_get_state           # 当前请求是否是获得状态，如果为true为请求状态，false则为设置状态
    float32 position            # 位置
    float32 speed               # 速度
    int32 state_word            # 状态字
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetSetAntiCollisionWheelResponse(null);
    if (msg.current_state !== undefined) {
      resolved.current_state = new Array(msg.current_state.length);
      for (let i = 0; i < resolved.current_state.length; ++i) {
        resolved.current_state[i] = AntiCollisionWheelState.Resolve(msg.current_state[i]);
      }
    }
    else {
      resolved.current_state = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetSetAntiCollisionWheelRequest,
  Response: GetSetAntiCollisionWheelResponse,
  md5sum() { return 'e205aef48784b5a49ae3295ca6ee4c49'; },
  datatype() { return 'dg_msgs/GetSetAntiCollisionWheel'; }
};

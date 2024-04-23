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

class AntiCollisionWheelState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.wheel_name = null;
      this.is_get_state = null;
      this.position = null;
      this.speed = null;
      this.state_word = null;
    }
    else {
      if (initObj.hasOwnProperty('wheel_name')) {
        this.wheel_name = initObj.wheel_name
      }
      else {
        this.wheel_name = '';
      }
      if (initObj.hasOwnProperty('is_get_state')) {
        this.is_get_state = initObj.is_get_state
      }
      else {
        this.is_get_state = false;
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = 0.0;
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0.0;
      }
      if (initObj.hasOwnProperty('state_word')) {
        this.state_word = initObj.state_word
      }
      else {
        this.state_word = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AntiCollisionWheelState
    // Serialize message field [wheel_name]
    bufferOffset = _serializer.string(obj.wheel_name, buffer, bufferOffset);
    // Serialize message field [is_get_state]
    bufferOffset = _serializer.bool(obj.is_get_state, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = _serializer.float32(obj.position, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.float32(obj.speed, buffer, bufferOffset);
    // Serialize message field [state_word]
    bufferOffset = _serializer.int32(obj.state_word, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AntiCollisionWheelState
    let len;
    let data = new AntiCollisionWheelState(null);
    // Deserialize message field [wheel_name]
    data.wheel_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [is_get_state]
    data.is_get_state = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [state_word]
    data.state_word = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.wheel_name.length;
    return length + 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dg_msgs/AntiCollisionWheelState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a269fe39cc5307abc0b5ce3d3619c54a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new AntiCollisionWheelState(null);
    if (msg.wheel_name !== undefined) {
      resolved.wheel_name = msg.wheel_name;
    }
    else {
      resolved.wheel_name = ''
    }

    if (msg.is_get_state !== undefined) {
      resolved.is_get_state = msg.is_get_state;
    }
    else {
      resolved.is_get_state = false
    }

    if (msg.position !== undefined) {
      resolved.position = msg.position;
    }
    else {
      resolved.position = 0.0
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0.0
    }

    if (msg.state_word !== undefined) {
      resolved.state_word = msg.state_word;
    }
    else {
      resolved.state_word = 0
    }

    return resolved;
    }
};

module.exports = AntiCollisionWheelState;

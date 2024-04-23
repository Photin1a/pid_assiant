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

class BollardState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.number = null;
      this.bollard_name = null;
      this.absolute_height = null;
      this.speed = null;
      this.is_aviable = null;
      this.is_moving = null;
    }
    else {
      if (initObj.hasOwnProperty('number')) {
        this.number = initObj.number
      }
      else {
        this.number = '';
      }
      if (initObj.hasOwnProperty('bollard_name')) {
        this.bollard_name = initObj.bollard_name
      }
      else {
        this.bollard_name = '';
      }
      if (initObj.hasOwnProperty('absolute_height')) {
        this.absolute_height = initObj.absolute_height
      }
      else {
        this.absolute_height = 0.0;
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0.0;
      }
      if (initObj.hasOwnProperty('is_aviable')) {
        this.is_aviable = initObj.is_aviable
      }
      else {
        this.is_aviable = false;
      }
      if (initObj.hasOwnProperty('is_moving')) {
        this.is_moving = initObj.is_moving
      }
      else {
        this.is_moving = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BollardState
    // Serialize message field [number]
    bufferOffset = _serializer.string(obj.number, buffer, bufferOffset);
    // Serialize message field [bollard_name]
    bufferOffset = _serializer.string(obj.bollard_name, buffer, bufferOffset);
    // Serialize message field [absolute_height]
    bufferOffset = _serializer.float32(obj.absolute_height, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.float32(obj.speed, buffer, bufferOffset);
    // Serialize message field [is_aviable]
    bufferOffset = _serializer.bool(obj.is_aviable, buffer, bufferOffset);
    // Serialize message field [is_moving]
    bufferOffset = _serializer.bool(obj.is_moving, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BollardState
    let len;
    let data = new BollardState(null);
    // Deserialize message field [number]
    data.number = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [bollard_name]
    data.bollard_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [absolute_height]
    data.absolute_height = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [is_aviable]
    data.is_aviable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_moving]
    data.is_moving = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.number.length;
    length += object.bollard_name.length;
    return length + 18;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dg_msgs/BollardState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '97182af4acca076bb0c4ed889ad3c8a0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new BollardState(null);
    if (msg.number !== undefined) {
      resolved.number = msg.number;
    }
    else {
      resolved.number = ''
    }

    if (msg.bollard_name !== undefined) {
      resolved.bollard_name = msg.bollard_name;
    }
    else {
      resolved.bollard_name = ''
    }

    if (msg.absolute_height !== undefined) {
      resolved.absolute_height = msg.absolute_height;
    }
    else {
      resolved.absolute_height = 0.0
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0.0
    }

    if (msg.is_aviable !== undefined) {
      resolved.is_aviable = msg.is_aviable;
    }
    else {
      resolved.is_aviable = false
    }

    if (msg.is_moving !== undefined) {
      resolved.is_moving = msg.is_moving;
    }
    else {
      resolved.is_moving = false
    }

    return resolved;
    }
};

module.exports = BollardState;

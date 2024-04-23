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

class BollardManualControl {
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
        this.operation = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BollardManualControl
    // Serialize message field [number]
    bufferOffset = _serializer.string(obj.number, buffer, bufferOffset);
    // Serialize message field [operation]
    bufferOffset = _serializer.string(obj.operation, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BollardManualControl
    let len;
    let data = new BollardManualControl(null);
    // Deserialize message field [number]
    data.number = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [operation]
    data.operation = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.number.length;
    length += object.operation.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dg_msgs/BollardManualControl';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ebc26c1ef4bd71b1e5ffe698e4b6a4f9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 手动控制升降柱的消息
    string number           # 设备组编号
    string operation        # 停止stop, 上升rise, 下降desc, 如果不填写就是停止
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BollardManualControl(null);
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
      resolved.operation = ''
    }

    return resolved;
    }
};

module.exports = BollardManualControl;

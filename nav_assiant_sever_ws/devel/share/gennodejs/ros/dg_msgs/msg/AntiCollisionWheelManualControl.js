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

class AntiCollisionWheelManualControl {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.wheel_name = null;
      this.operation = null;
    }
    else {
      if (initObj.hasOwnProperty('wheel_name')) {
        this.wheel_name = initObj.wheel_name
      }
      else {
        this.wheel_name = '';
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
    // Serializes a message object of type AntiCollisionWheelManualControl
    // Serialize message field [wheel_name]
    bufferOffset = _serializer.string(obj.wheel_name, buffer, bufferOffset);
    // Serialize message field [operation]
    bufferOffset = _serializer.string(obj.operation, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AntiCollisionWheelManualControl
    let len;
    let data = new AntiCollisionWheelManualControl(null);
    // Deserialize message field [wheel_name]
    data.wheel_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [operation]
    data.operation = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.wheel_name.length;
    length += object.operation.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dg_msgs/AntiCollisionWheelManualControl';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ebd1a681399214fc953fcd354c838a59';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 防撞轮手动控制
    string wheel_name       # 防撞轮名
    string operation        # 操作：extend 伸出；insert 深入；roll 滚动；zero 回零
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AntiCollisionWheelManualControl(null);
    if (msg.wheel_name !== undefined) {
      resolved.wheel_name = msg.wheel_name;
    }
    else {
      resolved.wheel_name = ''
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

module.exports = AntiCollisionWheelManualControl;

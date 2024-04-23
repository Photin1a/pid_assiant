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

class AssembleState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.is_emergency = null;
      this.is_auto = null;
      this.is_rescue = null;
      this.is_reset = null;
    }
    else {
      if (initObj.hasOwnProperty('is_emergency')) {
        this.is_emergency = initObj.is_emergency
      }
      else {
        this.is_emergency = false;
      }
      if (initObj.hasOwnProperty('is_auto')) {
        this.is_auto = initObj.is_auto
      }
      else {
        this.is_auto = false;
      }
      if (initObj.hasOwnProperty('is_rescue')) {
        this.is_rescue = initObj.is_rescue
      }
      else {
        this.is_rescue = false;
      }
      if (initObj.hasOwnProperty('is_reset')) {
        this.is_reset = initObj.is_reset
      }
      else {
        this.is_reset = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AssembleState
    // Serialize message field [is_emergency]
    bufferOffset = _serializer.bool(obj.is_emergency, buffer, bufferOffset);
    // Serialize message field [is_auto]
    bufferOffset = _serializer.bool(obj.is_auto, buffer, bufferOffset);
    // Serialize message field [is_rescue]
    bufferOffset = _serializer.bool(obj.is_rescue, buffer, bufferOffset);
    // Serialize message field [is_reset]
    bufferOffset = _serializer.bool(obj.is_reset, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AssembleState
    let len;
    let data = new AssembleState(null);
    // Deserialize message field [is_emergency]
    data.is_emergency = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_auto]
    data.is_auto = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_rescue]
    data.is_rescue = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_reset]
    data.is_reset = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dg_msgs/AssembleState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '38dfb48a7efcd005d49ab62be37595f7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new AssembleState(null);
    if (msg.is_emergency !== undefined) {
      resolved.is_emergency = msg.is_emergency;
    }
    else {
      resolved.is_emergency = false
    }

    if (msg.is_auto !== undefined) {
      resolved.is_auto = msg.is_auto;
    }
    else {
      resolved.is_auto = false
    }

    if (msg.is_rescue !== undefined) {
      resolved.is_rescue = msg.is_rescue;
    }
    else {
      resolved.is_rescue = false
    }

    if (msg.is_reset !== undefined) {
      resolved.is_reset = msg.is_reset;
    }
    else {
      resolved.is_reset = false
    }

    return resolved;
    }
};

module.exports = AssembleState;

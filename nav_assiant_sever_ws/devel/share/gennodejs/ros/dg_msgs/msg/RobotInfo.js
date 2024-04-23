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

class RobotInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.robot_name = null;
      this.robot_model = null;
      this.state = null;
      this.battery_level = null;
      this.exception_code = null;
      this.exception_message = null;
    }
    else {
      if (initObj.hasOwnProperty('robot_name')) {
        this.robot_name = initObj.robot_name
      }
      else {
        this.robot_name = '';
      }
      if (initObj.hasOwnProperty('robot_model')) {
        this.robot_model = initObj.robot_model
      }
      else {
        this.robot_model = '';
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = '';
      }
      if (initObj.hasOwnProperty('battery_level')) {
        this.battery_level = initObj.battery_level
      }
      else {
        this.battery_level = 0;
      }
      if (initObj.hasOwnProperty('exception_code')) {
        this.exception_code = initObj.exception_code
      }
      else {
        this.exception_code = 0;
      }
      if (initObj.hasOwnProperty('exception_message')) {
        this.exception_message = initObj.exception_message
      }
      else {
        this.exception_message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotInfo
    // Serialize message field [robot_name]
    bufferOffset = _serializer.string(obj.robot_name, buffer, bufferOffset);
    // Serialize message field [robot_model]
    bufferOffset = _serializer.string(obj.robot_model, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = _serializer.string(obj.state, buffer, bufferOffset);
    // Serialize message field [battery_level]
    bufferOffset = _serializer.int32(obj.battery_level, buffer, bufferOffset);
    // Serialize message field [exception_code]
    bufferOffset = _serializer.int32(obj.exception_code, buffer, bufferOffset);
    // Serialize message field [exception_message]
    bufferOffset = _serializer.string(obj.exception_message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotInfo
    let len;
    let data = new RobotInfo(null);
    // Deserialize message field [robot_name]
    data.robot_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [robot_model]
    data.robot_model = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [battery_level]
    data.battery_level = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [exception_code]
    data.exception_code = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [exception_message]
    data.exception_message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.robot_name.length;
    length += object.robot_model.length;
    length += object.state.length;
    length += object.exception_message.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dg_msgs/RobotInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cd6f740e81722148b147dc17f6287738';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string robot_name
    string robot_model
    string state    # 机器人状态，standby（开机之后，正常状态），working（采集状态），teaching（示教），emergency（急停），exception（异常状态，有报错信息）
    int32 battery_level # 0 = empty, 100 = full
    int32 exception_code        # 异常码
    string exception_message    # 异常信息
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotInfo(null);
    if (msg.robot_name !== undefined) {
      resolved.robot_name = msg.robot_name;
    }
    else {
      resolved.robot_name = ''
    }

    if (msg.robot_model !== undefined) {
      resolved.robot_model = msg.robot_model;
    }
    else {
      resolved.robot_model = ''
    }

    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = ''
    }

    if (msg.battery_level !== undefined) {
      resolved.battery_level = msg.battery_level;
    }
    else {
      resolved.battery_level = 0
    }

    if (msg.exception_code !== undefined) {
      resolved.exception_code = msg.exception_code;
    }
    else {
      resolved.exception_code = 0
    }

    if (msg.exception_message !== undefined) {
      resolved.exception_message = msg.exception_message;
    }
    else {
      resolved.exception_message = ''
    }

    return resolved;
    }
};

module.exports = RobotInfo;

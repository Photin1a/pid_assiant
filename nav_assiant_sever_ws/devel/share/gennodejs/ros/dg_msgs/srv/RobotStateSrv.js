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

let RobotInfo = require('../msg/RobotInfo.js');

//-----------------------------------------------------------

class RobotStateSrvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotStateSrvRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotStateSrvRequest
    let len;
    let data = new RobotStateSrvRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/RobotStateSrvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotStateSrvRequest(null);
    return resolved;
    }
};

class RobotStateSrvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.robot_info = null;
    }
    else {
      if (initObj.hasOwnProperty('robot_info')) {
        this.robot_info = initObj.robot_info
      }
      else {
        this.robot_info = new RobotInfo();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotStateSrvResponse
    // Serialize message field [robot_info]
    bufferOffset = RobotInfo.serialize(obj.robot_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotStateSrvResponse
    let len;
    let data = new RobotStateSrvResponse(null);
    // Deserialize message field [robot_info]
    data.robot_info = RobotInfo.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += RobotInfo.getMessageSize(object.robot_info);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/RobotStateSrvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7fd23f71870ecd30e0ef7b9251da4ebc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    RobotInfo robot_info
    
    
    ================================================================================
    MSG: dg_msgs/RobotInfo
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
    const resolved = new RobotStateSrvResponse(null);
    if (msg.robot_info !== undefined) {
      resolved.robot_info = RobotInfo.Resolve(msg.robot_info)
    }
    else {
      resolved.robot_info = new RobotInfo()
    }

    return resolved;
    }
};

module.exports = {
  Request: RobotStateSrvRequest,
  Response: RobotStateSrvResponse,
  md5sum() { return '7fd23f71870ecd30e0ef7b9251da4ebc'; },
  datatype() { return 'dg_msgs/RobotStateSrv'; }
};

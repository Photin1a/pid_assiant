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

class SetNavModeRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.nav_mode = null;
    }
    else {
      if (initObj.hasOwnProperty('nav_mode')) {
        this.nav_mode = initObj.nav_mode
      }
      else {
        this.nav_mode = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetNavModeRequest
    // Serialize message field [nav_mode]
    bufferOffset = _serializer.int32(obj.nav_mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetNavModeRequest
    let len;
    let data = new SetNavModeRequest(null);
    // Deserialize message field [nav_mode]
    data.nav_mode = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/SetNavModeRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6da4714a9065b59db72a6e63fec004bb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 nav_mode      # 导航模式 1：手动模式，通过线速度、角速度控制；2：站点导航
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetNavModeRequest(null);
    if (msg.nav_mode !== undefined) {
      resolved.nav_mode = msg.nav_mode;
    }
    else {
      resolved.nav_mode = 0
    }

    return resolved;
    }
};

class SetNavModeResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetNavModeResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetNavModeResponse
    let len;
    let data = new SetNavModeResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/SetNavModeResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '034a8e20d6a306665e3a5b340fab3f09';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 result        # 0: 成功  非0：失败
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetNavModeResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: SetNavModeRequest,
  Response: SetNavModeResponse,
  md5sum() { return '5866fc4438ca78f5db31e326c2742d07'; },
  datatype() { return 'dg_msgs/SetNavMode'; }
};

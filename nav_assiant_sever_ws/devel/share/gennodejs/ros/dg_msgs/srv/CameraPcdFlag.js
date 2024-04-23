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

class CameraPcdFlagRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.flag = null;
    }
    else {
      if (initObj.hasOwnProperty('flag')) {
        this.flag = initObj.flag
      }
      else {
        this.flag = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CameraPcdFlagRequest
    // Serialize message field [flag]
    bufferOffset = _serializer.bool(obj.flag, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CameraPcdFlagRequest
    let len;
    let data = new CameraPcdFlagRequest(null);
    // Deserialize message field [flag]
    data.flag = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/CameraPcdFlagRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '24842bc754e0f5cc982338eca1269251';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool flag #是否打开相机的点云输出接口
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CameraPcdFlagRequest(null);
    if (msg.flag !== undefined) {
      resolved.flag = msg.flag;
    }
    else {
      resolved.flag = false
    }

    return resolved;
    }
};

class CameraPcdFlagResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ret = null;
    }
    else {
      if (initObj.hasOwnProperty('ret')) {
        this.ret = initObj.ret
      }
      else {
        this.ret = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CameraPcdFlagResponse
    // Serialize message field [ret]
    bufferOffset = _serializer.int32(obj.ret, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CameraPcdFlagResponse
    let len;
    let data = new CameraPcdFlagResponse(null);
    // Deserialize message field [ret]
    data.ret = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/CameraPcdFlagResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3bd113e2f12c9c571d32a0bd71d59b8d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 ret
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CameraPcdFlagResponse(null);
    if (msg.ret !== undefined) {
      resolved.ret = msg.ret;
    }
    else {
      resolved.ret = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: CameraPcdFlagRequest,
  Response: CameraPcdFlagResponse,
  md5sum() { return 'da447c1866b277a6644b3e27c876d9c7'; },
  datatype() { return 'dg_msgs/CameraPcdFlag'; }
};

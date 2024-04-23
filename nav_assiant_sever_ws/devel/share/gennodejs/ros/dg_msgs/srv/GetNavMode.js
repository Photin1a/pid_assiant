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

class GetNavModeRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetNavModeRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetNavModeRequest
    let len;
    let data = new GetNavModeRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/GetNavModeRequest';
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
    const resolved = new GetNavModeRequest(null);
    return resolved;
    }
};

class GetNavModeResponse {
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
    // Serializes a message object of type GetNavModeResponse
    // Serialize message field [nav_mode]
    bufferOffset = _serializer.int32(obj.nav_mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetNavModeResponse
    let len;
    let data = new GetNavModeResponse(null);
    // Deserialize message field [nav_mode]
    data.nav_mode = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/GetNavModeResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6da4714a9065b59db72a6e63fec004bb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 nav_mode
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetNavModeResponse(null);
    if (msg.nav_mode !== undefined) {
      resolved.nav_mode = msg.nav_mode;
    }
    else {
      resolved.nav_mode = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: GetNavModeRequest,
  Response: GetNavModeResponse,
  md5sum() { return '6da4714a9065b59db72a6e63fec004bb'; },
  datatype() { return 'dg_msgs/GetNavMode'; }
};

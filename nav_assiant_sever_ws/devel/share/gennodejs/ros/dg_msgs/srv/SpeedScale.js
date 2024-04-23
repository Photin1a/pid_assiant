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

class SpeedScaleRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.linear_scale = null;
      this.angular_scale = null;
    }
    else {
      if (initObj.hasOwnProperty('linear_scale')) {
        this.linear_scale = initObj.linear_scale
      }
      else {
        this.linear_scale = 0.0;
      }
      if (initObj.hasOwnProperty('angular_scale')) {
        this.angular_scale = initObj.angular_scale
      }
      else {
        this.angular_scale = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SpeedScaleRequest
    // Serialize message field [linear_scale]
    bufferOffset = _serializer.float32(obj.linear_scale, buffer, bufferOffset);
    // Serialize message field [angular_scale]
    bufferOffset = _serializer.float32(obj.angular_scale, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SpeedScaleRequest
    let len;
    let data = new SpeedScaleRequest(null);
    // Deserialize message field [linear_scale]
    data.linear_scale = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [angular_scale]
    data.angular_scale = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/SpeedScaleRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '78ac8ff80e55b334b8429a979bb2a197';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 linear_scale
    float32 angular_scale
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SpeedScaleRequest(null);
    if (msg.linear_scale !== undefined) {
      resolved.linear_scale = msg.linear_scale;
    }
    else {
      resolved.linear_scale = 0.0
    }

    if (msg.angular_scale !== undefined) {
      resolved.angular_scale = msg.angular_scale;
    }
    else {
      resolved.angular_scale = 0.0
    }

    return resolved;
    }
};

class SpeedScaleResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cur_linear = null;
      this.cur_angular = null;
    }
    else {
      if (initObj.hasOwnProperty('cur_linear')) {
        this.cur_linear = initObj.cur_linear
      }
      else {
        this.cur_linear = 0.0;
      }
      if (initObj.hasOwnProperty('cur_angular')) {
        this.cur_angular = initObj.cur_angular
      }
      else {
        this.cur_angular = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SpeedScaleResponse
    // Serialize message field [cur_linear]
    bufferOffset = _serializer.float32(obj.cur_linear, buffer, bufferOffset);
    // Serialize message field [cur_angular]
    bufferOffset = _serializer.float32(obj.cur_angular, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SpeedScaleResponse
    let len;
    let data = new SpeedScaleResponse(null);
    // Deserialize message field [cur_linear]
    data.cur_linear = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [cur_angular]
    data.cur_angular = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/SpeedScaleResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1fccdc65c829526faff19e8899284d3b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 cur_linear
    float32 cur_angular
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SpeedScaleResponse(null);
    if (msg.cur_linear !== undefined) {
      resolved.cur_linear = msg.cur_linear;
    }
    else {
      resolved.cur_linear = 0.0
    }

    if (msg.cur_angular !== undefined) {
      resolved.cur_angular = msg.cur_angular;
    }
    else {
      resolved.cur_angular = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: SpeedScaleRequest,
  Response: SpeedScaleResponse,
  md5sum() { return '4030281ced8d9af82eced28afd3f5782'; },
  datatype() { return 'dg_msgs/SpeedScale'; }
};

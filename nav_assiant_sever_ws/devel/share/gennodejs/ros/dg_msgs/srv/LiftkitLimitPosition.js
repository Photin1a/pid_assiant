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

class LiftkitLimitPositionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.limit_min = null;
      this.limit_max = null;
    }
    else {
      if (initObj.hasOwnProperty('limit_min')) {
        this.limit_min = initObj.limit_min
      }
      else {
        this.limit_min = 0.0;
      }
      if (initObj.hasOwnProperty('limit_max')) {
        this.limit_max = initObj.limit_max
      }
      else {
        this.limit_max = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LiftkitLimitPositionRequest
    // Serialize message field [limit_min]
    bufferOffset = _serializer.float32(obj.limit_min, buffer, bufferOffset);
    // Serialize message field [limit_max]
    bufferOffset = _serializer.float32(obj.limit_max, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LiftkitLimitPositionRequest
    let len;
    let data = new LiftkitLimitPositionRequest(null);
    // Deserialize message field [limit_min]
    data.limit_min = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [limit_max]
    data.limit_max = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/LiftkitLimitPositionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5c404135f1d3ad536ea03d8e5149c7d9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 limit_min
    float32 limit_max
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LiftkitLimitPositionRequest(null);
    if (msg.limit_min !== undefined) {
      resolved.limit_min = msg.limit_min;
    }
    else {
      resolved.limit_min = 0.0
    }

    if (msg.limit_max !== undefined) {
      resolved.limit_max = msg.limit_max;
    }
    else {
      resolved.limit_max = 0.0
    }

    return resolved;
    }
};

class LiftkitLimitPositionResponse {
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
    // Serializes a message object of type LiftkitLimitPositionResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LiftkitLimitPositionResponse
    let len;
    let data = new LiftkitLimitPositionResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/LiftkitLimitPositionResponse';
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
    const resolved = new LiftkitLimitPositionResponse(null);
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
  Request: LiftkitLimitPositionRequest,
  Response: LiftkitLimitPositionResponse,
  md5sum() { return '9893256c569fa5e6bf99f99fa5ed8fd0'; },
  datatype() { return 'dg_msgs/LiftkitLimitPosition'; }
};

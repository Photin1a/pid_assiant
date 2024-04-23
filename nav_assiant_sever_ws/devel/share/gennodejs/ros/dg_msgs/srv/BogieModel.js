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

class BogieModelRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BogieModelRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BogieModelRequest
    let len;
    let data = new BogieModelRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/BogieModelRequest';
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
    const resolved = new BogieModelRequest(null);
    return resolved;
    }
};

class BogieModelResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.paths = null;
    }
    else {
      if (initObj.hasOwnProperty('paths')) {
        this.paths = initObj.paths
      }
      else {
        this.paths = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BogieModelResponse
    // Serialize message field [paths]
    bufferOffset = _arraySerializer.string(obj.paths, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BogieModelResponse
    let len;
    let data = new BogieModelResponse(null);
    // Deserialize message field [paths]
    data.paths = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.paths.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/BogieModelResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6492c325ba20fade9dfa2542bc679f51';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] paths
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BogieModelResponse(null);
    if (msg.paths !== undefined) {
      resolved.paths = msg.paths;
    }
    else {
      resolved.paths = []
    }

    return resolved;
    }
};

module.exports = {
  Request: BogieModelRequest,
  Response: BogieModelResponse,
  md5sum() { return '6492c325ba20fade9dfa2542bc679f51'; },
  datatype() { return 'dg_msgs/BogieModel'; }
};

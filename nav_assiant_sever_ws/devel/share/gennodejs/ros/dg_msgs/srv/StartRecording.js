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

class StartRecordingRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.number = null;
    }
    else {
      if (initObj.hasOwnProperty('number')) {
        this.number = initObj.number
      }
      else {
        this.number = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StartRecordingRequest
    // Serialize message field [number]
    bufferOffset = _serializer.string(obj.number, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StartRecordingRequest
    let len;
    let data = new StartRecordingRequest(null);
    // Deserialize message field [number]
    data.number = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.number.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/StartRecordingRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1390643684d42806cde16cb777d15235';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string number       # 机械臂编号
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StartRecordingRequest(null);
    if (msg.number !== undefined) {
      resolved.number = msg.number;
    }
    else {
      resolved.number = ''
    }

    return resolved;
    }
};

class StartRecordingResponse {
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
    // Serializes a message object of type StartRecordingResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StartRecordingResponse
    let len;
    let data = new StartRecordingResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/StartRecordingResponse';
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
    const resolved = new StartRecordingResponse(null);
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
  Request: StartRecordingRequest,
  Response: StartRecordingResponse,
  md5sum() { return '8c9c8e5fc4e6966e27fb0faf053f29e5'; },
  datatype() { return 'dg_msgs/StartRecording'; }
};

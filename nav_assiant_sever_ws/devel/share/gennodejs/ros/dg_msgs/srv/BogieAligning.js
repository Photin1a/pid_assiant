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

class BogieAligningRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.model_path = null;
      this.lidar_topic = null;
    }
    else {
      if (initObj.hasOwnProperty('model_path')) {
        this.model_path = initObj.model_path
      }
      else {
        this.model_path = '';
      }
      if (initObj.hasOwnProperty('lidar_topic')) {
        this.lidar_topic = initObj.lidar_topic
      }
      else {
        this.lidar_topic = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BogieAligningRequest
    // Serialize message field [model_path]
    bufferOffset = _serializer.string(obj.model_path, buffer, bufferOffset);
    // Serialize message field [lidar_topic]
    bufferOffset = _serializer.string(obj.lidar_topic, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BogieAligningRequest
    let len;
    let data = new BogieAligningRequest(null);
    // Deserialize message field [model_path]
    data.model_path = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [lidar_topic]
    data.lidar_topic = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.model_path.length;
    length += object.lidar_topic.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/BogieAligningRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0d390567be49730c51ffc58a6689d460';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string model_path
    string lidar_topic
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BogieAligningRequest(null);
    if (msg.model_path !== undefined) {
      resolved.model_path = msg.model_path;
    }
    else {
      resolved.model_path = ''
    }

    if (msg.lidar_topic !== undefined) {
      resolved.lidar_topic = msg.lidar_topic;
    }
    else {
      resolved.lidar_topic = ''
    }

    return resolved;
    }
};

class BogieAligningResponse {
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
    // Serializes a message object of type BogieAligningResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BogieAligningResponse
    let len;
    let data = new BogieAligningResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/BogieAligningResponse';
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
    const resolved = new BogieAligningResponse(null);
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
  Request: BogieAligningRequest,
  Response: BogieAligningResponse,
  md5sum() { return '7a688dfc87e588c1b04a6359014918f4'; },
  datatype() { return 'dg_msgs/BogieAligning'; }
};

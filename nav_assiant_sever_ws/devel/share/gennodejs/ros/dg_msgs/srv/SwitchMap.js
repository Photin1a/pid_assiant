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

class SwitchMapRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.map_name = null;
    }
    else {
      if (initObj.hasOwnProperty('map_name')) {
        this.map_name = initObj.map_name
      }
      else {
        this.map_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SwitchMapRequest
    // Serialize message field [map_name]
    bufferOffset = _serializer.string(obj.map_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SwitchMapRequest
    let len;
    let data = new SwitchMapRequest(null);
    // Deserialize message field [map_name]
    data.map_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.map_name.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/SwitchMapRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '25e928a2d4ff388c294895b7af935978';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 切换地图 service name = /switch_map
    string map_name             # 要切换的题图名称
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SwitchMapRequest(null);
    if (msg.map_name !== undefined) {
      resolved.map_name = msg.map_name;
    }
    else {
      resolved.map_name = ''
    }

    return resolved;
    }
};

class SwitchMapResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.err_msg = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
      }
      if (initObj.hasOwnProperty('err_msg')) {
        this.err_msg = initObj.err_msg
      }
      else {
        this.err_msg = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SwitchMapResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    // Serialize message field [err_msg]
    bufferOffset = _serializer.string(obj.err_msg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SwitchMapResponse
    let len;
    let data = new SwitchMapResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [err_msg]
    data.err_msg = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.err_msg.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/SwitchMapResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '09aeb1bafb3b420fac75afd69de1c815';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 result                # 0: 成功；非0: 失败
    string err_msg              # 错误信息
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SwitchMapResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
    }

    if (msg.err_msg !== undefined) {
      resolved.err_msg = msg.err_msg;
    }
    else {
      resolved.err_msg = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: SwitchMapRequest,
  Response: SwitchMapResponse,
  md5sum() { return '7e4b71db1cbc0faaf16cd62f4aa73ce0'; },
  datatype() { return 'dg_msgs/SwitchMap'; }
};

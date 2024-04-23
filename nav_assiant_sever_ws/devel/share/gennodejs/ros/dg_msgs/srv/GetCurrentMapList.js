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

class GetCurrentMapListRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetCurrentMapListRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetCurrentMapListRequest
    let len;
    let data = new GetCurrentMapListRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/GetCurrentMapListRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 获取当前地图列表 service name = /get_current_map_list
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetCurrentMapListRequest(null);
    return resolved;
    }
};

class GetCurrentMapListResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.err_msg = null;
      this.map_names = null;
      this.current_map_name = null;
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
      if (initObj.hasOwnProperty('map_names')) {
        this.map_names = initObj.map_names
      }
      else {
        this.map_names = [];
      }
      if (initObj.hasOwnProperty('current_map_name')) {
        this.current_map_name = initObj.current_map_name
      }
      else {
        this.current_map_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetCurrentMapListResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    // Serialize message field [err_msg]
    bufferOffset = _serializer.string(obj.err_msg, buffer, bufferOffset);
    // Serialize message field [map_names]
    bufferOffset = _arraySerializer.string(obj.map_names, buffer, bufferOffset, null);
    // Serialize message field [current_map_name]
    bufferOffset = _serializer.string(obj.current_map_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetCurrentMapListResponse
    let len;
    let data = new GetCurrentMapListResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [err_msg]
    data.err_msg = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [map_names]
    data.map_names = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [current_map_name]
    data.current_map_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.err_msg.length;
    object.map_names.forEach((val) => {
      length += 4 + val.length;
    });
    length += object.current_map_name.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/GetCurrentMapListResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fc0b5e17cf98696526984caa6b27f884';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 result                # 0: 成功；非0: 失败
    string err_msg              # 错误信息
    string[] map_names          # 所有地图列表
    string current_map_name     # 当前地图名称
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetCurrentMapListResponse(null);
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

    if (msg.map_names !== undefined) {
      resolved.map_names = msg.map_names;
    }
    else {
      resolved.map_names = []
    }

    if (msg.current_map_name !== undefined) {
      resolved.current_map_name = msg.current_map_name;
    }
    else {
      resolved.current_map_name = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: GetCurrentMapListRequest,
  Response: GetCurrentMapListResponse,
  md5sum() { return 'fc0b5e17cf98696526984caa6b27f884'; },
  datatype() { return 'dg_msgs/GetCurrentMapList'; }
};

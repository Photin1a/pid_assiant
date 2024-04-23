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

class CurrentTeachingStopLocationRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sensor_type = null;
      this.sensor_id = null;
      this.directory = null;
    }
    else {
      if (initObj.hasOwnProperty('sensor_type')) {
        this.sensor_type = initObj.sensor_type
      }
      else {
        this.sensor_type = '';
      }
      if (initObj.hasOwnProperty('sensor_id')) {
        this.sensor_id = initObj.sensor_id
      }
      else {
        this.sensor_id = '';
      }
      if (initObj.hasOwnProperty('directory')) {
        this.directory = initObj.directory
      }
      else {
        this.directory = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CurrentTeachingStopLocationRequest
    // Serialize message field [sensor_type]
    bufferOffset = _serializer.string(obj.sensor_type, buffer, bufferOffset);
    // Serialize message field [sensor_id]
    bufferOffset = _serializer.string(obj.sensor_id, buffer, bufferOffset);
    // Serialize message field [directory]
    bufferOffset = _serializer.string(obj.directory, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CurrentTeachingStopLocationRequest
    let len;
    let data = new CurrentTeachingStopLocationRequest(null);
    // Deserialize message field [sensor_type]
    data.sensor_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [sensor_id]
    data.sensor_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [directory]
    data.directory = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.sensor_type.length;
    length += object.sensor_id.length;
    length += object.directory.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/CurrentTeachingStopLocationRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b1b41ef1d526f40d3609788f17dfd3a6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 示教停车点（采集点）    base_link
    string sensor_type         # 雷达（lidar）、精扫相机（camera）
    string sensor_id           # 雷达topic  相机分组编号
    string directory           # 数据存放目录
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CurrentTeachingStopLocationRequest(null);
    if (msg.sensor_type !== undefined) {
      resolved.sensor_type = msg.sensor_type;
    }
    else {
      resolved.sensor_type = ''
    }

    if (msg.sensor_id !== undefined) {
      resolved.sensor_id = msg.sensor_id;
    }
    else {
      resolved.sensor_id = ''
    }

    if (msg.directory !== undefined) {
      resolved.directory = msg.directory;
    }
    else {
      resolved.directory = ''
    }

    return resolved;
    }
};

class CurrentTeachingStopLocationResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.data_file_path = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
      }
      if (initObj.hasOwnProperty('data_file_path')) {
        this.data_file_path = initObj.data_file_path
      }
      else {
        this.data_file_path = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CurrentTeachingStopLocationResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    // Serialize message field [data_file_path]
    bufferOffset = _serializer.string(obj.data_file_path, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CurrentTeachingStopLocationResponse
    let len;
    let data = new CurrentTeachingStopLocationResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [data_file_path]
    data.data_file_path = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.data_file_path.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/CurrentTeachingStopLocationResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '86025f6eb65ad59c0913c228ac61a313';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 result             # 0: 成功  非0：失败
    string data_file_path    # 采集数据存放路径
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CurrentTeachingStopLocationResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
    }

    if (msg.data_file_path !== undefined) {
      resolved.data_file_path = msg.data_file_path;
    }
    else {
      resolved.data_file_path = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: CurrentTeachingStopLocationRequest,
  Response: CurrentTeachingStopLocationResponse,
  md5sum() { return '974b4b79110aabe8a799f45ec4442dc5'; },
  datatype() { return 'dg_msgs/CurrentTeachingStopLocation'; }
};

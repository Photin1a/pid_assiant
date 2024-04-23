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

class PresetStopLocationRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lidar_topic = null;
      this.model_path = null;
      this.model_id = null;
      this.stop_id = null;
    }
    else {
      if (initObj.hasOwnProperty('lidar_topic')) {
        this.lidar_topic = initObj.lidar_topic
      }
      else {
        this.lidar_topic = '';
      }
      if (initObj.hasOwnProperty('model_path')) {
        this.model_path = initObj.model_path
      }
      else {
        this.model_path = '';
      }
      if (initObj.hasOwnProperty('model_id')) {
        this.model_id = initObj.model_id
      }
      else {
        this.model_id = 0;
      }
      if (initObj.hasOwnProperty('stop_id')) {
        this.stop_id = initObj.stop_id
      }
      else {
        this.stop_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PresetStopLocationRequest
    // Serialize message field [lidar_topic]
    bufferOffset = _serializer.string(obj.lidar_topic, buffer, bufferOffset);
    // Serialize message field [model_path]
    bufferOffset = _serializer.string(obj.model_path, buffer, bufferOffset);
    // Serialize message field [model_id]
    bufferOffset = _serializer.int32(obj.model_id, buffer, bufferOffset);
    // Serialize message field [stop_id]
    bufferOffset = _serializer.int32(obj.stop_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PresetStopLocationRequest
    let len;
    let data = new PresetStopLocationRequest(null);
    // Deserialize message field [lidar_topic]
    data.lidar_topic = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [model_path]
    data.model_path = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [model_id]
    data.model_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [stop_id]
    data.stop_id = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.lidar_topic.length;
    length += object.model_path.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/PresetStopLocationRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '96abcff27f87af8028c35ff3f8baf81b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 预置停车点位置，此时并不能获取准确的停车点位置，需离线处理后上传
    string lidar_topic      # 雷达标识
    string model_path       # 模型路径
    int32 model_id          # 模型ID
    int32 stop_id           # 停车点ID
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PresetStopLocationRequest(null);
    if (msg.lidar_topic !== undefined) {
      resolved.lidar_topic = msg.lidar_topic;
    }
    else {
      resolved.lidar_topic = ''
    }

    if (msg.model_path !== undefined) {
      resolved.model_path = msg.model_path;
    }
    else {
      resolved.model_path = ''
    }

    if (msg.model_id !== undefined) {
      resolved.model_id = msg.model_id;
    }
    else {
      resolved.model_id = 0
    }

    if (msg.stop_id !== undefined) {
      resolved.stop_id = msg.stop_id;
    }
    else {
      resolved.stop_id = 0
    }

    return resolved;
    }
};

class PresetStopLocationResponse {
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
    // Serializes a message object of type PresetStopLocationResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PresetStopLocationResponse
    let len;
    let data = new PresetStopLocationResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/PresetStopLocationResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '034a8e20d6a306665e3a5b340fab3f09';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 result        # 0: 成功  非0：失败
    
    
    # 离线调整输出结果
    # Pose robotPose
    # CropBox box
    # int32 model_id
    # int32 stop_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PresetStopLocationResponse(null);
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
  Request: PresetStopLocationRequest,
  Response: PresetStopLocationResponse,
  md5sum() { return '507416a4bd780b18fe799266d3f8145e'; },
  datatype() { return 'dg_msgs/PresetStopLocation'; }
};

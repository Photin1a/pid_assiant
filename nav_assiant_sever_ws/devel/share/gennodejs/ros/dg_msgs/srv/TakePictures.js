// Auto-generated. Do not edit!

// (in-package dg_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ImageGoal = require('../msg/ImageGoal.js');

//-----------------------------------------------------------

let ImageResult = require('../msg/ImageResult.js');

//-----------------------------------------------------------

class TakePicturesRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.goal = null;
      this.directory = null;
    }
    else {
      if (initObj.hasOwnProperty('goal')) {
        this.goal = initObj.goal
      }
      else {
        this.goal = new ImageGoal();
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
    // Serializes a message object of type TakePicturesRequest
    // Serialize message field [goal]
    bufferOffset = ImageGoal.serialize(obj.goal, buffer, bufferOffset);
    // Serialize message field [directory]
    bufferOffset = _serializer.string(obj.directory, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TakePicturesRequest
    let len;
    let data = new TakePicturesRequest(null);
    // Deserialize message field [goal]
    data.goal = ImageGoal.deserialize(buffer, bufferOffset);
    // Deserialize message field [directory]
    data.directory = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += ImageGoal.getMessageSize(object.goal);
    length += object.directory.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/TakePicturesRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '39fc2278778aa20d5eea6d0820bc03d5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ImageGoal goal
    string directory        # 图片存放目录
    
    ================================================================================
    MSG: dg_msgs/ImageGoal
    string id          # ID
    string number     # 设备编号
    int32 types     # 拍照类型，灰度为`1`，彩色为`2`，深度为`4`，点云为`8`，多种类型时按位相与
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TakePicturesRequest(null);
    if (msg.goal !== undefined) {
      resolved.goal = ImageGoal.Resolve(msg.goal)
    }
    else {
      resolved.goal = new ImageGoal()
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

class TakePicturesResponse {
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
        this.result = new ImageResult();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TakePicturesResponse
    // Serialize message field [result]
    bufferOffset = ImageResult.serialize(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TakePicturesResponse
    let len;
    let data = new TakePicturesResponse(null);
    // Deserialize message field [result]
    data.result = ImageResult.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += ImageResult.getMessageSize(object.result);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/TakePicturesResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '12bc78b6478455638fafbda6b7370976';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ImageResult result
    
    
    ================================================================================
    MSG: dg_msgs/ImageResult
    string id
    int32 result        # 拍照结果 0: 成功  非0：失败
    string gray         # 灰度图路径
    string rgb          # 彩色图路径
    string depth        # 深度图路径
    string point_cloud  # 点云路径
    float32[] intrinsic # 相机内参
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TakePicturesResponse(null);
    if (msg.result !== undefined) {
      resolved.result = ImageResult.Resolve(msg.result)
    }
    else {
      resolved.result = new ImageResult()
    }

    return resolved;
    }
};

module.exports = {
  Request: TakePicturesRequest,
  Response: TakePicturesResponse,
  md5sum() { return 'd49927ea178ba001349d7f69d4338561'; },
  datatype() { return 'dg_msgs/TakePictures'; }
};

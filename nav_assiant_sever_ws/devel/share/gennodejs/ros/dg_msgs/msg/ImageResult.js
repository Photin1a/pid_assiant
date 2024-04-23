// Auto-generated. Do not edit!

// (in-package dg_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ImageResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.result = null;
      this.gray = null;
      this.rgb = null;
      this.depth = null;
      this.point_cloud = null;
      this.intrinsic = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = '';
      }
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
      }
      if (initObj.hasOwnProperty('gray')) {
        this.gray = initObj.gray
      }
      else {
        this.gray = '';
      }
      if (initObj.hasOwnProperty('rgb')) {
        this.rgb = initObj.rgb
      }
      else {
        this.rgb = '';
      }
      if (initObj.hasOwnProperty('depth')) {
        this.depth = initObj.depth
      }
      else {
        this.depth = '';
      }
      if (initObj.hasOwnProperty('point_cloud')) {
        this.point_cloud = initObj.point_cloud
      }
      else {
        this.point_cloud = '';
      }
      if (initObj.hasOwnProperty('intrinsic')) {
        this.intrinsic = initObj.intrinsic
      }
      else {
        this.intrinsic = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ImageResult
    // Serialize message field [id]
    bufferOffset = _serializer.string(obj.id, buffer, bufferOffset);
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    // Serialize message field [gray]
    bufferOffset = _serializer.string(obj.gray, buffer, bufferOffset);
    // Serialize message field [rgb]
    bufferOffset = _serializer.string(obj.rgb, buffer, bufferOffset);
    // Serialize message field [depth]
    bufferOffset = _serializer.string(obj.depth, buffer, bufferOffset);
    // Serialize message field [point_cloud]
    bufferOffset = _serializer.string(obj.point_cloud, buffer, bufferOffset);
    // Serialize message field [intrinsic]
    bufferOffset = _arraySerializer.float32(obj.intrinsic, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ImageResult
    let len;
    let data = new ImageResult(null);
    // Deserialize message field [id]
    data.id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [gray]
    data.gray = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [rgb]
    data.rgb = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [depth]
    data.depth = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [point_cloud]
    data.point_cloud = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [intrinsic]
    data.intrinsic = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.id.length;
    length += object.gray.length;
    length += object.rgb.length;
    length += object.depth.length;
    length += object.point_cloud.length;
    length += 4 * object.intrinsic.length;
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dg_msgs/ImageResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '929c9d255c2b3abf0da93c2483ac7bec';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new ImageResult(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = ''
    }

    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
    }

    if (msg.gray !== undefined) {
      resolved.gray = msg.gray;
    }
    else {
      resolved.gray = ''
    }

    if (msg.rgb !== undefined) {
      resolved.rgb = msg.rgb;
    }
    else {
      resolved.rgb = ''
    }

    if (msg.depth !== undefined) {
      resolved.depth = msg.depth;
    }
    else {
      resolved.depth = ''
    }

    if (msg.point_cloud !== undefined) {
      resolved.point_cloud = msg.point_cloud;
    }
    else {
      resolved.point_cloud = ''
    }

    if (msg.intrinsic !== undefined) {
      resolved.intrinsic = msg.intrinsic;
    }
    else {
      resolved.intrinsic = []
    }

    return resolved;
    }
};

module.exports = ImageResult;

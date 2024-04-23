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

class NotificationInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.level = null;
      this.title = null;
      this.message = null;
      this.data = null;
      this.datetime = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('level')) {
        this.level = initObj.level
      }
      else {
        this.level = '';
      }
      if (initObj.hasOwnProperty('title')) {
        this.title = initObj.title
      }
      else {
        this.title = '';
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = '';
      }
      if (initObj.hasOwnProperty('datetime')) {
        this.datetime = initObj.datetime
      }
      else {
        this.datetime = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NotificationInfo
    // Serialize message field [type]
    bufferOffset = _serializer.int32(obj.type, buffer, bufferOffset);
    // Serialize message field [level]
    bufferOffset = _serializer.string(obj.level, buffer, bufferOffset);
    // Serialize message field [title]
    bufferOffset = _serializer.string(obj.title, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [data]
    bufferOffset = _serializer.string(obj.data, buffer, bufferOffset);
    // Serialize message field [datetime]
    bufferOffset = _serializer.uint64(obj.datetime, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NotificationInfo
    let len;
    let data = new NotificationInfo(null);
    // Deserialize message field [type]
    data.type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [level]
    data.level = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [title]
    data.title = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [data]
    data.data = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [datetime]
    data.datetime = _deserializer.uint64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.level.length;
    length += object.title.length;
    length += object.message.length;
    length += object.data.length;
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dg_msgs/NotificationInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e515c038beb10a6a0ef7c41f0cd3fe77';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 type          # 类型编号，用于唯一区分每种通知
    string level         # 等级，包含 verbose, normal, warning, critical
    string title        # 标题
    string message      # 通知文字描述
    string data         # 通知数据，数据内容由通知类型决定，可能为json，base64等多种格式
    uint64 datetime     # 时间
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NotificationInfo(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.level !== undefined) {
      resolved.level = msg.level;
    }
    else {
      resolved.level = ''
    }

    if (msg.title !== undefined) {
      resolved.title = msg.title;
    }
    else {
      resolved.title = ''
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = ''
    }

    if (msg.datetime !== undefined) {
      resolved.datetime = msg.datetime;
    }
    else {
      resolved.datetime = 0
    }

    return resolved;
    }
};

module.exports = NotificationInfo;

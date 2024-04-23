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

class CropBox {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.center_ = null;
      this.R_euler = null;
      this.extent_ = null;
    }
    else {
      if (initObj.hasOwnProperty('center_')) {
        this.center_ = initObj.center_
      }
      else {
        this.center_ = [];
      }
      if (initObj.hasOwnProperty('R_euler')) {
        this.R_euler = initObj.R_euler
      }
      else {
        this.R_euler = [];
      }
      if (initObj.hasOwnProperty('extent_')) {
        this.extent_ = initObj.extent_
      }
      else {
        this.extent_ = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CropBox
    // Serialize message field [center_]
    bufferOffset = _arraySerializer.float32(obj.center_, buffer, bufferOffset, null);
    // Serialize message field [R_euler]
    bufferOffset = _arraySerializer.float32(obj.R_euler, buffer, bufferOffset, null);
    // Serialize message field [extent_]
    bufferOffset = _arraySerializer.float32(obj.extent_, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CropBox
    let len;
    let data = new CropBox(null);
    // Deserialize message field [center_]
    data.center_ = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [R_euler]
    data.R_euler = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [extent_]
    data.extent_ = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.center_.length;
    length += 4 * object.R_euler.length;
    length += 4 * object.extent_.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dg_msgs/CropBox';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '42dde1f55fee23ccce2a80f909dd54cf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] center_
    float32[] R_euler
    float32[] extent_
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CropBox(null);
    if (msg.center_ !== undefined) {
      resolved.center_ = msg.center_;
    }
    else {
      resolved.center_ = []
    }

    if (msg.R_euler !== undefined) {
      resolved.R_euler = msg.R_euler;
    }
    else {
      resolved.R_euler = []
    }

    if (msg.extent_ !== undefined) {
      resolved.extent_ = msg.extent_;
    }
    else {
      resolved.extent_ = []
    }

    return resolved;
    }
};

module.exports = CropBox;

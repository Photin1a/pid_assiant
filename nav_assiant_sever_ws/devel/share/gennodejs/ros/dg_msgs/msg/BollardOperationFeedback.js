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

class BollardOperationFeedback {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.current_height = null;
    }
    else {
      if (initObj.hasOwnProperty('current_height')) {
        this.current_height = initObj.current_height
      }
      else {
        this.current_height = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BollardOperationFeedback
    // Serialize message field [current_height]
    bufferOffset = _serializer.float32(obj.current_height, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BollardOperationFeedback
    let len;
    let data = new BollardOperationFeedback(null);
    // Deserialize message field [current_height]
    data.current_height = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dg_msgs/BollardOperationFeedback';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9316e2f24599ef5a0ba747910cce59b6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    float32 current_height                      # 当前所在高度
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BollardOperationFeedback(null);
    if (msg.current_height !== undefined) {
      resolved.current_height = msg.current_height;
    }
    else {
      resolved.current_height = 0.0
    }

    return resolved;
    }
};

module.exports = BollardOperationFeedback;

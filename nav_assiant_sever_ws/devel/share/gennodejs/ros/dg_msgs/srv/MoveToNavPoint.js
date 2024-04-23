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

class MoveToNavPointRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.distance = null;
      this.check_state = null;
    }
    else {
      if (initObj.hasOwnProperty('distance')) {
        this.distance = initObj.distance
      }
      else {
        this.distance = 0.0;
      }
      if (initObj.hasOwnProperty('check_state')) {
        this.check_state = initObj.check_state
      }
      else {
        this.check_state = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MoveToNavPointRequest
    // Serialize message field [distance]
    bufferOffset = _serializer.float32(obj.distance, buffer, bufferOffset);
    // Serialize message field [check_state]
    bufferOffset = _serializer.bool(obj.check_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoveToNavPointRequest
    let len;
    let data = new MoveToNavPointRequest(null);
    // Deserialize message field [distance]
    data.distance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [check_state]
    data.check_state = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/MoveToNavPointRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1bebdd415c2baa769bb632ce67520f8a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 distance            # 站点导航模式下移动距离，> 0 向前，< 0 向后
    bool check_state            # 是否要求机械臂必须要在home点：true底盘运动前机械臂必须要在home位，否则直接返回运动失败；false则不对机械臂进行检查，完全信任人工操作
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MoveToNavPointRequest(null);
    if (msg.distance !== undefined) {
      resolved.distance = msg.distance;
    }
    else {
      resolved.distance = 0.0
    }

    if (msg.check_state !== undefined) {
      resolved.check_state = msg.check_state;
    }
    else {
      resolved.check_state = false
    }

    return resolved;
    }
};

class MoveToNavPointResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.error_msgs = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
      }
      if (initObj.hasOwnProperty('error_msgs')) {
        this.error_msgs = initObj.error_msgs
      }
      else {
        this.error_msgs = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MoveToNavPointResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    // Serialize message field [error_msgs]
    bufferOffset = _serializer.string(obj.error_msgs, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoveToNavPointResponse
    let len;
    let data = new MoveToNavPointResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [error_msgs]
    data.error_msgs = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.error_msgs.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/MoveToNavPointResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e577a1d438424008f1072e6eca0a109f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 result                # 0: 成功  非0：失败
    string error_msgs           # 错误信息
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MoveToNavPointResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
    }

    if (msg.error_msgs !== undefined) {
      resolved.error_msgs = msg.error_msgs;
    }
    else {
      resolved.error_msgs = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: MoveToNavPointRequest,
  Response: MoveToNavPointResponse,
  md5sum() { return '6cf0632649534b6bf5571e33bbfdeb01'; },
  datatype() { return 'dg_msgs/MoveToNavPoint'; }
};

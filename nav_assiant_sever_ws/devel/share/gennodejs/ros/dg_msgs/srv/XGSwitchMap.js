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

let UniversalStateInfo = require('../msg/UniversalStateInfo.js');

//-----------------------------------------------------------

class XGSwitchMapRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.map_name = null;
      this.allow_move = null;
    }
    else {
      if (initObj.hasOwnProperty('map_name')) {
        this.map_name = initObj.map_name
      }
      else {
        this.map_name = '';
      }
      if (initObj.hasOwnProperty('allow_move')) {
        this.allow_move = initObj.allow_move
      }
      else {
        this.allow_move = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type XGSwitchMapRequest
    // Serialize message field [map_name]
    bufferOffset = _serializer.string(obj.map_name, buffer, bufferOffset);
    // Serialize message field [allow_move]
    bufferOffset = _serializer.bool(obj.allow_move, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type XGSwitchMapRequest
    let len;
    let data = new XGSwitchMapRequest(null);
    // Deserialize message field [map_name]
    data.map_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [allow_move]
    data.allow_move = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.map_name.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/XGSwitchMapRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e04283d464b11a3c09dbb49d716a6b55';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string map_name
    bool allow_move                     # 当切换地图的时候是否允许移动到地图切换点【严禁缺省】因为涉及到底盘运动和电梯待命等信息
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new XGSwitchMapRequest(null);
    if (msg.map_name !== undefined) {
      resolved.map_name = msg.map_name;
    }
    else {
      resolved.map_name = ''
    }

    if (msg.allow_move !== undefined) {
      resolved.allow_move = msg.allow_move;
    }
    else {
      resolved.allow_move = false
    }

    return resolved;
    }
};

class XGSwitchMapResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state_info = null;
    }
    else {
      if (initObj.hasOwnProperty('state_info')) {
        this.state_info = initObj.state_info
      }
      else {
        this.state_info = new UniversalStateInfo();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type XGSwitchMapResponse
    // Serialize message field [state_info]
    bufferOffset = UniversalStateInfo.serialize(obj.state_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type XGSwitchMapResponse
    let len;
    let data = new XGSwitchMapResponse(null);
    // Deserialize message field [state_info]
    data.state_info = UniversalStateInfo.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += UniversalStateInfo.getMessageSize(object.state_info);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/XGSwitchMapResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8b810613bd7e6867ccbfac2fb14e2de4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    UniversalStateInfo  state_info
    
    ================================================================================
    MSG: dg_msgs/UniversalStateInfo
    int32 state_index   # 状态索引值：统一0是正常，其他数字自定义
    string node_name    # 当前节点名
    string state_msgs   # 附加信息，相当于additional_msgs
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new XGSwitchMapResponse(null);
    if (msg.state_info !== undefined) {
      resolved.state_info = UniversalStateInfo.Resolve(msg.state_info)
    }
    else {
      resolved.state_info = new UniversalStateInfo()
    }

    return resolved;
    }
};

module.exports = {
  Request: XGSwitchMapRequest,
  Response: XGSwitchMapResponse,
  md5sum() { return '65916606f07351a8c2635db69ef80d88'; },
  datatype() { return 'dg_msgs/XGSwitchMap'; }
};

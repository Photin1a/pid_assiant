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

let ChassisInfo = require('../msg/ChassisInfo.js');

//-----------------------------------------------------------

class ChassisStateSrvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ChassisStateSrvRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChassisStateSrvRequest
    let len;
    let data = new ChassisStateSrvRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/ChassisStateSrvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ChassisStateSrvRequest(null);
    return resolved;
    }
};

class ChassisStateSrvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.chassis_info = null;
    }
    else {
      if (initObj.hasOwnProperty('chassis_info')) {
        this.chassis_info = initObj.chassis_info
      }
      else {
        this.chassis_info = new ChassisInfo();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ChassisStateSrvResponse
    // Serialize message field [chassis_info]
    bufferOffset = ChassisInfo.serialize(obj.chassis_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChassisStateSrvResponse
    let len;
    let data = new ChassisStateSrvResponse(null);
    // Deserialize message field [chassis_info]
    data.chassis_info = ChassisInfo.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += ChassisInfo.getMessageSize(object.chassis_info);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/ChassisStateSrvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b6dae2c19e5871a707bd9c92ebb1cef2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ChassisInfo chassis_info
    
    
    ================================================================================
    MSG: dg_msgs/ChassisInfo
    EquipmentCommon equipment
    float32 min_linear_speed
    float32 max_linear_speed
    float32 linear_speed_scaling
    float32 min_angular_speed
    float32 max_angular_speed
    float32 angular_speed_scaling
    
    ================================================================================
    MSG: dg_msgs/EquipmentCommon
    int32 equipment_id
    string equipment_name
    bool connected
    uint64 connected_time
    string model
    string manufacturer
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ChassisStateSrvResponse(null);
    if (msg.chassis_info !== undefined) {
      resolved.chassis_info = ChassisInfo.Resolve(msg.chassis_info)
    }
    else {
      resolved.chassis_info = new ChassisInfo()
    }

    return resolved;
    }
};

module.exports = {
  Request: ChassisStateSrvRequest,
  Response: ChassisStateSrvResponse,
  md5sum() { return 'b6dae2c19e5871a707bd9c92ebb1cef2'; },
  datatype() { return 'dg_msgs/ChassisStateSrv'; }
};

// Auto-generated. Do not edit!

// (in-package dg_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let EquipmentCommon = require('./EquipmentCommon.js');

//-----------------------------------------------------------

class ChassisInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.equipment = null;
      this.min_linear_speed = null;
      this.max_linear_speed = null;
      this.linear_speed_scaling = null;
      this.min_angular_speed = null;
      this.max_angular_speed = null;
      this.angular_speed_scaling = null;
    }
    else {
      if (initObj.hasOwnProperty('equipment')) {
        this.equipment = initObj.equipment
      }
      else {
        this.equipment = new EquipmentCommon();
      }
      if (initObj.hasOwnProperty('min_linear_speed')) {
        this.min_linear_speed = initObj.min_linear_speed
      }
      else {
        this.min_linear_speed = 0.0;
      }
      if (initObj.hasOwnProperty('max_linear_speed')) {
        this.max_linear_speed = initObj.max_linear_speed
      }
      else {
        this.max_linear_speed = 0.0;
      }
      if (initObj.hasOwnProperty('linear_speed_scaling')) {
        this.linear_speed_scaling = initObj.linear_speed_scaling
      }
      else {
        this.linear_speed_scaling = 0.0;
      }
      if (initObj.hasOwnProperty('min_angular_speed')) {
        this.min_angular_speed = initObj.min_angular_speed
      }
      else {
        this.min_angular_speed = 0.0;
      }
      if (initObj.hasOwnProperty('max_angular_speed')) {
        this.max_angular_speed = initObj.max_angular_speed
      }
      else {
        this.max_angular_speed = 0.0;
      }
      if (initObj.hasOwnProperty('angular_speed_scaling')) {
        this.angular_speed_scaling = initObj.angular_speed_scaling
      }
      else {
        this.angular_speed_scaling = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ChassisInfo
    // Serialize message field [equipment]
    bufferOffset = EquipmentCommon.serialize(obj.equipment, buffer, bufferOffset);
    // Serialize message field [min_linear_speed]
    bufferOffset = _serializer.float32(obj.min_linear_speed, buffer, bufferOffset);
    // Serialize message field [max_linear_speed]
    bufferOffset = _serializer.float32(obj.max_linear_speed, buffer, bufferOffset);
    // Serialize message field [linear_speed_scaling]
    bufferOffset = _serializer.float32(obj.linear_speed_scaling, buffer, bufferOffset);
    // Serialize message field [min_angular_speed]
    bufferOffset = _serializer.float32(obj.min_angular_speed, buffer, bufferOffset);
    // Serialize message field [max_angular_speed]
    bufferOffset = _serializer.float32(obj.max_angular_speed, buffer, bufferOffset);
    // Serialize message field [angular_speed_scaling]
    bufferOffset = _serializer.float32(obj.angular_speed_scaling, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChassisInfo
    let len;
    let data = new ChassisInfo(null);
    // Deserialize message field [equipment]
    data.equipment = EquipmentCommon.deserialize(buffer, bufferOffset);
    // Deserialize message field [min_linear_speed]
    data.min_linear_speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [max_linear_speed]
    data.max_linear_speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [linear_speed_scaling]
    data.linear_speed_scaling = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [min_angular_speed]
    data.min_angular_speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [max_angular_speed]
    data.max_angular_speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [angular_speed_scaling]
    data.angular_speed_scaling = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += EquipmentCommon.getMessageSize(object.equipment);
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dg_msgs/ChassisInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b34e814c1edbbed19ddf136cbfcaad5f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new ChassisInfo(null);
    if (msg.equipment !== undefined) {
      resolved.equipment = EquipmentCommon.Resolve(msg.equipment)
    }
    else {
      resolved.equipment = new EquipmentCommon()
    }

    if (msg.min_linear_speed !== undefined) {
      resolved.min_linear_speed = msg.min_linear_speed;
    }
    else {
      resolved.min_linear_speed = 0.0
    }

    if (msg.max_linear_speed !== undefined) {
      resolved.max_linear_speed = msg.max_linear_speed;
    }
    else {
      resolved.max_linear_speed = 0.0
    }

    if (msg.linear_speed_scaling !== undefined) {
      resolved.linear_speed_scaling = msg.linear_speed_scaling;
    }
    else {
      resolved.linear_speed_scaling = 0.0
    }

    if (msg.min_angular_speed !== undefined) {
      resolved.min_angular_speed = msg.min_angular_speed;
    }
    else {
      resolved.min_angular_speed = 0.0
    }

    if (msg.max_angular_speed !== undefined) {
      resolved.max_angular_speed = msg.max_angular_speed;
    }
    else {
      resolved.max_angular_speed = 0.0
    }

    if (msg.angular_speed_scaling !== undefined) {
      resolved.angular_speed_scaling = msg.angular_speed_scaling;
    }
    else {
      resolved.angular_speed_scaling = 0.0
    }

    return resolved;
    }
};

module.exports = ChassisInfo;

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

class LiftingColumnInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.equipment = null;
      this.number = null;
    }
    else {
      if (initObj.hasOwnProperty('equipment')) {
        this.equipment = initObj.equipment
      }
      else {
        this.equipment = new EquipmentCommon();
      }
      if (initObj.hasOwnProperty('number')) {
        this.number = initObj.number
      }
      else {
        this.number = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LiftingColumnInfo
    // Serialize message field [equipment]
    bufferOffset = EquipmentCommon.serialize(obj.equipment, buffer, bufferOffset);
    // Serialize message field [number]
    bufferOffset = _serializer.string(obj.number, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LiftingColumnInfo
    let len;
    let data = new LiftingColumnInfo(null);
    // Deserialize message field [equipment]
    data.equipment = EquipmentCommon.deserialize(buffer, bufferOffset);
    // Deserialize message field [number]
    data.number = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += EquipmentCommon.getMessageSize(object.equipment);
    length += object.number.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dg_msgs/LiftingColumnInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a92e2b46f01bfa741cf5246e7733e6ae';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    EquipmentCommon equipment
    string number           # 设备组编号
    
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
    const resolved = new LiftingColumnInfo(null);
    if (msg.equipment !== undefined) {
      resolved.equipment = EquipmentCommon.Resolve(msg.equipment)
    }
    else {
      resolved.equipment = new EquipmentCommon()
    }

    if (msg.number !== undefined) {
      resolved.number = msg.number;
    }
    else {
      resolved.number = ''
    }

    return resolved;
    }
};

module.exports = LiftingColumnInfo;

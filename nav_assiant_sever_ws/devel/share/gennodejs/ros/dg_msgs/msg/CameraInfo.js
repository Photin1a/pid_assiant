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

class CameraInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.equipment = null;
      this.number = null;
      this.sn_number = null;
      this.type = null;
      this.intrinsics = null;
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
      if (initObj.hasOwnProperty('sn_number')) {
        this.sn_number = initObj.sn_number
      }
      else {
        this.sn_number = '';
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('intrinsics')) {
        this.intrinsics = initObj.intrinsics
      }
      else {
        this.intrinsics = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CameraInfo
    // Serialize message field [equipment]
    bufferOffset = EquipmentCommon.serialize(obj.equipment, buffer, bufferOffset);
    // Serialize message field [number]
    bufferOffset = _serializer.string(obj.number, buffer, bufferOffset);
    // Serialize message field [sn_number]
    bufferOffset = _serializer.string(obj.sn_number, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.int32(obj.type, buffer, bufferOffset);
    // Serialize message field [intrinsics]
    bufferOffset = _arraySerializer.float32(obj.intrinsics, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CameraInfo
    let len;
    let data = new CameraInfo(null);
    // Deserialize message field [equipment]
    data.equipment = EquipmentCommon.deserialize(buffer, bufferOffset);
    // Deserialize message field [number]
    data.number = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [sn_number]
    data.sn_number = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [intrinsics]
    data.intrinsics = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += EquipmentCommon.getMessageSize(object.equipment);
    length += object.number.length;
    length += object.sn_number.length;
    length += 4 * object.intrinsics.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dg_msgs/CameraInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0e1b22249cf44b930907f3d67d01392c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    EquipmentCommon equipment
    string number           # 设备组编号
    string sn_number
    int32 type
    float32[] intrinsics
    
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
    const resolved = new CameraInfo(null);
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

    if (msg.sn_number !== undefined) {
      resolved.sn_number = msg.sn_number;
    }
    else {
      resolved.sn_number = ''
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.intrinsics !== undefined) {
      resolved.intrinsics = msg.intrinsics;
    }
    else {
      resolved.intrinsics = []
    }

    return resolved;
    }
};

module.exports = CameraInfo;

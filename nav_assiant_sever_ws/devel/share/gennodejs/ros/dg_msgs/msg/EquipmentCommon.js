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

class EquipmentCommon {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.equipment_id = null;
      this.equipment_name = null;
      this.connected = null;
      this.connected_time = null;
      this.model = null;
      this.manufacturer = null;
    }
    else {
      if (initObj.hasOwnProperty('equipment_id')) {
        this.equipment_id = initObj.equipment_id
      }
      else {
        this.equipment_id = 0;
      }
      if (initObj.hasOwnProperty('equipment_name')) {
        this.equipment_name = initObj.equipment_name
      }
      else {
        this.equipment_name = '';
      }
      if (initObj.hasOwnProperty('connected')) {
        this.connected = initObj.connected
      }
      else {
        this.connected = false;
      }
      if (initObj.hasOwnProperty('connected_time')) {
        this.connected_time = initObj.connected_time
      }
      else {
        this.connected_time = 0;
      }
      if (initObj.hasOwnProperty('model')) {
        this.model = initObj.model
      }
      else {
        this.model = '';
      }
      if (initObj.hasOwnProperty('manufacturer')) {
        this.manufacturer = initObj.manufacturer
      }
      else {
        this.manufacturer = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EquipmentCommon
    // Serialize message field [equipment_id]
    bufferOffset = _serializer.int32(obj.equipment_id, buffer, bufferOffset);
    // Serialize message field [equipment_name]
    bufferOffset = _serializer.string(obj.equipment_name, buffer, bufferOffset);
    // Serialize message field [connected]
    bufferOffset = _serializer.bool(obj.connected, buffer, bufferOffset);
    // Serialize message field [connected_time]
    bufferOffset = _serializer.uint64(obj.connected_time, buffer, bufferOffset);
    // Serialize message field [model]
    bufferOffset = _serializer.string(obj.model, buffer, bufferOffset);
    // Serialize message field [manufacturer]
    bufferOffset = _serializer.string(obj.manufacturer, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EquipmentCommon
    let len;
    let data = new EquipmentCommon(null);
    // Deserialize message field [equipment_id]
    data.equipment_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [equipment_name]
    data.equipment_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [connected]
    data.connected = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [connected_time]
    data.connected_time = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [model]
    data.model = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [manufacturer]
    data.manufacturer = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.equipment_name.length;
    length += object.model.length;
    length += object.manufacturer.length;
    return length + 25;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dg_msgs/EquipmentCommon';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f069498b74d3b3fdeaf4df87eac49670';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new EquipmentCommon(null);
    if (msg.equipment_id !== undefined) {
      resolved.equipment_id = msg.equipment_id;
    }
    else {
      resolved.equipment_id = 0
    }

    if (msg.equipment_name !== undefined) {
      resolved.equipment_name = msg.equipment_name;
    }
    else {
      resolved.equipment_name = ''
    }

    if (msg.connected !== undefined) {
      resolved.connected = msg.connected;
    }
    else {
      resolved.connected = false
    }

    if (msg.connected_time !== undefined) {
      resolved.connected_time = msg.connected_time;
    }
    else {
      resolved.connected_time = 0
    }

    if (msg.model !== undefined) {
      resolved.model = msg.model;
    }
    else {
      resolved.model = ''
    }

    if (msg.manufacturer !== undefined) {
      resolved.manufacturer = msg.manufacturer;
    }
    else {
      resolved.manufacturer = ''
    }

    return resolved;
    }
};

module.exports = EquipmentCommon;

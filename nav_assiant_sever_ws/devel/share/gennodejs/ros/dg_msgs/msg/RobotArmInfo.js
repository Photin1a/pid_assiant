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

class RobotArmInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.equipment = null;
      this.number = null;
      this.state = null;
      this.enabled = null;
      this.protective_stop = null;
      this.emergency_stop = null;
      this.drag_status = null;
      this.recording = null;
      this.moving_stop = null;
      this.speed_ratio = null;
      this.error_status = null;
      this.error_msgs = null;
      this.payload = null;
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
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = 0;
      }
      if (initObj.hasOwnProperty('enabled')) {
        this.enabled = initObj.enabled
      }
      else {
        this.enabled = false;
      }
      if (initObj.hasOwnProperty('protective_stop')) {
        this.protective_stop = initObj.protective_stop
      }
      else {
        this.protective_stop = false;
      }
      if (initObj.hasOwnProperty('emergency_stop')) {
        this.emergency_stop = initObj.emergency_stop
      }
      else {
        this.emergency_stop = false;
      }
      if (initObj.hasOwnProperty('drag_status')) {
        this.drag_status = initObj.drag_status
      }
      else {
        this.drag_status = false;
      }
      if (initObj.hasOwnProperty('recording')) {
        this.recording = initObj.recording
      }
      else {
        this.recording = false;
      }
      if (initObj.hasOwnProperty('moving_stop')) {
        this.moving_stop = initObj.moving_stop
      }
      else {
        this.moving_stop = false;
      }
      if (initObj.hasOwnProperty('speed_ratio')) {
        this.speed_ratio = initObj.speed_ratio
      }
      else {
        this.speed_ratio = 0.0;
      }
      if (initObj.hasOwnProperty('error_status')) {
        this.error_status = initObj.error_status
      }
      else {
        this.error_status = false;
      }
      if (initObj.hasOwnProperty('error_msgs')) {
        this.error_msgs = initObj.error_msgs
      }
      else {
        this.error_msgs = [];
      }
      if (initObj.hasOwnProperty('payload')) {
        this.payload = initObj.payload
      }
      else {
        this.payload = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotArmInfo
    // Serialize message field [equipment]
    bufferOffset = EquipmentCommon.serialize(obj.equipment, buffer, bufferOffset);
    // Serialize message field [number]
    bufferOffset = _serializer.string(obj.number, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = _serializer.int32(obj.state, buffer, bufferOffset);
    // Serialize message field [enabled]
    bufferOffset = _serializer.bool(obj.enabled, buffer, bufferOffset);
    // Serialize message field [protective_stop]
    bufferOffset = _serializer.bool(obj.protective_stop, buffer, bufferOffset);
    // Serialize message field [emergency_stop]
    bufferOffset = _serializer.bool(obj.emergency_stop, buffer, bufferOffset);
    // Serialize message field [drag_status]
    bufferOffset = _serializer.bool(obj.drag_status, buffer, bufferOffset);
    // Serialize message field [recording]
    bufferOffset = _serializer.bool(obj.recording, buffer, bufferOffset);
    // Serialize message field [moving_stop]
    bufferOffset = _serializer.bool(obj.moving_stop, buffer, bufferOffset);
    // Serialize message field [speed_ratio]
    bufferOffset = _serializer.float64(obj.speed_ratio, buffer, bufferOffset);
    // Serialize message field [error_status]
    bufferOffset = _serializer.bool(obj.error_status, buffer, bufferOffset);
    // Serialize message field [error_msgs]
    bufferOffset = _arraySerializer.string(obj.error_msgs, buffer, bufferOffset, null);
    // Serialize message field [payload]
    bufferOffset = _serializer.string(obj.payload, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotArmInfo
    let len;
    let data = new RobotArmInfo(null);
    // Deserialize message field [equipment]
    data.equipment = EquipmentCommon.deserialize(buffer, bufferOffset);
    // Deserialize message field [number]
    data.number = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [enabled]
    data.enabled = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [protective_stop]
    data.protective_stop = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [emergency_stop]
    data.emergency_stop = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [drag_status]
    data.drag_status = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [recording]
    data.recording = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [moving_stop]
    data.moving_stop = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [speed_ratio]
    data.speed_ratio = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [error_status]
    data.error_status = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [error_msgs]
    data.error_msgs = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [payload]
    data.payload = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += EquipmentCommon.getMessageSize(object.equipment);
    length += object.number.length;
    object.error_msgs.forEach((val) => {
      length += 4 + val.length;
    });
    length += object.payload.length;
    return length + 31;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dg_msgs/RobotArmInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c14cafe5db166d12d88087baffc1cb1c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    EquipmentCommon equipment
    string number           # 设备组编号
    int32 state
    bool enabled            # 机械臂是否使能标志
    bool protective_stop    # 机械臂是否检测到碰撞
    bool emergency_stop     # 机械臂是否急停
    bool drag_status        # 机械臂是否处于拖拽状态
    bool recording          # 机械臂是否处于录制状态
    bool moving_stop        # 机械臂是否处于运动状态
    float64 speed_ratio     # 机械臂当前速度
    bool error_status       # 机械臂是否处于报错状态
    string[] error_msgs     # 机械臂的错误信息反馈
    string payload          # 自定义信息，用于存放不同型号机械臂信息
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
    const resolved = new RobotArmInfo(null);
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

    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = 0
    }

    if (msg.enabled !== undefined) {
      resolved.enabled = msg.enabled;
    }
    else {
      resolved.enabled = false
    }

    if (msg.protective_stop !== undefined) {
      resolved.protective_stop = msg.protective_stop;
    }
    else {
      resolved.protective_stop = false
    }

    if (msg.emergency_stop !== undefined) {
      resolved.emergency_stop = msg.emergency_stop;
    }
    else {
      resolved.emergency_stop = false
    }

    if (msg.drag_status !== undefined) {
      resolved.drag_status = msg.drag_status;
    }
    else {
      resolved.drag_status = false
    }

    if (msg.recording !== undefined) {
      resolved.recording = msg.recording;
    }
    else {
      resolved.recording = false
    }

    if (msg.moving_stop !== undefined) {
      resolved.moving_stop = msg.moving_stop;
    }
    else {
      resolved.moving_stop = false
    }

    if (msg.speed_ratio !== undefined) {
      resolved.speed_ratio = msg.speed_ratio;
    }
    else {
      resolved.speed_ratio = 0.0
    }

    if (msg.error_status !== undefined) {
      resolved.error_status = msg.error_status;
    }
    else {
      resolved.error_status = false
    }

    if (msg.error_msgs !== undefined) {
      resolved.error_msgs = msg.error_msgs;
    }
    else {
      resolved.error_msgs = []
    }

    if (msg.payload !== undefined) {
      resolved.payload = msg.payload;
    }
    else {
      resolved.payload = ''
    }

    return resolved;
    }
};

module.exports = RobotArmInfo;

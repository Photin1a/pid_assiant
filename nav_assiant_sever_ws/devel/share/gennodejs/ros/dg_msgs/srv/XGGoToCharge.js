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

class XGGoToChargeRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.allow_switch_map = null;
      this.charger_station = null;
    }
    else {
      if (initObj.hasOwnProperty('allow_switch_map')) {
        this.allow_switch_map = initObj.allow_switch_map
      }
      else {
        this.allow_switch_map = false;
      }
      if (initObj.hasOwnProperty('charger_station')) {
        this.charger_station = initObj.charger_station
      }
      else {
        this.charger_station = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type XGGoToChargeRequest
    // Serialize message field [allow_switch_map]
    bufferOffset = _serializer.bool(obj.allow_switch_map, buffer, bufferOffset);
    // Serialize message field [charger_station]
    bufferOffset = _serializer.string(obj.charger_station, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type XGGoToChargeRequest
    let len;
    let data = new XGGoToChargeRequest(null);
    // Deserialize message field [allow_switch_map]
    data.allow_switch_map = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [charger_station]
    data.charger_station = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.charger_station.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/XGGoToChargeRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '379711aea633b6198f8abc72fc557682';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 关键变量说明:
    # allow_switch_map: 是否允许切换地图，当车在坑道内的时候，底盘会对电梯进行调度
    
    bool allow_switch_map       # 【实验变量，暂未使用】是否允许自动切换地图并执行回充【严禁缺省】
    string charger_station      # 充电站站点名，如果缺省则会根据task_config的配置信息自动寻找最近的充电站
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new XGGoToChargeRequest(null);
    if (msg.allow_switch_map !== undefined) {
      resolved.allow_switch_map = msg.allow_switch_map;
    }
    else {
      resolved.allow_switch_map = false
    }

    if (msg.charger_station !== undefined) {
      resolved.charger_station = msg.charger_station;
    }
    else {
      resolved.charger_station = ''
    }

    return resolved;
    }
};

class XGGoToChargeResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.current_battery = null;
      this.is_charged = null;
      this.state_info = null;
    }
    else {
      if (initObj.hasOwnProperty('current_battery')) {
        this.current_battery = initObj.current_battery
      }
      else {
        this.current_battery = 0.0;
      }
      if (initObj.hasOwnProperty('is_charged')) {
        this.is_charged = initObj.is_charged
      }
      else {
        this.is_charged = false;
      }
      if (initObj.hasOwnProperty('state_info')) {
        this.state_info = initObj.state_info
      }
      else {
        this.state_info = new UniversalStateInfo();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type XGGoToChargeResponse
    // Serialize message field [current_battery]
    bufferOffset = _serializer.float32(obj.current_battery, buffer, bufferOffset);
    // Serialize message field [is_charged]
    bufferOffset = _serializer.bool(obj.is_charged, buffer, bufferOffset);
    // Serialize message field [state_info]
    bufferOffset = UniversalStateInfo.serialize(obj.state_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type XGGoToChargeResponse
    let len;
    let data = new XGGoToChargeResponse(null);
    // Deserialize message field [current_battery]
    data.current_battery = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [is_charged]
    data.is_charged = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [state_info]
    data.state_info = UniversalStateInfo.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += UniversalStateInfo.getMessageSize(object.state_info);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/XGGoToChargeResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6a552fffd4bfabf3dd1af7550e550ba9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 current_battery     
    bool is_charged
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
    const resolved = new XGGoToChargeResponse(null);
    if (msg.current_battery !== undefined) {
      resolved.current_battery = msg.current_battery;
    }
    else {
      resolved.current_battery = 0.0
    }

    if (msg.is_charged !== undefined) {
      resolved.is_charged = msg.is_charged;
    }
    else {
      resolved.is_charged = false
    }

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
  Request: XGGoToChargeRequest,
  Response: XGGoToChargeResponse,
  md5sum() { return '17a225b0388e872b5c33b08b315a6550'; },
  datatype() { return 'dg_msgs/XGGoToCharge'; }
};

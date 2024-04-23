// Auto-generated. Do not edit!

// (in-package dg_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SlideTableInfo = require('./SlideTableInfo.js');
let LiftingColumnInfo = require('./LiftingColumnInfo.js');
let RobotArmInfo = require('./RobotArmInfo.js');
let CameraInfo = require('./CameraInfo.js');

//-----------------------------------------------------------

class EquipmentGroup {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.number = null;
      this.slide_table = null;
      this.lifting_column = null;
      this.robot_arm = null;
      this.cameras = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('number')) {
        this.number = initObj.number
      }
      else {
        this.number = '';
      }
      if (initObj.hasOwnProperty('slide_table')) {
        this.slide_table = initObj.slide_table
      }
      else {
        this.slide_table = new SlideTableInfo();
      }
      if (initObj.hasOwnProperty('lifting_column')) {
        this.lifting_column = initObj.lifting_column
      }
      else {
        this.lifting_column = new LiftingColumnInfo();
      }
      if (initObj.hasOwnProperty('robot_arm')) {
        this.robot_arm = initObj.robot_arm
      }
      else {
        this.robot_arm = new RobotArmInfo();
      }
      if (initObj.hasOwnProperty('cameras')) {
        this.cameras = initObj.cameras
      }
      else {
        this.cameras = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EquipmentGroup
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [number]
    bufferOffset = _serializer.string(obj.number, buffer, bufferOffset);
    // Serialize message field [slide_table]
    bufferOffset = SlideTableInfo.serialize(obj.slide_table, buffer, bufferOffset);
    // Serialize message field [lifting_column]
    bufferOffset = LiftingColumnInfo.serialize(obj.lifting_column, buffer, bufferOffset);
    // Serialize message field [robot_arm]
    bufferOffset = RobotArmInfo.serialize(obj.robot_arm, buffer, bufferOffset);
    // Serialize message field [cameras]
    // Serialize the length for message field [cameras]
    bufferOffset = _serializer.uint32(obj.cameras.length, buffer, bufferOffset);
    obj.cameras.forEach((val) => {
      bufferOffset = CameraInfo.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EquipmentGroup
    let len;
    let data = new EquipmentGroup(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [number]
    data.number = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [slide_table]
    data.slide_table = SlideTableInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [lifting_column]
    data.lifting_column = LiftingColumnInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [robot_arm]
    data.robot_arm = RobotArmInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [cameras]
    // Deserialize array length for message field [cameras]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.cameras = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.cameras[i] = CameraInfo.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    length += object.number.length;
    length += SlideTableInfo.getMessageSize(object.slide_table);
    length += LiftingColumnInfo.getMessageSize(object.lifting_column);
    length += RobotArmInfo.getMessageSize(object.robot_arm);
    object.cameras.forEach((val) => {
      length += CameraInfo.getMessageSize(val);
    });
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dg_msgs/EquipmentGroup';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3f0794ee84d32d51d621caef93d18cf5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name             # 设备组名称
    string number           # 设备组编号
    SlideTableInfo slide_table
    LiftingColumnInfo lifting_column
    RobotArmInfo robot_arm
    CameraInfo[] cameras
    
    ================================================================================
    MSG: dg_msgs/SlideTableInfo
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
    
    ================================================================================
    MSG: dg_msgs/LiftingColumnInfo
    EquipmentCommon equipment
    string number           # 设备组编号
    
    ================================================================================
    MSG: dg_msgs/RobotArmInfo
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
    MSG: dg_msgs/CameraInfo
    EquipmentCommon equipment
    string number           # 设备组编号
    string sn_number
    int32 type
    float32[] intrinsics
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EquipmentGroup(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.number !== undefined) {
      resolved.number = msg.number;
    }
    else {
      resolved.number = ''
    }

    if (msg.slide_table !== undefined) {
      resolved.slide_table = SlideTableInfo.Resolve(msg.slide_table)
    }
    else {
      resolved.slide_table = new SlideTableInfo()
    }

    if (msg.lifting_column !== undefined) {
      resolved.lifting_column = LiftingColumnInfo.Resolve(msg.lifting_column)
    }
    else {
      resolved.lifting_column = new LiftingColumnInfo()
    }

    if (msg.robot_arm !== undefined) {
      resolved.robot_arm = RobotArmInfo.Resolve(msg.robot_arm)
    }
    else {
      resolved.robot_arm = new RobotArmInfo()
    }

    if (msg.cameras !== undefined) {
      resolved.cameras = new Array(msg.cameras.length);
      for (let i = 0; i < resolved.cameras.length; ++i) {
        resolved.cameras[i] = CameraInfo.Resolve(msg.cameras[i]);
      }
    }
    else {
      resolved.cameras = []
    }

    return resolved;
    }
};

module.exports = EquipmentGroup;

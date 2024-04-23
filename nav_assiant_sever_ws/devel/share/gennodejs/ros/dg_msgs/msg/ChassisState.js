// Auto-generated. Do not edit!

// (in-package dg_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MonitorState = require('./MonitorState.js');
let std_msgs = _finder('std_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class ChassisState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.chassis_state_json = null;
      this.chassis_type = null;
      this.chassis_name = null;
      this.battery = null;
      this.current_pose = null;
      this.is_charged = null;
      this.header = null;
      this.state_info = null;
    }
    else {
      if (initObj.hasOwnProperty('chassis_state_json')) {
        this.chassis_state_json = initObj.chassis_state_json
      }
      else {
        this.chassis_state_json = '';
      }
      if (initObj.hasOwnProperty('chassis_type')) {
        this.chassis_type = initObj.chassis_type
      }
      else {
        this.chassis_type = '';
      }
      if (initObj.hasOwnProperty('chassis_name')) {
        this.chassis_name = initObj.chassis_name
      }
      else {
        this.chassis_name = '';
      }
      if (initObj.hasOwnProperty('battery')) {
        this.battery = initObj.battery
      }
      else {
        this.battery = 0.0;
      }
      if (initObj.hasOwnProperty('current_pose')) {
        this.current_pose = initObj.current_pose
      }
      else {
        this.current_pose = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('is_charged')) {
        this.is_charged = initObj.is_charged
      }
      else {
        this.is_charged = false;
      }
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('state_info')) {
        this.state_info = initObj.state_info
      }
      else {
        this.state_info = new MonitorState();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ChassisState
    // Serialize message field [chassis_state_json]
    bufferOffset = _serializer.string(obj.chassis_state_json, buffer, bufferOffset);
    // Serialize message field [chassis_type]
    bufferOffset = _serializer.string(obj.chassis_type, buffer, bufferOffset);
    // Serialize message field [chassis_name]
    bufferOffset = _serializer.string(obj.chassis_name, buffer, bufferOffset);
    // Serialize message field [battery]
    bufferOffset = _serializer.float32(obj.battery, buffer, bufferOffset);
    // Serialize message field [current_pose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.current_pose, buffer, bufferOffset);
    // Serialize message field [is_charged]
    bufferOffset = _serializer.bool(obj.is_charged, buffer, bufferOffset);
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [state_info]
    bufferOffset = MonitorState.serialize(obj.state_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChassisState
    let len;
    let data = new ChassisState(null);
    // Deserialize message field [chassis_state_json]
    data.chassis_state_json = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [chassis_type]
    data.chassis_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [chassis_name]
    data.chassis_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [battery]
    data.battery = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [current_pose]
    data.current_pose = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [is_charged]
    data.is_charged = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [state_info]
    data.state_info = MonitorState.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.chassis_state_json.length;
    length += object.chassis_type.length;
    length += object.chassis_name.length;
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.current_pose);
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += MonitorState.getMessageSize(object.state_info);
    return length + 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dg_msgs/ChassisState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '75fcdbda3ff2c5f09f982d836b82cd48';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string chassis_state_json                    # 底盘各种参数的json文件
    string chassis_type                          # 底盘类型
    string chassis_name                          # 底盘名
    
    # [核心参数] - 是上面的子集
    float32 battery                              # 电池电量
    geometry_msgs/PoseStamped current_pose       # 底盘当前所在位置
    bool is_charged                              # 当前是否在充电
    
    Header header                                # 头部信息 - 主要使用的是时间戳
    dg_msgs/MonitorState state_info              # 状态信息
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: dg_msgs/MonitorState
    # 监控状态 - 当状态正常时错误码为0
    int32 error_code            # 错误码
    string additional_msgs       # 附加信息
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ChassisState(null);
    if (msg.chassis_state_json !== undefined) {
      resolved.chassis_state_json = msg.chassis_state_json;
    }
    else {
      resolved.chassis_state_json = ''
    }

    if (msg.chassis_type !== undefined) {
      resolved.chassis_type = msg.chassis_type;
    }
    else {
      resolved.chassis_type = ''
    }

    if (msg.chassis_name !== undefined) {
      resolved.chassis_name = msg.chassis_name;
    }
    else {
      resolved.chassis_name = ''
    }

    if (msg.battery !== undefined) {
      resolved.battery = msg.battery;
    }
    else {
      resolved.battery = 0.0
    }

    if (msg.current_pose !== undefined) {
      resolved.current_pose = geometry_msgs.msg.PoseStamped.Resolve(msg.current_pose)
    }
    else {
      resolved.current_pose = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.is_charged !== undefined) {
      resolved.is_charged = msg.is_charged;
    }
    else {
      resolved.is_charged = false
    }

    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.state_info !== undefined) {
      resolved.state_info = MonitorState.Resolve(msg.state_info)
    }
    else {
      resolved.state_info = new MonitorState()
    }

    return resolved;
    }
};

module.exports = ChassisState;

// Auto-generated. Do not edit!

// (in-package dg_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ROSTopicState = require('./ROSTopicState.js');
let GeneralHardwareAndNodeState = require('./GeneralHardwareAndNodeState.js');
let NetworkedDevicesState = require('./NetworkedDevicesState.js');
let CPUMemNetState = require('./CPUMemNetState.js');
let ChassisState = require('./ChassisState.js');
let UniversalStateInfo = require('./UniversalStateInfo.js');

//-----------------------------------------------------------

class HardwareAndNodeState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ros_topic_state = null;
      this.ros_node_state = null;
      this.ros_service_state = null;
      this.daemon_state = null;
      this.system_file_state = null;
      this.networked_device_state = null;
      this.cpu_mem_state = null;
      this.chassis_state = null;
      this.working_node_error = null;
      this.last_update_time = null;
    }
    else {
      if (initObj.hasOwnProperty('ros_topic_state')) {
        this.ros_topic_state = initObj.ros_topic_state
      }
      else {
        this.ros_topic_state = [];
      }
      if (initObj.hasOwnProperty('ros_node_state')) {
        this.ros_node_state = initObj.ros_node_state
      }
      else {
        this.ros_node_state = [];
      }
      if (initObj.hasOwnProperty('ros_service_state')) {
        this.ros_service_state = initObj.ros_service_state
      }
      else {
        this.ros_service_state = [];
      }
      if (initObj.hasOwnProperty('daemon_state')) {
        this.daemon_state = initObj.daemon_state
      }
      else {
        this.daemon_state = [];
      }
      if (initObj.hasOwnProperty('system_file_state')) {
        this.system_file_state = initObj.system_file_state
      }
      else {
        this.system_file_state = [];
      }
      if (initObj.hasOwnProperty('networked_device_state')) {
        this.networked_device_state = initObj.networked_device_state
      }
      else {
        this.networked_device_state = [];
      }
      if (initObj.hasOwnProperty('cpu_mem_state')) {
        this.cpu_mem_state = initObj.cpu_mem_state
      }
      else {
        this.cpu_mem_state = new CPUMemNetState();
      }
      if (initObj.hasOwnProperty('chassis_state')) {
        this.chassis_state = initObj.chassis_state
      }
      else {
        this.chassis_state = new ChassisState();
      }
      if (initObj.hasOwnProperty('working_node_error')) {
        this.working_node_error = initObj.working_node_error
      }
      else {
        this.working_node_error = [];
      }
      if (initObj.hasOwnProperty('last_update_time')) {
        this.last_update_time = initObj.last_update_time
      }
      else {
        this.last_update_time = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HardwareAndNodeState
    // Serialize message field [ros_topic_state]
    // Serialize the length for message field [ros_topic_state]
    bufferOffset = _serializer.uint32(obj.ros_topic_state.length, buffer, bufferOffset);
    obj.ros_topic_state.forEach((val) => {
      bufferOffset = ROSTopicState.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [ros_node_state]
    // Serialize the length for message field [ros_node_state]
    bufferOffset = _serializer.uint32(obj.ros_node_state.length, buffer, bufferOffset);
    obj.ros_node_state.forEach((val) => {
      bufferOffset = GeneralHardwareAndNodeState.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [ros_service_state]
    // Serialize the length for message field [ros_service_state]
    bufferOffset = _serializer.uint32(obj.ros_service_state.length, buffer, bufferOffset);
    obj.ros_service_state.forEach((val) => {
      bufferOffset = GeneralHardwareAndNodeState.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [daemon_state]
    // Serialize the length for message field [daemon_state]
    bufferOffset = _serializer.uint32(obj.daemon_state.length, buffer, bufferOffset);
    obj.daemon_state.forEach((val) => {
      bufferOffset = GeneralHardwareAndNodeState.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [system_file_state]
    // Serialize the length for message field [system_file_state]
    bufferOffset = _serializer.uint32(obj.system_file_state.length, buffer, bufferOffset);
    obj.system_file_state.forEach((val) => {
      bufferOffset = GeneralHardwareAndNodeState.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [networked_device_state]
    // Serialize the length for message field [networked_device_state]
    bufferOffset = _serializer.uint32(obj.networked_device_state.length, buffer, bufferOffset);
    obj.networked_device_state.forEach((val) => {
      bufferOffset = NetworkedDevicesState.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [cpu_mem_state]
    bufferOffset = CPUMemNetState.serialize(obj.cpu_mem_state, buffer, bufferOffset);
    // Serialize message field [chassis_state]
    bufferOffset = ChassisState.serialize(obj.chassis_state, buffer, bufferOffset);
    // Serialize message field [working_node_error]
    // Serialize the length for message field [working_node_error]
    bufferOffset = _serializer.uint32(obj.working_node_error.length, buffer, bufferOffset);
    obj.working_node_error.forEach((val) => {
      bufferOffset = UniversalStateInfo.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [last_update_time]
    bufferOffset = _serializer.string(obj.last_update_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HardwareAndNodeState
    let len;
    let data = new HardwareAndNodeState(null);
    // Deserialize message field [ros_topic_state]
    // Deserialize array length for message field [ros_topic_state]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.ros_topic_state = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.ros_topic_state[i] = ROSTopicState.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [ros_node_state]
    // Deserialize array length for message field [ros_node_state]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.ros_node_state = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.ros_node_state[i] = GeneralHardwareAndNodeState.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [ros_service_state]
    // Deserialize array length for message field [ros_service_state]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.ros_service_state = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.ros_service_state[i] = GeneralHardwareAndNodeState.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [daemon_state]
    // Deserialize array length for message field [daemon_state]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.daemon_state = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.daemon_state[i] = GeneralHardwareAndNodeState.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [system_file_state]
    // Deserialize array length for message field [system_file_state]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.system_file_state = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.system_file_state[i] = GeneralHardwareAndNodeState.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [networked_device_state]
    // Deserialize array length for message field [networked_device_state]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.networked_device_state = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.networked_device_state[i] = NetworkedDevicesState.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [cpu_mem_state]
    data.cpu_mem_state = CPUMemNetState.deserialize(buffer, bufferOffset);
    // Deserialize message field [chassis_state]
    data.chassis_state = ChassisState.deserialize(buffer, bufferOffset);
    // Deserialize message field [working_node_error]
    // Deserialize array length for message field [working_node_error]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.working_node_error = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.working_node_error[i] = UniversalStateInfo.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [last_update_time]
    data.last_update_time = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.ros_topic_state.forEach((val) => {
      length += ROSTopicState.getMessageSize(val);
    });
    object.ros_node_state.forEach((val) => {
      length += GeneralHardwareAndNodeState.getMessageSize(val);
    });
    object.ros_service_state.forEach((val) => {
      length += GeneralHardwareAndNodeState.getMessageSize(val);
    });
    object.daemon_state.forEach((val) => {
      length += GeneralHardwareAndNodeState.getMessageSize(val);
    });
    object.system_file_state.forEach((val) => {
      length += GeneralHardwareAndNodeState.getMessageSize(val);
    });
    object.networked_device_state.forEach((val) => {
      length += NetworkedDevicesState.getMessageSize(val);
    });
    length += CPUMemNetState.getMessageSize(object.cpu_mem_state);
    length += ChassisState.getMessageSize(object.chassis_state);
    object.working_node_error.forEach((val) => {
      length += UniversalStateInfo.getMessageSize(val);
    });
    length += object.last_update_time.length;
    return length + 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dg_msgs/HardwareAndNodeState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '563ccdb7932eed0e6e8e7fd05942ee29';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    dg_msgs/ROSTopicState[] ros_topic_state                 # ros话题状态
    
    dg_msgs/GeneralHardwareAndNodeState[] ros_node_state    # ros节点状态
    dg_msgs/GeneralHardwareAndNodeState[] ros_service_state # ros服务状态
    dg_msgs/GeneralHardwareAndNodeState[] daemon_state      # 守护内容状态
    dg_msgs/GeneralHardwareAndNodeState[] system_file_state # 系统文件状态
    
    dg_msgs/NetworkedDevicesState[] networked_device_state  # 联网设备状态
    
    dg_msgs/CPUMemNetState cpu_mem_state                    # cpu状态
    dg_msgs/ChassisState chassis_state                      # 底盘状态
    
    dg_msgs/UniversalStateInfo[] working_node_error         # 计算节点报错信息 - 只能包含对全局有影响的错误，如机械臂碰撞，底盘错误
    
    string last_update_time                                 # 最近一次诊断时间 - 格式 %Y-%m-%d %H:%M:%S
    ================================================================================
    MSG: dg_msgs/ROSTopicState
    # ros-topic 状态
    string topic_name               # 话题名
    string publish_node             # 发布节点  
    float32 publish_rate            # 当前发布频率
    float32 desire_rate             # 期望频率
    float32 bandwidth               # 当前占用网络带宽
    
    dg_msgs/MonitorState state_info         # 状态信息
    ================================================================================
    MSG: dg_msgs/MonitorState
    # 监控状态 - 当状态正常时错误码为0
    int32 error_code            # 错误码
    string additional_msgs       # 附加信息
    ================================================================================
    MSG: dg_msgs/GeneralHardwareAndNodeState
    # 通用的状态信息
    string name                 # 对象名
    
    dg_msgs/MonitorState state_info         # 状态信息
    ================================================================================
    MSG: dg_msgs/NetworkedDevicesState
    # 联网设备状态
    string device_name          # 设备名
    string ip_address           # 设备地址IPv4
    
    dg_msgs/MonitorState state_info         # 状态信息
    ================================================================================
    MSG: dg_msgs/CPUMemNetState
    # CPU                            # /proc/stat
    int32 cpu_count                  # cpu核心数
    float64 cpu_usage                # cpu利用率
    int32 cpu_load_1min              # cpu负载
    int32 cpu_load_5min
    int32 cpu_load_15min
    int32 process_count              # 当前进程数
    
    # Mem                            # None
    float32 mem_total                # 总内存大小 MB
    float32 mem_free                 # 当前可用内存大小 MB
    float32 mem_used_percent         # 内存使用率 %
    
    dg_msgs/DiskState[] disk_states  # 硬盘状态
    dg_msgs/NetworkCardState[] network_card_state  # 网卡状态
    
    ================================================================================
    MSG: dg_msgs/DiskState
    # 硬盘状态
    string disk_name            # 硬盘盘符
    float32 disk_total          # 硬盘总空间 GB
    float32 disk_used           # 已经使用的空间 GB
    float32 disk_avail          # 剩余可用空间
    float32 disk_used_percent   # 硬盘使用率
    
    dg_msgs/MonitorState state_info         # 状态信息
    ================================================================================
    MSG: dg_msgs/NetworkCardState
    # 网卡状态
    string network_card_name        # 网卡名
    string ip_address               # IP地址IPv4
    float32 net_upload              # 网卡上传速度 KB/s
    float32 net_download            # 网卡下载速度 KB/s
    
    dg_msgs/MonitorState state_info         # 状态信息
    ================================================================================
    MSG: dg_msgs/ChassisState
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
    const resolved = new HardwareAndNodeState(null);
    if (msg.ros_topic_state !== undefined) {
      resolved.ros_topic_state = new Array(msg.ros_topic_state.length);
      for (let i = 0; i < resolved.ros_topic_state.length; ++i) {
        resolved.ros_topic_state[i] = ROSTopicState.Resolve(msg.ros_topic_state[i]);
      }
    }
    else {
      resolved.ros_topic_state = []
    }

    if (msg.ros_node_state !== undefined) {
      resolved.ros_node_state = new Array(msg.ros_node_state.length);
      for (let i = 0; i < resolved.ros_node_state.length; ++i) {
        resolved.ros_node_state[i] = GeneralHardwareAndNodeState.Resolve(msg.ros_node_state[i]);
      }
    }
    else {
      resolved.ros_node_state = []
    }

    if (msg.ros_service_state !== undefined) {
      resolved.ros_service_state = new Array(msg.ros_service_state.length);
      for (let i = 0; i < resolved.ros_service_state.length; ++i) {
        resolved.ros_service_state[i] = GeneralHardwareAndNodeState.Resolve(msg.ros_service_state[i]);
      }
    }
    else {
      resolved.ros_service_state = []
    }

    if (msg.daemon_state !== undefined) {
      resolved.daemon_state = new Array(msg.daemon_state.length);
      for (let i = 0; i < resolved.daemon_state.length; ++i) {
        resolved.daemon_state[i] = GeneralHardwareAndNodeState.Resolve(msg.daemon_state[i]);
      }
    }
    else {
      resolved.daemon_state = []
    }

    if (msg.system_file_state !== undefined) {
      resolved.system_file_state = new Array(msg.system_file_state.length);
      for (let i = 0; i < resolved.system_file_state.length; ++i) {
        resolved.system_file_state[i] = GeneralHardwareAndNodeState.Resolve(msg.system_file_state[i]);
      }
    }
    else {
      resolved.system_file_state = []
    }

    if (msg.networked_device_state !== undefined) {
      resolved.networked_device_state = new Array(msg.networked_device_state.length);
      for (let i = 0; i < resolved.networked_device_state.length; ++i) {
        resolved.networked_device_state[i] = NetworkedDevicesState.Resolve(msg.networked_device_state[i]);
      }
    }
    else {
      resolved.networked_device_state = []
    }

    if (msg.cpu_mem_state !== undefined) {
      resolved.cpu_mem_state = CPUMemNetState.Resolve(msg.cpu_mem_state)
    }
    else {
      resolved.cpu_mem_state = new CPUMemNetState()
    }

    if (msg.chassis_state !== undefined) {
      resolved.chassis_state = ChassisState.Resolve(msg.chassis_state)
    }
    else {
      resolved.chassis_state = new ChassisState()
    }

    if (msg.working_node_error !== undefined) {
      resolved.working_node_error = new Array(msg.working_node_error.length);
      for (let i = 0; i < resolved.working_node_error.length; ++i) {
        resolved.working_node_error[i] = UniversalStateInfo.Resolve(msg.working_node_error[i]);
      }
    }
    else {
      resolved.working_node_error = []
    }

    if (msg.last_update_time !== undefined) {
      resolved.last_update_time = msg.last_update_time;
    }
    else {
      resolved.last_update_time = ''
    }

    return resolved;
    }
};

module.exports = HardwareAndNodeState;

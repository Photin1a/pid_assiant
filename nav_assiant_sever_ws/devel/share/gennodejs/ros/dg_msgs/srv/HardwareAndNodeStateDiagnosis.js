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

let HardwareAndNodeState = require('../msg/HardwareAndNodeState.js');

//-----------------------------------------------------------

class HardwareAndNodeStateDiagnosisRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.diagnosis = null;
    }
    else {
      if (initObj.hasOwnProperty('diagnosis')) {
        this.diagnosis = initObj.diagnosis
      }
      else {
        this.diagnosis = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HardwareAndNodeStateDiagnosisRequest
    // Serialize message field [diagnosis]
    bufferOffset = _serializer.string(obj.diagnosis, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HardwareAndNodeStateDiagnosisRequest
    let len;
    let data = new HardwareAndNodeStateDiagnosisRequest(null);
    // Deserialize message field [diagnosis]
    data.diagnosis = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.diagnosis.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/HardwareAndNodeStateDiagnosisRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e520ad3b90ea4f836ac0d065408a1661';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string diagnosis            # 需要诊断的内容，当为空时则执行全部诊断
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HardwareAndNodeStateDiagnosisRequest(null);
    if (msg.diagnosis !== undefined) {
      resolved.diagnosis = msg.diagnosis;
    }
    else {
      resolved.diagnosis = ''
    }

    return resolved;
    }
};

class HardwareAndNodeStateDiagnosisResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = new HardwareAndNodeState();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HardwareAndNodeStateDiagnosisResponse
    // Serialize message field [state]
    bufferOffset = HardwareAndNodeState.serialize(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HardwareAndNodeStateDiagnosisResponse
    let len;
    let data = new HardwareAndNodeStateDiagnosisResponse(null);
    // Deserialize message field [state]
    data.state = HardwareAndNodeState.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += HardwareAndNodeState.getMessageSize(object.state);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/HardwareAndNodeStateDiagnosisResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fe9414ee59550bcc039160a486a8d031';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    dg_msgs/HardwareAndNodeState state
    
    ================================================================================
    MSG: dg_msgs/HardwareAndNodeState
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
    const resolved = new HardwareAndNodeStateDiagnosisResponse(null);
    if (msg.state !== undefined) {
      resolved.state = HardwareAndNodeState.Resolve(msg.state)
    }
    else {
      resolved.state = new HardwareAndNodeState()
    }

    return resolved;
    }
};

module.exports = {
  Request: HardwareAndNodeStateDiagnosisRequest,
  Response: HardwareAndNodeStateDiagnosisResponse,
  md5sum() { return 'd08725ae8368788fa09714c61c612f6c'; },
  datatype() { return 'dg_msgs/HardwareAndNodeStateDiagnosis'; }
};

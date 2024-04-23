// Auto-generated. Do not edit!

// (in-package dg_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DiskState = require('./DiskState.js');
let NetworkCardState = require('./NetworkCardState.js');

//-----------------------------------------------------------

class CPUMemNetState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cpu_count = null;
      this.cpu_usage = null;
      this.cpu_load_1min = null;
      this.cpu_load_5min = null;
      this.cpu_load_15min = null;
      this.process_count = null;
      this.mem_total = null;
      this.mem_free = null;
      this.mem_used_percent = null;
      this.disk_states = null;
      this.network_card_state = null;
    }
    else {
      if (initObj.hasOwnProperty('cpu_count')) {
        this.cpu_count = initObj.cpu_count
      }
      else {
        this.cpu_count = 0;
      }
      if (initObj.hasOwnProperty('cpu_usage')) {
        this.cpu_usage = initObj.cpu_usage
      }
      else {
        this.cpu_usage = 0.0;
      }
      if (initObj.hasOwnProperty('cpu_load_1min')) {
        this.cpu_load_1min = initObj.cpu_load_1min
      }
      else {
        this.cpu_load_1min = 0;
      }
      if (initObj.hasOwnProperty('cpu_load_5min')) {
        this.cpu_load_5min = initObj.cpu_load_5min
      }
      else {
        this.cpu_load_5min = 0;
      }
      if (initObj.hasOwnProperty('cpu_load_15min')) {
        this.cpu_load_15min = initObj.cpu_load_15min
      }
      else {
        this.cpu_load_15min = 0;
      }
      if (initObj.hasOwnProperty('process_count')) {
        this.process_count = initObj.process_count
      }
      else {
        this.process_count = 0;
      }
      if (initObj.hasOwnProperty('mem_total')) {
        this.mem_total = initObj.mem_total
      }
      else {
        this.mem_total = 0.0;
      }
      if (initObj.hasOwnProperty('mem_free')) {
        this.mem_free = initObj.mem_free
      }
      else {
        this.mem_free = 0.0;
      }
      if (initObj.hasOwnProperty('mem_used_percent')) {
        this.mem_used_percent = initObj.mem_used_percent
      }
      else {
        this.mem_used_percent = 0.0;
      }
      if (initObj.hasOwnProperty('disk_states')) {
        this.disk_states = initObj.disk_states
      }
      else {
        this.disk_states = [];
      }
      if (initObj.hasOwnProperty('network_card_state')) {
        this.network_card_state = initObj.network_card_state
      }
      else {
        this.network_card_state = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CPUMemNetState
    // Serialize message field [cpu_count]
    bufferOffset = _serializer.int32(obj.cpu_count, buffer, bufferOffset);
    // Serialize message field [cpu_usage]
    bufferOffset = _serializer.float64(obj.cpu_usage, buffer, bufferOffset);
    // Serialize message field [cpu_load_1min]
    bufferOffset = _serializer.int32(obj.cpu_load_1min, buffer, bufferOffset);
    // Serialize message field [cpu_load_5min]
    bufferOffset = _serializer.int32(obj.cpu_load_5min, buffer, bufferOffset);
    // Serialize message field [cpu_load_15min]
    bufferOffset = _serializer.int32(obj.cpu_load_15min, buffer, bufferOffset);
    // Serialize message field [process_count]
    bufferOffset = _serializer.int32(obj.process_count, buffer, bufferOffset);
    // Serialize message field [mem_total]
    bufferOffset = _serializer.float32(obj.mem_total, buffer, bufferOffset);
    // Serialize message field [mem_free]
    bufferOffset = _serializer.float32(obj.mem_free, buffer, bufferOffset);
    // Serialize message field [mem_used_percent]
    bufferOffset = _serializer.float32(obj.mem_used_percent, buffer, bufferOffset);
    // Serialize message field [disk_states]
    // Serialize the length for message field [disk_states]
    bufferOffset = _serializer.uint32(obj.disk_states.length, buffer, bufferOffset);
    obj.disk_states.forEach((val) => {
      bufferOffset = DiskState.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [network_card_state]
    // Serialize the length for message field [network_card_state]
    bufferOffset = _serializer.uint32(obj.network_card_state.length, buffer, bufferOffset);
    obj.network_card_state.forEach((val) => {
      bufferOffset = NetworkCardState.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CPUMemNetState
    let len;
    let data = new CPUMemNetState(null);
    // Deserialize message field [cpu_count]
    data.cpu_count = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [cpu_usage]
    data.cpu_usage = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cpu_load_1min]
    data.cpu_load_1min = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [cpu_load_5min]
    data.cpu_load_5min = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [cpu_load_15min]
    data.cpu_load_15min = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [process_count]
    data.process_count = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [mem_total]
    data.mem_total = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [mem_free]
    data.mem_free = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [mem_used_percent]
    data.mem_used_percent = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [disk_states]
    // Deserialize array length for message field [disk_states]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.disk_states = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.disk_states[i] = DiskState.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [network_card_state]
    // Deserialize array length for message field [network_card_state]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.network_card_state = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.network_card_state[i] = NetworkCardState.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.disk_states.forEach((val) => {
      length += DiskState.getMessageSize(val);
    });
    object.network_card_state.forEach((val) => {
      length += NetworkCardState.getMessageSize(val);
    });
    return length + 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dg_msgs/CPUMemNetState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '559499aa6a41a1eeb7002f1b884a4b82';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    MSG: dg_msgs/MonitorState
    # 监控状态 - 当状态正常时错误码为0
    int32 error_code            # 错误码
    string additional_msgs       # 附加信息
    ================================================================================
    MSG: dg_msgs/NetworkCardState
    # 网卡状态
    string network_card_name        # 网卡名
    string ip_address               # IP地址IPv4
    float32 net_upload              # 网卡上传速度 KB/s
    float32 net_download            # 网卡下载速度 KB/s
    
    dg_msgs/MonitorState state_info         # 状态信息
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CPUMemNetState(null);
    if (msg.cpu_count !== undefined) {
      resolved.cpu_count = msg.cpu_count;
    }
    else {
      resolved.cpu_count = 0
    }

    if (msg.cpu_usage !== undefined) {
      resolved.cpu_usage = msg.cpu_usage;
    }
    else {
      resolved.cpu_usage = 0.0
    }

    if (msg.cpu_load_1min !== undefined) {
      resolved.cpu_load_1min = msg.cpu_load_1min;
    }
    else {
      resolved.cpu_load_1min = 0
    }

    if (msg.cpu_load_5min !== undefined) {
      resolved.cpu_load_5min = msg.cpu_load_5min;
    }
    else {
      resolved.cpu_load_5min = 0
    }

    if (msg.cpu_load_15min !== undefined) {
      resolved.cpu_load_15min = msg.cpu_load_15min;
    }
    else {
      resolved.cpu_load_15min = 0
    }

    if (msg.process_count !== undefined) {
      resolved.process_count = msg.process_count;
    }
    else {
      resolved.process_count = 0
    }

    if (msg.mem_total !== undefined) {
      resolved.mem_total = msg.mem_total;
    }
    else {
      resolved.mem_total = 0.0
    }

    if (msg.mem_free !== undefined) {
      resolved.mem_free = msg.mem_free;
    }
    else {
      resolved.mem_free = 0.0
    }

    if (msg.mem_used_percent !== undefined) {
      resolved.mem_used_percent = msg.mem_used_percent;
    }
    else {
      resolved.mem_used_percent = 0.0
    }

    if (msg.disk_states !== undefined) {
      resolved.disk_states = new Array(msg.disk_states.length);
      for (let i = 0; i < resolved.disk_states.length; ++i) {
        resolved.disk_states[i] = DiskState.Resolve(msg.disk_states[i]);
      }
    }
    else {
      resolved.disk_states = []
    }

    if (msg.network_card_state !== undefined) {
      resolved.network_card_state = new Array(msg.network_card_state.length);
      for (let i = 0; i < resolved.network_card_state.length; ++i) {
        resolved.network_card_state[i] = NetworkCardState.Resolve(msg.network_card_state[i]);
      }
    }
    else {
      resolved.network_card_state = []
    }

    return resolved;
    }
};

module.exports = CPUMemNetState;

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
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

class LidarDataCollectRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.topic_lidar = null;
      this.collect_frames = null;
      this.data_type = null;
      this.save_path = null;
    }
    else {
      if (initObj.hasOwnProperty('topic_lidar')) {
        this.topic_lidar = initObj.topic_lidar
      }
      else {
        this.topic_lidar = '';
      }
      if (initObj.hasOwnProperty('collect_frames')) {
        this.collect_frames = initObj.collect_frames
      }
      else {
        this.collect_frames = 0;
      }
      if (initObj.hasOwnProperty('data_type')) {
        this.data_type = initObj.data_type
      }
      else {
        this.data_type = false;
      }
      if (initObj.hasOwnProperty('save_path')) {
        this.save_path = initObj.save_path
      }
      else {
        this.save_path = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LidarDataCollectRequest
    // Serialize message field [topic_lidar]
    bufferOffset = _serializer.string(obj.topic_lidar, buffer, bufferOffset);
    // Serialize message field [collect_frames]
    bufferOffset = _serializer.int32(obj.collect_frames, buffer, bufferOffset);
    // Serialize message field [data_type]
    bufferOffset = _serializer.bool(obj.data_type, buffer, bufferOffset);
    // Serialize message field [save_path]
    bufferOffset = _serializer.string(obj.save_path, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LidarDataCollectRequest
    let len;
    let data = new LidarDataCollectRequest(null);
    // Deserialize message field [topic_lidar]
    data.topic_lidar = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [collect_frames]
    data.collect_frames = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [data_type]
    data.data_type = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [save_path]
    data.save_path = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.topic_lidar.length;
    length += object.save_path.length;
    return length + 13;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/LidarDataCollectRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dad5d90debc761a32f2a17a1e7a0acd5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string topic_lidar # 雷达话题名
    int32 collect_frames # 需要采集的帧数
    bool data_type # 雷达数据类型: 0: 默认livox CustomMsg, 1: ros pcd2
    string save_path # 保存路径
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LidarDataCollectRequest(null);
    if (msg.topic_lidar !== undefined) {
      resolved.topic_lidar = msg.topic_lidar;
    }
    else {
      resolved.topic_lidar = ''
    }

    if (msg.collect_frames !== undefined) {
      resolved.collect_frames = msg.collect_frames;
    }
    else {
      resolved.collect_frames = 0
    }

    if (msg.data_type !== undefined) {
      resolved.data_type = msg.data_type;
    }
    else {
      resolved.data_type = false
    }

    if (msg.save_path !== undefined) {
      resolved.save_path = msg.save_path;
    }
    else {
      resolved.save_path = ''
    }

    return resolved;
    }
};

class LidarDataCollectResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pcd_collect = null;
      this.state_info = null;
    }
    else {
      if (initObj.hasOwnProperty('pcd_collect')) {
        this.pcd_collect = initObj.pcd_collect
      }
      else {
        this.pcd_collect = new sensor_msgs.msg.PointCloud2();
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
    // Serializes a message object of type LidarDataCollectResponse
    // Serialize message field [pcd_collect]
    bufferOffset = sensor_msgs.msg.PointCloud2.serialize(obj.pcd_collect, buffer, bufferOffset);
    // Serialize message field [state_info]
    bufferOffset = UniversalStateInfo.serialize(obj.state_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LidarDataCollectResponse
    let len;
    let data = new LidarDataCollectResponse(null);
    // Deserialize message field [pcd_collect]
    data.pcd_collect = sensor_msgs.msg.PointCloud2.deserialize(buffer, bufferOffset);
    // Deserialize message field [state_info]
    data.state_info = UniversalStateInfo.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.PointCloud2.getMessageSize(object.pcd_collect);
    length += UniversalStateInfo.getMessageSize(object.state_info);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/LidarDataCollectResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd00846f4657aada0af2eae94a40ba04d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    sensor_msgs/PointCloud2  pcd_collect # 返回采集的点云
    UniversalStateInfo  state_info # 返回采集状态信息
    
    ================================================================================
    MSG: sensor_msgs/PointCloud2
    # This message holds a collection of N-dimensional points, which may
    # contain additional information such as normals, intensity, etc. The
    # point data is stored as a binary blob, its layout described by the
    # contents of the "fields" array.
    
    # The point cloud data may be organized 2d (image-like) or 1d
    # (unordered). Point clouds organized as 2d images may be produced by
    # camera depth sensors such as stereo or time-of-flight.
    
    # Time of sensor data acquisition, and the coordinate frame ID (for 3d
    # points).
    Header header
    
    # 2D structure of the point cloud. If the cloud is unordered, height is
    # 1 and width is the length of the point cloud.
    uint32 height
    uint32 width
    
    # Describes the channels and their layout in the binary data blob.
    PointField[] fields
    
    bool    is_bigendian # Is this data bigendian?
    uint32  point_step   # Length of a point in bytes
    uint32  row_step     # Length of a row in bytes
    uint8[] data         # Actual point data, size is (row_step*height)
    
    bool is_dense        # True if there are no invalid points
    
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
    MSG: sensor_msgs/PointField
    # This message holds the description of one point entry in the
    # PointCloud2 message format.
    uint8 INT8    = 1
    uint8 UINT8   = 2
    uint8 INT16   = 3
    uint8 UINT16  = 4
    uint8 INT32   = 5
    uint8 UINT32  = 6
    uint8 FLOAT32 = 7
    uint8 FLOAT64 = 8
    
    string name      # Name of field
    uint32 offset    # Offset from start of point struct
    uint8  datatype  # Datatype enumeration, see above
    uint32 count     # How many elements in the field
    
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
    const resolved = new LidarDataCollectResponse(null);
    if (msg.pcd_collect !== undefined) {
      resolved.pcd_collect = sensor_msgs.msg.PointCloud2.Resolve(msg.pcd_collect)
    }
    else {
      resolved.pcd_collect = new sensor_msgs.msg.PointCloud2()
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
  Request: LidarDataCollectRequest,
  Response: LidarDataCollectResponse,
  md5sum() { return '590a098be25ae6967e808f039349d40f'; },
  datatype() { return 'dg_msgs/LidarDataCollect'; }
};

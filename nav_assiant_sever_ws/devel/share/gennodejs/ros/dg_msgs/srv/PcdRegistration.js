// Auto-generated. Do not edit!

// (in-package dg_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CropBox = require('../msg/CropBox.js');
let geometry_msgs = _finder('geometry_msgs');
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

let UniversalStateInfo = require('../msg/UniversalStateInfo.js');

//-----------------------------------------------------------

class PcdRegistrationRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.data_collect = null;
      this.topic_lidar = null;
      this.collection_frames = null;
      this.path_source = null;
      this.path_target = null;
      this.pcd_target = null;
      this.statistical_filter_source = null;
      this.statistical_filter_target = null;
      this.use_fpfh = null;
      this.crop = null;
      this.cropbox_source = null;
      this.cropbox_target = null;
      this.init_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('data_collect')) {
        this.data_collect = initObj.data_collect
      }
      else {
        this.data_collect = 0;
      }
      if (initObj.hasOwnProperty('topic_lidar')) {
        this.topic_lidar = initObj.topic_lidar
      }
      else {
        this.topic_lidar = '';
      }
      if (initObj.hasOwnProperty('collection_frames')) {
        this.collection_frames = initObj.collection_frames
      }
      else {
        this.collection_frames = 0;
      }
      if (initObj.hasOwnProperty('path_source')) {
        this.path_source = initObj.path_source
      }
      else {
        this.path_source = '';
      }
      if (initObj.hasOwnProperty('path_target')) {
        this.path_target = initObj.path_target
      }
      else {
        this.path_target = '';
      }
      if (initObj.hasOwnProperty('pcd_target')) {
        this.pcd_target = initObj.pcd_target
      }
      else {
        this.pcd_target = new sensor_msgs.msg.PointCloud2();
      }
      if (initObj.hasOwnProperty('statistical_filter_source')) {
        this.statistical_filter_source = initObj.statistical_filter_source
      }
      else {
        this.statistical_filter_source = false;
      }
      if (initObj.hasOwnProperty('statistical_filter_target')) {
        this.statistical_filter_target = initObj.statistical_filter_target
      }
      else {
        this.statistical_filter_target = false;
      }
      if (initObj.hasOwnProperty('use_fpfh')) {
        this.use_fpfh = initObj.use_fpfh
      }
      else {
        this.use_fpfh = false;
      }
      if (initObj.hasOwnProperty('crop')) {
        this.crop = initObj.crop
      }
      else {
        this.crop = false;
      }
      if (initObj.hasOwnProperty('cropbox_source')) {
        this.cropbox_source = initObj.cropbox_source
      }
      else {
        this.cropbox_source = new CropBox();
      }
      if (initObj.hasOwnProperty('cropbox_target')) {
        this.cropbox_target = initObj.cropbox_target
      }
      else {
        this.cropbox_target = new CropBox();
      }
      if (initObj.hasOwnProperty('init_pose')) {
        this.init_pose = initObj.init_pose
      }
      else {
        this.init_pose = new geometry_msgs.msg.Transform();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PcdRegistrationRequest
    // Serialize message field [data_collect]
    bufferOffset = _serializer.int32(obj.data_collect, buffer, bufferOffset);
    // Serialize message field [topic_lidar]
    bufferOffset = _serializer.string(obj.topic_lidar, buffer, bufferOffset);
    // Serialize message field [collection_frames]
    bufferOffset = _serializer.int32(obj.collection_frames, buffer, bufferOffset);
    // Serialize message field [path_source]
    bufferOffset = _serializer.string(obj.path_source, buffer, bufferOffset);
    // Serialize message field [path_target]
    bufferOffset = _serializer.string(obj.path_target, buffer, bufferOffset);
    // Serialize message field [pcd_target]
    bufferOffset = sensor_msgs.msg.PointCloud2.serialize(obj.pcd_target, buffer, bufferOffset);
    // Serialize message field [statistical_filter_source]
    bufferOffset = _serializer.bool(obj.statistical_filter_source, buffer, bufferOffset);
    // Serialize message field [statistical_filter_target]
    bufferOffset = _serializer.bool(obj.statistical_filter_target, buffer, bufferOffset);
    // Serialize message field [use_fpfh]
    bufferOffset = _serializer.bool(obj.use_fpfh, buffer, bufferOffset);
    // Serialize message field [crop]
    bufferOffset = _serializer.bool(obj.crop, buffer, bufferOffset);
    // Serialize message field [cropbox_source]
    bufferOffset = CropBox.serialize(obj.cropbox_source, buffer, bufferOffset);
    // Serialize message field [cropbox_target]
    bufferOffset = CropBox.serialize(obj.cropbox_target, buffer, bufferOffset);
    // Serialize message field [init_pose]
    bufferOffset = geometry_msgs.msg.Transform.serialize(obj.init_pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PcdRegistrationRequest
    let len;
    let data = new PcdRegistrationRequest(null);
    // Deserialize message field [data_collect]
    data.data_collect = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [topic_lidar]
    data.topic_lidar = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [collection_frames]
    data.collection_frames = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [path_source]
    data.path_source = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [path_target]
    data.path_target = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pcd_target]
    data.pcd_target = sensor_msgs.msg.PointCloud2.deserialize(buffer, bufferOffset);
    // Deserialize message field [statistical_filter_source]
    data.statistical_filter_source = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [statistical_filter_target]
    data.statistical_filter_target = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [use_fpfh]
    data.use_fpfh = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [crop]
    data.crop = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [cropbox_source]
    data.cropbox_source = CropBox.deserialize(buffer, bufferOffset);
    // Deserialize message field [cropbox_target]
    data.cropbox_target = CropBox.deserialize(buffer, bufferOffset);
    // Deserialize message field [init_pose]
    data.init_pose = geometry_msgs.msg.Transform.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.topic_lidar.length;
    length += object.path_source.length;
    length += object.path_target.length;
    length += sensor_msgs.msg.PointCloud2.getMessageSize(object.pcd_target);
    length += CropBox.getMessageSize(object.cropbox_source);
    length += CropBox.getMessageSize(object.cropbox_target);
    return length + 80;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/PcdRegistrationRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5ca9bf47f7157e39aff94ce7969f406a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 data_collect
    string topic_lidar
    int32 collection_frames
    string path_source
    string path_target
    sensor_msgs/PointCloud2 pcd_target
    bool statistical_filter_source
    bool statistical_filter_target
    bool use_fpfh
    bool crop
    CropBox cropbox_source
    CropBox cropbox_target
    geometry_msgs/Transform init_pose
    
    
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
    MSG: dg_msgs/CropBox
    float32[] center_
    float32[] R_euler
    float32[] extent_
    ================================================================================
    MSG: geometry_msgs/Transform
    # This represents the transform between two coordinate frames in free space.
    
    Vector3 translation
    Quaternion rotation
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PcdRegistrationRequest(null);
    if (msg.data_collect !== undefined) {
      resolved.data_collect = msg.data_collect;
    }
    else {
      resolved.data_collect = 0
    }

    if (msg.topic_lidar !== undefined) {
      resolved.topic_lidar = msg.topic_lidar;
    }
    else {
      resolved.topic_lidar = ''
    }

    if (msg.collection_frames !== undefined) {
      resolved.collection_frames = msg.collection_frames;
    }
    else {
      resolved.collection_frames = 0
    }

    if (msg.path_source !== undefined) {
      resolved.path_source = msg.path_source;
    }
    else {
      resolved.path_source = ''
    }

    if (msg.path_target !== undefined) {
      resolved.path_target = msg.path_target;
    }
    else {
      resolved.path_target = ''
    }

    if (msg.pcd_target !== undefined) {
      resolved.pcd_target = sensor_msgs.msg.PointCloud2.Resolve(msg.pcd_target)
    }
    else {
      resolved.pcd_target = new sensor_msgs.msg.PointCloud2()
    }

    if (msg.statistical_filter_source !== undefined) {
      resolved.statistical_filter_source = msg.statistical_filter_source;
    }
    else {
      resolved.statistical_filter_source = false
    }

    if (msg.statistical_filter_target !== undefined) {
      resolved.statistical_filter_target = msg.statistical_filter_target;
    }
    else {
      resolved.statistical_filter_target = false
    }

    if (msg.use_fpfh !== undefined) {
      resolved.use_fpfh = msg.use_fpfh;
    }
    else {
      resolved.use_fpfh = false
    }

    if (msg.crop !== undefined) {
      resolved.crop = msg.crop;
    }
    else {
      resolved.crop = false
    }

    if (msg.cropbox_source !== undefined) {
      resolved.cropbox_source = CropBox.Resolve(msg.cropbox_source)
    }
    else {
      resolved.cropbox_source = new CropBox()
    }

    if (msg.cropbox_target !== undefined) {
      resolved.cropbox_target = CropBox.Resolve(msg.cropbox_target)
    }
    else {
      resolved.cropbox_target = new CropBox()
    }

    if (msg.init_pose !== undefined) {
      resolved.init_pose = geometry_msgs.msg.Transform.Resolve(msg.init_pose)
    }
    else {
      resolved.init_pose = new geometry_msgs.msg.Transform()
    }

    return resolved;
    }
};

class PcdRegistrationResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.transform = null;
      this.state_info = null;
    }
    else {
      if (initObj.hasOwnProperty('transform')) {
        this.transform = initObj.transform
      }
      else {
        this.transform = new geometry_msgs.msg.Transform();
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
    // Serializes a message object of type PcdRegistrationResponse
    // Serialize message field [transform]
    bufferOffset = geometry_msgs.msg.Transform.serialize(obj.transform, buffer, bufferOffset);
    // Serialize message field [state_info]
    bufferOffset = UniversalStateInfo.serialize(obj.state_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PcdRegistrationResponse
    let len;
    let data = new PcdRegistrationResponse(null);
    // Deserialize message field [transform]
    data.transform = geometry_msgs.msg.Transform.deserialize(buffer, bufferOffset);
    // Deserialize message field [state_info]
    data.state_info = UniversalStateInfo.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += UniversalStateInfo.getMessageSize(object.state_info);
    return length + 56;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/PcdRegistrationResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9774c230801f2006a1a918dac5bfc005';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # bool result_registration
    # string status_info
    geometry_msgs/Transform transform
    UniversalStateInfo  state_info # state_index: 0 配准成功 1 配准失败 2 读取target点云文件失败 3 读取source点云文件失败 4 从激光雷达获取点云失败 5 从相机获取点云失败
    
    ================================================================================
    MSG: geometry_msgs/Transform
    # This represents the transform between two coordinate frames in free space.
    
    Vector3 translation
    Quaternion rotation
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
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
    const resolved = new PcdRegistrationResponse(null);
    if (msg.transform !== undefined) {
      resolved.transform = geometry_msgs.msg.Transform.Resolve(msg.transform)
    }
    else {
      resolved.transform = new geometry_msgs.msg.Transform()
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
  Request: PcdRegistrationRequest,
  Response: PcdRegistrationResponse,
  md5sum() { return '5bd0e2fcf9944d063d5fa39205fff5d3'; },
  datatype() { return 'dg_msgs/PcdRegistration'; }
};

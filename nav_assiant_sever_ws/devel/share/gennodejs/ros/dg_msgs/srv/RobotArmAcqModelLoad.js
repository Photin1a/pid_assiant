// Auto-generated. Do not edit!

// (in-package dg_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PointSequence = require('../msg/PointSequence.js');

//-----------------------------------------------------------

let UniversalStateInfo = require('../msg/UniversalStateInfo.js');

//-----------------------------------------------------------

class RobotArmAcqModelLoadRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.model_path = null;
      this.matrix_region_init = null;
      this.region_frame_path = null;
      this.matrix_region_regionframe = null;
      this.image_points = null;
    }
    else {
      if (initObj.hasOwnProperty('model_path')) {
        this.model_path = initObj.model_path
      }
      else {
        this.model_path = '';
      }
      if (initObj.hasOwnProperty('matrix_region_init')) {
        this.matrix_region_init = initObj.matrix_region_init
      }
      else {
        this.matrix_region_init = [];
      }
      if (initObj.hasOwnProperty('region_frame_path')) {
        this.region_frame_path = initObj.region_frame_path
      }
      else {
        this.region_frame_path = '';
      }
      if (initObj.hasOwnProperty('matrix_region_regionframe')) {
        this.matrix_region_regionframe = initObj.matrix_region_regionframe
      }
      else {
        this.matrix_region_regionframe = [];
      }
      if (initObj.hasOwnProperty('image_points')) {
        this.image_points = initObj.image_points
      }
      else {
        this.image_points = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotArmAcqModelLoadRequest
    // Serialize message field [model_path]
    bufferOffset = _serializer.string(obj.model_path, buffer, bufferOffset);
    // Serialize message field [matrix_region_init]
    bufferOffset = _arraySerializer.float64(obj.matrix_region_init, buffer, bufferOffset, null);
    // Serialize message field [region_frame_path]
    bufferOffset = _serializer.string(obj.region_frame_path, buffer, bufferOffset);
    // Serialize message field [matrix_region_regionframe]
    bufferOffset = _arraySerializer.float64(obj.matrix_region_regionframe, buffer, bufferOffset, null);
    // Serialize message field [image_points]
    // Serialize the length for message field [image_points]
    bufferOffset = _serializer.uint32(obj.image_points.length, buffer, bufferOffset);
    obj.image_points.forEach((val) => {
      bufferOffset = PointSequence.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotArmAcqModelLoadRequest
    let len;
    let data = new RobotArmAcqModelLoadRequest(null);
    // Deserialize message field [model_path]
    data.model_path = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [matrix_region_init]
    data.matrix_region_init = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [region_frame_path]
    data.region_frame_path = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [matrix_region_regionframe]
    data.matrix_region_regionframe = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [image_points]
    // Deserialize array length for message field [image_points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.image_points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.image_points[i] = PointSequence.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.model_path.length;
    length += 8 * object.matrix_region_init.length;
    length += object.region_frame_path.length;
    length += 8 * object.matrix_region_regionframe.length;
    object.image_points.forEach((val) => {
      length += PointSequence.getMessageSize(val);
    });
    return length + 20;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/RobotArmAcqModelLoadRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ac9c183892244422f370506ce08e2d3c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string      model_path                     # 区域模型
    float64[]   matrix_region_init             # 区域初始矩阵，镜像复用和旋转复用，在进行配准时需要提前对区域
    string      region_frame_path              # 区域配准帧模型
    float64[]   matrix_region_regionframe      # 区域到区域配准帧的转换关系
    PointSequence[] image_points                     # 像点, 用于加载可替代点位
    
    ================================================================================
    MSG: dg_msgs/PointSequence
    string number      # 设备组编号
    ImagePoint[] points    # 机械臂拍照点位
    
    ================================================================================
    MSG: dg_msgs/ImagePoint
    geometry_msgs/PoseStamped pose
    trajectory_msgs/JointTrajectoryPoint joint
    float32 offset      # 升降柱伸缩量
    string custom_message
    ImageGoal image_goal
    string point_file_name
    
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
    MSG: trajectory_msgs/JointTrajectoryPoint
    # Each trajectory point specifies either positions[, velocities[, accelerations]]
    # or positions[, effort] for the trajectory to be executed.
    # All specified values are in the same order as the joint names in JointTrajectory.msg
    
    float64[] positions
    float64[] velocities
    float64[] accelerations
    float64[] effort
    duration time_from_start
    
    ================================================================================
    MSG: dg_msgs/ImageGoal
    string id          # ID
    string number     # 设备编号
    int32 types     # 拍照类型，灰度为`1`，彩色为`2`，深度为`4`，点云为`8`，多种类型时按位相与
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotArmAcqModelLoadRequest(null);
    if (msg.model_path !== undefined) {
      resolved.model_path = msg.model_path;
    }
    else {
      resolved.model_path = ''
    }

    if (msg.matrix_region_init !== undefined) {
      resolved.matrix_region_init = msg.matrix_region_init;
    }
    else {
      resolved.matrix_region_init = []
    }

    if (msg.region_frame_path !== undefined) {
      resolved.region_frame_path = msg.region_frame_path;
    }
    else {
      resolved.region_frame_path = ''
    }

    if (msg.matrix_region_regionframe !== undefined) {
      resolved.matrix_region_regionframe = msg.matrix_region_regionframe;
    }
    else {
      resolved.matrix_region_regionframe = []
    }

    if (msg.image_points !== undefined) {
      resolved.image_points = new Array(msg.image_points.length);
      for (let i = 0; i < resolved.image_points.length; ++i) {
        resolved.image_points[i] = PointSequence.Resolve(msg.image_points[i]);
      }
    }
    else {
      resolved.image_points = []
    }

    return resolved;
    }
};

class RobotArmAcqModelLoadResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state_info = null;
    }
    else {
      if (initObj.hasOwnProperty('state_info')) {
        this.state_info = initObj.state_info
      }
      else {
        this.state_info = new UniversalStateInfo();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotArmAcqModelLoadResponse
    // Serialize message field [state_info]
    bufferOffset = UniversalStateInfo.serialize(obj.state_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotArmAcqModelLoadResponse
    let len;
    let data = new RobotArmAcqModelLoadResponse(null);
    // Deserialize message field [state_info]
    data.state_info = UniversalStateInfo.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += UniversalStateInfo.getMessageSize(object.state_info);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/RobotArmAcqModelLoadResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8b810613bd7e6867ccbfac2fb14e2de4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    UniversalStateInfo  state_info
    
    # 0 表示成功；
    
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
    const resolved = new RobotArmAcqModelLoadResponse(null);
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
  Request: RobotArmAcqModelLoadRequest,
  Response: RobotArmAcqModelLoadResponse,
  md5sum() { return '7fe10d3217aaf92c81e254fca18fb315'; },
  datatype() { return 'dg_msgs/RobotArmAcqModelLoad'; }
};

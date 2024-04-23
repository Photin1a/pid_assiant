// Auto-generated. Do not edit!

// (in-package dg_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CorrectionPoint = require('./CorrectionPoint.js');
let CropBox = require('./CropBox.js');
let trajectory_msgs = _finder('trajectory_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class TeachDataInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose_stop_trainhead = null;
      this.pose_stop_region = null;
      this.model_type = null;
      this.model_path = null;
      this.camera_region = null;
      this.region_type = null;
      this.matrix_region_init = null;
      this.matrix_region_trainhead = null;
      this.reg_type = null;
      this.lidar_topic = null;
      this.correction_point = null;
      this.box_target = null;
      this.box_source = null;
      this.cruising_route_type = null;
      this.geometry_completion_type = null;
      this.pose_regionframe_region = null;
      this.pose_regionframe_trainhead = null;
      this.correction_joint = null;
      this.region_frame_path = null;
    }
    else {
      if (initObj.hasOwnProperty('pose_stop_trainhead')) {
        this.pose_stop_trainhead = initObj.pose_stop_trainhead
      }
      else {
        this.pose_stop_trainhead = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('pose_stop_region')) {
        this.pose_stop_region = initObj.pose_stop_region
      }
      else {
        this.pose_stop_region = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('model_type')) {
        this.model_type = initObj.model_type
      }
      else {
        this.model_type = 0;
      }
      if (initObj.hasOwnProperty('model_path')) {
        this.model_path = initObj.model_path
      }
      else {
        this.model_path = '';
      }
      if (initObj.hasOwnProperty('camera_region')) {
        this.camera_region = initObj.camera_region
      }
      else {
        this.camera_region = new geometry_msgs.msg.PoseArray();
      }
      if (initObj.hasOwnProperty('region_type')) {
        this.region_type = initObj.region_type
      }
      else {
        this.region_type = 0;
      }
      if (initObj.hasOwnProperty('matrix_region_init')) {
        this.matrix_region_init = initObj.matrix_region_init
      }
      else {
        this.matrix_region_init = [];
      }
      if (initObj.hasOwnProperty('matrix_region_trainhead')) {
        this.matrix_region_trainhead = initObj.matrix_region_trainhead
      }
      else {
        this.matrix_region_trainhead = [];
      }
      if (initObj.hasOwnProperty('reg_type')) {
        this.reg_type = initObj.reg_type
      }
      else {
        this.reg_type = 0;
      }
      if (initObj.hasOwnProperty('lidar_topic')) {
        this.lidar_topic = initObj.lidar_topic
      }
      else {
        this.lidar_topic = '';
      }
      if (initObj.hasOwnProperty('correction_point')) {
        this.correction_point = initObj.correction_point
      }
      else {
        this.correction_point = new CorrectionPoint();
      }
      if (initObj.hasOwnProperty('box_target')) {
        this.box_target = initObj.box_target
      }
      else {
        this.box_target = new CropBox();
      }
      if (initObj.hasOwnProperty('box_source')) {
        this.box_source = initObj.box_source
      }
      else {
        this.box_source = new CropBox();
      }
      if (initObj.hasOwnProperty('cruising_route_type')) {
        this.cruising_route_type = initObj.cruising_route_type
      }
      else {
        this.cruising_route_type = 0;
      }
      if (initObj.hasOwnProperty('geometry_completion_type')) {
        this.geometry_completion_type = initObj.geometry_completion_type
      }
      else {
        this.geometry_completion_type = 0;
      }
      if (initObj.hasOwnProperty('pose_regionframe_region')) {
        this.pose_regionframe_region = initObj.pose_regionframe_region
      }
      else {
        this.pose_regionframe_region = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('pose_regionframe_trainhead')) {
        this.pose_regionframe_trainhead = initObj.pose_regionframe_trainhead
      }
      else {
        this.pose_regionframe_trainhead = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('correction_joint')) {
        this.correction_joint = initObj.correction_joint
      }
      else {
        this.correction_joint = [];
      }
      if (initObj.hasOwnProperty('region_frame_path')) {
        this.region_frame_path = initObj.region_frame_path
      }
      else {
        this.region_frame_path = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TeachDataInfo
    // Serialize message field [pose_stop_trainhead]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.pose_stop_trainhead, buffer, bufferOffset);
    // Serialize message field [pose_stop_region]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.pose_stop_region, buffer, bufferOffset);
    // Serialize message field [model_type]
    bufferOffset = _serializer.int32(obj.model_type, buffer, bufferOffset);
    // Serialize message field [model_path]
    bufferOffset = _serializer.string(obj.model_path, buffer, bufferOffset);
    // Serialize message field [camera_region]
    bufferOffset = geometry_msgs.msg.PoseArray.serialize(obj.camera_region, buffer, bufferOffset);
    // Serialize message field [region_type]
    bufferOffset = _serializer.int32(obj.region_type, buffer, bufferOffset);
    // Serialize message field [matrix_region_init]
    bufferOffset = _arraySerializer.float64(obj.matrix_region_init, buffer, bufferOffset, null);
    // Serialize message field [matrix_region_trainhead]
    bufferOffset = _arraySerializer.float64(obj.matrix_region_trainhead, buffer, bufferOffset, null);
    // Serialize message field [reg_type]
    bufferOffset = _serializer.int32(obj.reg_type, buffer, bufferOffset);
    // Serialize message field [lidar_topic]
    bufferOffset = _serializer.string(obj.lidar_topic, buffer, bufferOffset);
    // Serialize message field [correction_point]
    bufferOffset = CorrectionPoint.serialize(obj.correction_point, buffer, bufferOffset);
    // Serialize message field [box_target]
    bufferOffset = CropBox.serialize(obj.box_target, buffer, bufferOffset);
    // Serialize message field [box_source]
    bufferOffset = CropBox.serialize(obj.box_source, buffer, bufferOffset);
    // Serialize message field [cruising_route_type]
    bufferOffset = _serializer.int32(obj.cruising_route_type, buffer, bufferOffset);
    // Serialize message field [geometry_completion_type]
    bufferOffset = _serializer.int32(obj.geometry_completion_type, buffer, bufferOffset);
    // Serialize message field [pose_regionframe_region]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.pose_regionframe_region, buffer, bufferOffset);
    // Serialize message field [pose_regionframe_trainhead]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.pose_regionframe_trainhead, buffer, bufferOffset);
    // Serialize message field [correction_joint]
    // Serialize the length for message field [correction_joint]
    bufferOffset = _serializer.uint32(obj.correction_joint.length, buffer, bufferOffset);
    obj.correction_joint.forEach((val) => {
      bufferOffset = trajectory_msgs.msg.JointTrajectoryPoint.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [region_frame_path]
    bufferOffset = _serializer.string(obj.region_frame_path, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TeachDataInfo
    let len;
    let data = new TeachDataInfo(null);
    // Deserialize message field [pose_stop_trainhead]
    data.pose_stop_trainhead = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [pose_stop_region]
    data.pose_stop_region = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [model_type]
    data.model_type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [model_path]
    data.model_path = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [camera_region]
    data.camera_region = geometry_msgs.msg.PoseArray.deserialize(buffer, bufferOffset);
    // Deserialize message field [region_type]
    data.region_type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [matrix_region_init]
    data.matrix_region_init = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [matrix_region_trainhead]
    data.matrix_region_trainhead = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [reg_type]
    data.reg_type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [lidar_topic]
    data.lidar_topic = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [correction_point]
    data.correction_point = CorrectionPoint.deserialize(buffer, bufferOffset);
    // Deserialize message field [box_target]
    data.box_target = CropBox.deserialize(buffer, bufferOffset);
    // Deserialize message field [box_source]
    data.box_source = CropBox.deserialize(buffer, bufferOffset);
    // Deserialize message field [cruising_route_type]
    data.cruising_route_type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [geometry_completion_type]
    data.geometry_completion_type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [pose_regionframe_region]
    data.pose_regionframe_region = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [pose_regionframe_trainhead]
    data.pose_regionframe_trainhead = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [correction_joint]
    // Deserialize array length for message field [correction_joint]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.correction_joint = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.correction_joint[i] = trajectory_msgs.msg.JointTrajectoryPoint.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [region_frame_path]
    data.region_frame_path = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.pose_stop_trainhead);
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.pose_stop_region);
    length += object.model_path.length;
    length += geometry_msgs.msg.PoseArray.getMessageSize(object.camera_region);
    length += 8 * object.matrix_region_init.length;
    length += 8 * object.matrix_region_trainhead.length;
    length += object.lidar_topic.length;
    length += CorrectionPoint.getMessageSize(object.correction_point);
    length += CropBox.getMessageSize(object.box_target);
    length += CropBox.getMessageSize(object.box_source);
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.pose_regionframe_region);
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.pose_regionframe_trainhead);
    object.correction_joint.forEach((val) => {
      length += trajectory_msgs.msg.JointTrajectoryPoint.getMessageSize(val);
    });
    length += object.region_frame_path.length;
    return length + 44;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dg_msgs/TeachDataInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '59cc7fe46999dbd644086ba85abbce76';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/PoseStamped pose_stop_trainhead
    geometry_msgs/PoseStamped pose_stop_region
    int32                     model_type
    string                    model_path
    geometry_msgs/PoseArray   camera_region
    int32                     region_type           # 区域类型，0直接复用，1镜像复用，2旋转180复用
    float64[]                 matrix_region_init
    float64[]                 matrix_region_trainhead
    int32                     reg_type              # 配准采集数据类型， 0为相机，1为雷达
    string                    lidar_topic
    CorrectionPoint           correction_point
    CropBox                   box_target
    CropBox                   box_source
    int32                     cruising_route_type
    int32                     geometry_completion_type
    geometry_msgs/PoseStamped pose_regionframe_region
    geometry_msgs/PoseStamped pose_regionframe_trainhead
    trajectory_msgs/JointTrajectoryPoint[]                          correction_joint
    string                      region_frame_path
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
    MSG: geometry_msgs/PoseArray
    # An array of poses with a header for global reference.
    
    Header header
    
    Pose[] poses
    
    ================================================================================
    MSG: dg_msgs/CorrectionPoint
    string number                                   # 设备组编号
    geometry_msgs/PoseStamped pose                  # 相机目标点的pose
    float32 offset                                  # 升降柱伸缩量
    string custom_message
    ================================================================================
    MSG: dg_msgs/CropBox
    float32[] center_
    float32[] R_euler
    float32[] extent_
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TeachDataInfo(null);
    if (msg.pose_stop_trainhead !== undefined) {
      resolved.pose_stop_trainhead = geometry_msgs.msg.PoseStamped.Resolve(msg.pose_stop_trainhead)
    }
    else {
      resolved.pose_stop_trainhead = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.pose_stop_region !== undefined) {
      resolved.pose_stop_region = geometry_msgs.msg.PoseStamped.Resolve(msg.pose_stop_region)
    }
    else {
      resolved.pose_stop_region = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.model_type !== undefined) {
      resolved.model_type = msg.model_type;
    }
    else {
      resolved.model_type = 0
    }

    if (msg.model_path !== undefined) {
      resolved.model_path = msg.model_path;
    }
    else {
      resolved.model_path = ''
    }

    if (msg.camera_region !== undefined) {
      resolved.camera_region = geometry_msgs.msg.PoseArray.Resolve(msg.camera_region)
    }
    else {
      resolved.camera_region = new geometry_msgs.msg.PoseArray()
    }

    if (msg.region_type !== undefined) {
      resolved.region_type = msg.region_type;
    }
    else {
      resolved.region_type = 0
    }

    if (msg.matrix_region_init !== undefined) {
      resolved.matrix_region_init = msg.matrix_region_init;
    }
    else {
      resolved.matrix_region_init = []
    }

    if (msg.matrix_region_trainhead !== undefined) {
      resolved.matrix_region_trainhead = msg.matrix_region_trainhead;
    }
    else {
      resolved.matrix_region_trainhead = []
    }

    if (msg.reg_type !== undefined) {
      resolved.reg_type = msg.reg_type;
    }
    else {
      resolved.reg_type = 0
    }

    if (msg.lidar_topic !== undefined) {
      resolved.lidar_topic = msg.lidar_topic;
    }
    else {
      resolved.lidar_topic = ''
    }

    if (msg.correction_point !== undefined) {
      resolved.correction_point = CorrectionPoint.Resolve(msg.correction_point)
    }
    else {
      resolved.correction_point = new CorrectionPoint()
    }

    if (msg.box_target !== undefined) {
      resolved.box_target = CropBox.Resolve(msg.box_target)
    }
    else {
      resolved.box_target = new CropBox()
    }

    if (msg.box_source !== undefined) {
      resolved.box_source = CropBox.Resolve(msg.box_source)
    }
    else {
      resolved.box_source = new CropBox()
    }

    if (msg.cruising_route_type !== undefined) {
      resolved.cruising_route_type = msg.cruising_route_type;
    }
    else {
      resolved.cruising_route_type = 0
    }

    if (msg.geometry_completion_type !== undefined) {
      resolved.geometry_completion_type = msg.geometry_completion_type;
    }
    else {
      resolved.geometry_completion_type = 0
    }

    if (msg.pose_regionframe_region !== undefined) {
      resolved.pose_regionframe_region = geometry_msgs.msg.PoseStamped.Resolve(msg.pose_regionframe_region)
    }
    else {
      resolved.pose_regionframe_region = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.pose_regionframe_trainhead !== undefined) {
      resolved.pose_regionframe_trainhead = geometry_msgs.msg.PoseStamped.Resolve(msg.pose_regionframe_trainhead)
    }
    else {
      resolved.pose_regionframe_trainhead = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.correction_joint !== undefined) {
      resolved.correction_joint = new Array(msg.correction_joint.length);
      for (let i = 0; i < resolved.correction_joint.length; ++i) {
        resolved.correction_joint[i] = trajectory_msgs.msg.JointTrajectoryPoint.Resolve(msg.correction_joint[i]);
      }
    }
    else {
      resolved.correction_joint = []
    }

    if (msg.region_frame_path !== undefined) {
      resolved.region_frame_path = msg.region_frame_path;
    }
    else {
      resolved.region_frame_path = ''
    }

    return resolved;
    }
};

module.exports = TeachDataInfo;

// Auto-generated. Do not edit!

// (in-package dg_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CorrectionPoint = require('../msg/CorrectionPoint.js');
let CorrectionJoint = require('../msg/CorrectionJoint.js');
let CropBox = require('../msg/CropBox.js');
let PointSequence = require('../msg/PointSequence.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

let UniversalStateInfo = require('../msg/UniversalStateInfo.js');

//-----------------------------------------------------------

class RobotArmAcqReadyRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.relative_pose = null;
      this.model_path = null;
      this.model_type = null;
      this.region_type = null;
      this.reg_type = null;
      this.lidar_topic = null;
      this.correction_point = null;
      this.correction_joint = null;
      this.matrix_region_trainhead = null;
      this.box_target = null;
      this.box_source = null;
      this.image_points = null;
      this.region_frame_path = null;
      this.matrix_region_regionframe = null;
    }
    else {
      if (initObj.hasOwnProperty('relative_pose')) {
        this.relative_pose = initObj.relative_pose
      }
      else {
        this.relative_pose = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('model_path')) {
        this.model_path = initObj.model_path
      }
      else {
        this.model_path = '';
      }
      if (initObj.hasOwnProperty('model_type')) {
        this.model_type = initObj.model_type
      }
      else {
        this.model_type = 0;
      }
      if (initObj.hasOwnProperty('region_type')) {
        this.region_type = initObj.region_type
      }
      else {
        this.region_type = 0;
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
      if (initObj.hasOwnProperty('correction_joint')) {
        this.correction_joint = initObj.correction_joint
      }
      else {
        this.correction_joint = new CorrectionJoint();
      }
      if (initObj.hasOwnProperty('matrix_region_trainhead')) {
        this.matrix_region_trainhead = initObj.matrix_region_trainhead
      }
      else {
        this.matrix_region_trainhead = [];
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
      if (initObj.hasOwnProperty('image_points')) {
        this.image_points = initObj.image_points
      }
      else {
        this.image_points = [];
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotArmAcqReadyRequest
    // Serialize message field [relative_pose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.relative_pose, buffer, bufferOffset);
    // Serialize message field [model_path]
    bufferOffset = _serializer.string(obj.model_path, buffer, bufferOffset);
    // Serialize message field [model_type]
    bufferOffset = _serializer.int32(obj.model_type, buffer, bufferOffset);
    // Serialize message field [region_type]
    bufferOffset = _serializer.int32(obj.region_type, buffer, bufferOffset);
    // Serialize message field [reg_type]
    bufferOffset = _serializer.int32(obj.reg_type, buffer, bufferOffset);
    // Serialize message field [lidar_topic]
    bufferOffset = _serializer.string(obj.lidar_topic, buffer, bufferOffset);
    // Serialize message field [correction_point]
    bufferOffset = CorrectionPoint.serialize(obj.correction_point, buffer, bufferOffset);
    // Serialize message field [correction_joint]
    bufferOffset = CorrectionJoint.serialize(obj.correction_joint, buffer, bufferOffset);
    // Serialize message field [matrix_region_trainhead]
    bufferOffset = _arraySerializer.float64(obj.matrix_region_trainhead, buffer, bufferOffset, null);
    // Serialize message field [box_target]
    bufferOffset = CropBox.serialize(obj.box_target, buffer, bufferOffset);
    // Serialize message field [box_source]
    bufferOffset = CropBox.serialize(obj.box_source, buffer, bufferOffset);
    // Serialize message field [image_points]
    // Serialize the length for message field [image_points]
    bufferOffset = _serializer.uint32(obj.image_points.length, buffer, bufferOffset);
    obj.image_points.forEach((val) => {
      bufferOffset = PointSequence.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [region_frame_path]
    bufferOffset = _serializer.string(obj.region_frame_path, buffer, bufferOffset);
    // Serialize message field [matrix_region_regionframe]
    bufferOffset = _arraySerializer.float64(obj.matrix_region_regionframe, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotArmAcqReadyRequest
    let len;
    let data = new RobotArmAcqReadyRequest(null);
    // Deserialize message field [relative_pose]
    data.relative_pose = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [model_path]
    data.model_path = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [model_type]
    data.model_type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [region_type]
    data.region_type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [reg_type]
    data.reg_type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [lidar_topic]
    data.lidar_topic = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [correction_point]
    data.correction_point = CorrectionPoint.deserialize(buffer, bufferOffset);
    // Deserialize message field [correction_joint]
    data.correction_joint = CorrectionJoint.deserialize(buffer, bufferOffset);
    // Deserialize message field [matrix_region_trainhead]
    data.matrix_region_trainhead = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [box_target]
    data.box_target = CropBox.deserialize(buffer, bufferOffset);
    // Deserialize message field [box_source]
    data.box_source = CropBox.deserialize(buffer, bufferOffset);
    // Deserialize message field [image_points]
    // Deserialize array length for message field [image_points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.image_points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.image_points[i] = PointSequence.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [region_frame_path]
    data.region_frame_path = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [matrix_region_regionframe]
    data.matrix_region_regionframe = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.relative_pose);
    length += object.model_path.length;
    length += object.lidar_topic.length;
    length += CorrectionPoint.getMessageSize(object.correction_point);
    length += CorrectionJoint.getMessageSize(object.correction_joint);
    length += 8 * object.matrix_region_trainhead.length;
    length += CropBox.getMessageSize(object.box_target);
    length += CropBox.getMessageSize(object.box_source);
    object.image_points.forEach((val) => {
      length += PointSequence.getMessageSize(val);
    });
    length += object.region_frame_path.length;
    length += 8 * object.matrix_region_regionframe.length;
    return length + 36;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/RobotArmAcqReadyRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bb9ef447c82b368df76a7824348cb29d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/PoseStamped relative_pose          # 停车点位置(相对位置)
    string model_path                                # 转向架数据模型
    int32 model_type                                 # 模型类型（车头： 1，转向架： 2）
    int32 region_type
    int32 reg_type                                   # 配准采集数据类型， 0为相机，1为雷达
    string lidar_topic                               # 雷达topic，用于确定使用哪个雷达采集数据
    CorrectionPoint correction_point                 # 纠偏点，配准采集选择相机，相机需要移动到correction_point里传进来的pose, pose是存储在区域坐标系下的，配合relative_pose使用
    CorrectionJoint correction_joint                        # 纠偏轨迹
    float64[] matrix_region_trainhead                          # 区域转换矩阵
    CropBox box_target
    CropBox box_source
    PointSequence[] image_points                     # 像点，运动规划
    
    string region_frame_path                                # 区域配准帧文件路径
    float64[] matrix_region_regionframe                     # 区域到区域配准帧的配准结果
    
    
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
    MSG: dg_msgs/CorrectionPoint
    string number                                   # 设备组编号
    geometry_msgs/PoseStamped pose                  # 相机目标点的pose
    float32 offset                                  # 升降柱伸缩量
    string custom_message
    ================================================================================
    MSG: dg_msgs/CorrectionJoint
    #纠偏轨迹
    string number       # 设备编码
    trajectory_msgs/JointTrajectoryPoint[] joints # 机械臂关节位置
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
    MSG: dg_msgs/CropBox
    float32[] center_
    float32[] R_euler
    float32[] extent_
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
    const resolved = new RobotArmAcqReadyRequest(null);
    if (msg.relative_pose !== undefined) {
      resolved.relative_pose = geometry_msgs.msg.PoseStamped.Resolve(msg.relative_pose)
    }
    else {
      resolved.relative_pose = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.model_path !== undefined) {
      resolved.model_path = msg.model_path;
    }
    else {
      resolved.model_path = ''
    }

    if (msg.model_type !== undefined) {
      resolved.model_type = msg.model_type;
    }
    else {
      resolved.model_type = 0
    }

    if (msg.region_type !== undefined) {
      resolved.region_type = msg.region_type;
    }
    else {
      resolved.region_type = 0
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

    if (msg.correction_joint !== undefined) {
      resolved.correction_joint = CorrectionJoint.Resolve(msg.correction_joint)
    }
    else {
      resolved.correction_joint = new CorrectionJoint()
    }

    if (msg.matrix_region_trainhead !== undefined) {
      resolved.matrix_region_trainhead = msg.matrix_region_trainhead;
    }
    else {
      resolved.matrix_region_trainhead = []
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

    if (msg.image_points !== undefined) {
      resolved.image_points = new Array(msg.image_points.length);
      for (let i = 0; i < resolved.image_points.length; ++i) {
        resolved.image_points[i] = PointSequence.Resolve(msg.image_points[i]);
      }
    }
    else {
      resolved.image_points = []
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

    return resolved;
    }
};

class RobotArmAcqReadyResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.correction_pose = null;
      this.state_info = null;
    }
    else {
      if (initObj.hasOwnProperty('correction_pose')) {
        this.correction_pose = initObj.correction_pose
      }
      else {
        this.correction_pose = new geometry_msgs.msg.Pose();
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
    // Serializes a message object of type RobotArmAcqReadyResponse
    // Serialize message field [correction_pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.correction_pose, buffer, bufferOffset);
    // Serialize message field [state_info]
    bufferOffset = UniversalStateInfo.serialize(obj.state_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotArmAcqReadyResponse
    let len;
    let data = new RobotArmAcqReadyResponse(null);
    // Deserialize message field [correction_pose]
    data.correction_pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
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
    return 'dg_msgs/RobotArmAcqReadyResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e3a35aadd4af7a6bf19580a53899f34f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Pose  correction_pose              # 反馈给中心节点停车点位的位移偏差(用于里程计校准)
    UniversalStateInfo  state_info                   # error 1 机械臂初始位置错误；2 坑道模型加载错误；3 转向架模型加载失败；
                                                     # 4 配准服务调用失败；5 机械臂运动失败；6 机械臂规划到纠偏点位失败；
                                                     # 7 外部轴运动失败；8 终止指令返回；
                                                     # warning  9 暂停指令返回；
    
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
    const resolved = new RobotArmAcqReadyResponse(null);
    if (msg.correction_pose !== undefined) {
      resolved.correction_pose = geometry_msgs.msg.Pose.Resolve(msg.correction_pose)
    }
    else {
      resolved.correction_pose = new geometry_msgs.msg.Pose()
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
  Request: RobotArmAcqReadyRequest,
  Response: RobotArmAcqReadyResponse,
  md5sum() { return 'cbf1e625d3f15ef072b993fe724f8a83'; },
  datatype() { return 'dg_msgs/RobotArmAcqReady'; }
};

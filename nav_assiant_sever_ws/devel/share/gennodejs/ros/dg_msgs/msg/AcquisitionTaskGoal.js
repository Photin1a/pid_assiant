// Auto-generated. Do not edit!

// (in-package dg_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PointSequence = require('./PointSequence.js');
let CorrectionPoint = require('./CorrectionPoint.js');
let CorrectionJoint = require('./CorrectionJoint.js');
let CropBox = require('./CropBox.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class AcquisitionTaskGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.pose = null;
      this.relative_pose = null;
      this.model_type = null;
      this.model_path = null;
      this.region_frame_path = null;
      this.matrix_region_regionframe = null;
      this.directory = null;
      this.image_points = null;
      this.custom_message = null;
      this.region_type = null;
      this.matrix_region_init = null;
      this.matrix_region_trainhead = null;
      this.reg_type = null;
      this.lidar_topic = null;
      this.correction_point = null;
      this.correction_joint = null;
      this.box_target = null;
      this.box_source = null;
      this.cruising_route_type = null;
      this.geometry_completion_type = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = '';
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('relative_pose')) {
        this.relative_pose = initObj.relative_pose
      }
      else {
        this.relative_pose = new geometry_msgs.msg.PoseStamped();
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
      if (initObj.hasOwnProperty('directory')) {
        this.directory = initObj.directory
      }
      else {
        this.directory = '';
      }
      if (initObj.hasOwnProperty('image_points')) {
        this.image_points = initObj.image_points
      }
      else {
        this.image_points = [];
      }
      if (initObj.hasOwnProperty('custom_message')) {
        this.custom_message = initObj.custom_message
      }
      else {
        this.custom_message = '';
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
      if (initObj.hasOwnProperty('correction_joint')) {
        this.correction_joint = initObj.correction_joint
      }
      else {
        this.correction_joint = new CorrectionJoint();
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AcquisitionTaskGoal
    // Serialize message field [id]
    bufferOffset = _serializer.string(obj.id, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [relative_pose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.relative_pose, buffer, bufferOffset);
    // Serialize message field [model_type]
    bufferOffset = _serializer.int32(obj.model_type, buffer, bufferOffset);
    // Serialize message field [model_path]
    bufferOffset = _serializer.string(obj.model_path, buffer, bufferOffset);
    // Serialize message field [region_frame_path]
    bufferOffset = _serializer.string(obj.region_frame_path, buffer, bufferOffset);
    // Serialize message field [matrix_region_regionframe]
    bufferOffset = _arraySerializer.float64(obj.matrix_region_regionframe, buffer, bufferOffset, null);
    // Serialize message field [directory]
    bufferOffset = _serializer.string(obj.directory, buffer, bufferOffset);
    // Serialize message field [image_points]
    // Serialize the length for message field [image_points]
    bufferOffset = _serializer.uint32(obj.image_points.length, buffer, bufferOffset);
    obj.image_points.forEach((val) => {
      bufferOffset = PointSequence.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [custom_message]
    bufferOffset = _serializer.string(obj.custom_message, buffer, bufferOffset);
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
    // Serialize message field [correction_joint]
    bufferOffset = CorrectionJoint.serialize(obj.correction_joint, buffer, bufferOffset);
    // Serialize message field [box_target]
    bufferOffset = CropBox.serialize(obj.box_target, buffer, bufferOffset);
    // Serialize message field [box_source]
    bufferOffset = CropBox.serialize(obj.box_source, buffer, bufferOffset);
    // Serialize message field [cruising_route_type]
    bufferOffset = _serializer.int32(obj.cruising_route_type, buffer, bufferOffset);
    // Serialize message field [geometry_completion_type]
    bufferOffset = _serializer.int32(obj.geometry_completion_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AcquisitionTaskGoal
    let len;
    let data = new AcquisitionTaskGoal(null);
    // Deserialize message field [id]
    data.id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [relative_pose]
    data.relative_pose = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [model_type]
    data.model_type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [model_path]
    data.model_path = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [region_frame_path]
    data.region_frame_path = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [matrix_region_regionframe]
    data.matrix_region_regionframe = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [directory]
    data.directory = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [image_points]
    // Deserialize array length for message field [image_points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.image_points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.image_points[i] = PointSequence.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [custom_message]
    data.custom_message = _deserializer.string(buffer, bufferOffset);
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
    // Deserialize message field [correction_joint]
    data.correction_joint = CorrectionJoint.deserialize(buffer, bufferOffset);
    // Deserialize message field [box_target]
    data.box_target = CropBox.deserialize(buffer, bufferOffset);
    // Deserialize message field [box_source]
    data.box_source = CropBox.deserialize(buffer, bufferOffset);
    // Deserialize message field [cruising_route_type]
    data.cruising_route_type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [geometry_completion_type]
    data.geometry_completion_type = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.id.length;
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.pose);
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.relative_pose);
    length += object.model_path.length;
    length += object.region_frame_path.length;
    length += 8 * object.matrix_region_regionframe.length;
    length += object.directory.length;
    object.image_points.forEach((val) => {
      length += PointSequence.getMessageSize(val);
    });
    length += object.custom_message.length;
    length += 8 * object.matrix_region_init.length;
    length += 8 * object.matrix_region_trainhead.length;
    length += object.lidar_topic.length;
    length += CorrectionPoint.getMessageSize(object.correction_point);
    length += CorrectionJoint.getMessageSize(object.correction_joint);
    length += CropBox.getMessageSize(object.box_target);
    length += CropBox.getMessageSize(object.box_source);
    return length + 60;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dg_msgs/AcquisitionTaskGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9424e9c1673e8caa2db13d0a787dd34b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    string id
    geometry_msgs/PoseStamped pose                          # 停车点位置(相对于车头（train_head）坐标系下的位置关系)
    geometry_msgs/PoseStamped relative_pose                 # 停车点位置(相对于区域（region）坐标系下的位置关系)
    int32 model_type                                        # 模型类型（车头： 1，区域： 2）
    string model_path                                       # 车头、区域模型文件路径
    string region_frame_path                                # 区域配准帧文件路径
    float64[] matrix_region_regionframe                     # 区域到区域配准帧的配准结果
    
    string directory                                        # 图片存放目录
    PointSequence[] image_points                            # 像点
    string custom_message                                   # 自定义信息
    
    int32 region_type                                       # 区域类型，0直接复用，1镜像复用，2旋转180复用
    float64[] matrix_region_init                            # 区域初始矩阵，镜像复用和旋转复用，在进行配准时需要提前对区域进行镜像和旋转
    float64[] matrix_region_trainhead                       # 区域转换矩阵，区域在车头坐标系下的位置关系, 作为配准时的target的初始值
    int32 reg_type                                          # 配准采集数据类型， 0为相机，1为雷达
    string lidar_topic                                      # 雷达topic，用于确定使用哪个雷达采集数据
    CorrectionPoint correction_point                        # 纠偏点，配准采集选择相机，相机需要移动到correction_point里传进来的pose, pose是存储在区域坐标系下的，配合relative_pose使用
    CorrectionJoint correction_joint                        # 纠偏轨迹
    CropBox box_target                                      # 配准所需要的target框
    CropBox box_source                                      # 配准所需要的source框
    
    int32 cruising_route_type								# 0 坑道内巡检路线，1 车侧巡检路线
    int32 geometry_completion_type							# 几何体补全类型，0 柱体
    
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
    MSG: dg_msgs/CropBox
    float32[] center_
    float32[] R_euler
    float32[] extent_
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AcquisitionTaskGoal(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = ''
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.PoseStamped.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.relative_pose !== undefined) {
      resolved.relative_pose = geometry_msgs.msg.PoseStamped.Resolve(msg.relative_pose)
    }
    else {
      resolved.relative_pose = new geometry_msgs.msg.PoseStamped()
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

    if (msg.directory !== undefined) {
      resolved.directory = msg.directory;
    }
    else {
      resolved.directory = ''
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

    if (msg.custom_message !== undefined) {
      resolved.custom_message = msg.custom_message;
    }
    else {
      resolved.custom_message = ''
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

    if (msg.correction_joint !== undefined) {
      resolved.correction_joint = CorrectionJoint.Resolve(msg.correction_joint)
    }
    else {
      resolved.correction_joint = new CorrectionJoint()
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

    return resolved;
    }
};

module.exports = AcquisitionTaskGoal;

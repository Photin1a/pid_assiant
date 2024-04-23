// Auto-generated. Do not edit!

// (in-package dg_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let AcquisitionTaskActionGoal = require('./AcquisitionTaskActionGoal.js');
let AcquisitionTaskActionResult = require('./AcquisitionTaskActionResult.js');
let AcquisitionTaskActionFeedback = require('./AcquisitionTaskActionFeedback.js');

//-----------------------------------------------------------

class AcquisitionTaskAction {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.action_goal = null;
      this.action_result = null;
      this.action_feedback = null;
    }
    else {
      if (initObj.hasOwnProperty('action_goal')) {
        this.action_goal = initObj.action_goal
      }
      else {
        this.action_goal = new AcquisitionTaskActionGoal();
      }
      if (initObj.hasOwnProperty('action_result')) {
        this.action_result = initObj.action_result
      }
      else {
        this.action_result = new AcquisitionTaskActionResult();
      }
      if (initObj.hasOwnProperty('action_feedback')) {
        this.action_feedback = initObj.action_feedback
      }
      else {
        this.action_feedback = new AcquisitionTaskActionFeedback();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AcquisitionTaskAction
    // Serialize message field [action_goal]
    bufferOffset = AcquisitionTaskActionGoal.serialize(obj.action_goal, buffer, bufferOffset);
    // Serialize message field [action_result]
    bufferOffset = AcquisitionTaskActionResult.serialize(obj.action_result, buffer, bufferOffset);
    // Serialize message field [action_feedback]
    bufferOffset = AcquisitionTaskActionFeedback.serialize(obj.action_feedback, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AcquisitionTaskAction
    let len;
    let data = new AcquisitionTaskAction(null);
    // Deserialize message field [action_goal]
    data.action_goal = AcquisitionTaskActionGoal.deserialize(buffer, bufferOffset);
    // Deserialize message field [action_result]
    data.action_result = AcquisitionTaskActionResult.deserialize(buffer, bufferOffset);
    // Deserialize message field [action_feedback]
    data.action_feedback = AcquisitionTaskActionFeedback.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += AcquisitionTaskActionGoal.getMessageSize(object.action_goal);
    length += AcquisitionTaskActionResult.getMessageSize(object.action_result);
    length += AcquisitionTaskActionFeedback.getMessageSize(object.action_feedback);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dg_msgs/AcquisitionTaskAction';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '879fd3e615c2c712f1fcf376c0e0558a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    
    AcquisitionTaskActionGoal action_goal
    AcquisitionTaskActionResult action_result
    AcquisitionTaskActionFeedback action_feedback
    
    ================================================================================
    MSG: dg_msgs/AcquisitionTaskActionGoal
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    
    Header header
    actionlib_msgs/GoalID goal_id
    AcquisitionTaskGoal goal
    
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
    MSG: actionlib_msgs/GoalID
    # The stamp should store the time at which this goal was requested.
    # It is used by an action server when it tries to preempt all
    # goals that were requested before a certain time
    time stamp
    
    # The id provides a way to associate feedback and
    # result message with specific goal requests. The id
    # specified must be unique.
    string id
    
    
    ================================================================================
    MSG: dg_msgs/AcquisitionTaskGoal
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
    ================================================================================
    MSG: dg_msgs/AcquisitionTaskActionResult
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    
    Header header
    actionlib_msgs/GoalStatus status
    AcquisitionTaskResult result
    
    ================================================================================
    MSG: actionlib_msgs/GoalStatus
    GoalID goal_id
    uint8 status
    uint8 PENDING         = 0   # The goal has yet to be processed by the action server
    uint8 ACTIVE          = 1   # The goal is currently being processed by the action server
    uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing
                                #   and has since completed its execution (Terminal State)
    uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)
    uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due
                                #    to some failure (Terminal State)
    uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,
                                #    because the goal was unattainable or invalid (Terminal State)
    uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing
                                #    and has not yet completed execution
    uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,
                                #    but the action server has not yet confirmed that the goal is canceled
    uint8 RECALLED        = 8   # The goal received a cancel request before it started executing
                                #    and was successfully cancelled (Terminal State)
    uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be
                                #    sent over the wire by an action server
    
    #Allow for the user to associate a string with GoalStatus for debugging
    string text
    
    
    ================================================================================
    MSG: dg_msgs/AcquisitionTaskResult
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    #result definition
    string id
    ImageResult[] results
    string err_msg
    
    ================================================================================
    MSG: dg_msgs/ImageResult
    string id
    int32 result        # 拍照结果 0: 成功  非0：失败
    string gray         # 灰度图路径
    string rgb          # 彩色图路径
    string depth        # 深度图路径
    string point_cloud  # 点云路径
    float32[] intrinsic # 相机内参
    ================================================================================
    MSG: dg_msgs/AcquisitionTaskActionFeedback
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    
    Header header
    actionlib_msgs/GoalStatus status
    AcquisitionTaskFeedback feedback
    
    ================================================================================
    MSG: dg_msgs/AcquisitionTaskFeedback
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    #feedback
    ImageResult[] results
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AcquisitionTaskAction(null);
    if (msg.action_goal !== undefined) {
      resolved.action_goal = AcquisitionTaskActionGoal.Resolve(msg.action_goal)
    }
    else {
      resolved.action_goal = new AcquisitionTaskActionGoal()
    }

    if (msg.action_result !== undefined) {
      resolved.action_result = AcquisitionTaskActionResult.Resolve(msg.action_result)
    }
    else {
      resolved.action_result = new AcquisitionTaskActionResult()
    }

    if (msg.action_feedback !== undefined) {
      resolved.action_feedback = AcquisitionTaskActionFeedback.Resolve(msg.action_feedback)
    }
    else {
      resolved.action_feedback = new AcquisitionTaskActionFeedback()
    }

    return resolved;
    }
};

module.exports = AcquisitionTaskAction;

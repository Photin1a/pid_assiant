// Auto-generated. Do not edit!

// (in-package dg_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TeachDataInfo = require('./TeachDataInfo.js');

//-----------------------------------------------------------

class TeachDataInfoArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.TeachData = null;
    }
    else {
      if (initObj.hasOwnProperty('TeachData')) {
        this.TeachData = initObj.TeachData
      }
      else {
        this.TeachData = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TeachDataInfoArray
    // Serialize message field [TeachData]
    // Serialize the length for message field [TeachData]
    bufferOffset = _serializer.uint32(obj.TeachData.length, buffer, bufferOffset);
    obj.TeachData.forEach((val) => {
      bufferOffset = TeachDataInfo.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TeachDataInfoArray
    let len;
    let data = new TeachDataInfoArray(null);
    // Deserialize message field [TeachData]
    // Deserialize array length for message field [TeachData]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.TeachData = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.TeachData[i] = TeachDataInfo.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.TeachData.forEach((val) => {
      length += TeachDataInfo.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dg_msgs/TeachDataInfoArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b4e006fa993775aa9be2a4055f4cff48';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    TeachDataInfo[]     TeachData
    ================================================================================
    MSG: dg_msgs/TeachDataInfo
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
    const resolved = new TeachDataInfoArray(null);
    if (msg.TeachData !== undefined) {
      resolved.TeachData = new Array(msg.TeachData.length);
      for (let i = 0; i < resolved.TeachData.length; ++i) {
        resolved.TeachData[i] = TeachDataInfo.Resolve(msg.TeachData[i]);
      }
    }
    else {
      resolved.TeachData = []
    }

    return resolved;
    }
};

module.exports = TeachDataInfoArray;

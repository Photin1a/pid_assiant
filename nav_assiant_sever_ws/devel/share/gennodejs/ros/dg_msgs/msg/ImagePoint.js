// Auto-generated. Do not edit!

// (in-package dg_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ImageGoal = require('./ImageGoal.js');
let trajectory_msgs = _finder('trajectory_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class ImagePoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose = null;
      this.joint = null;
      this.offset = null;
      this.custom_message = null;
      this.image_goal = null;
      this.point_file_name = null;
    }
    else {
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('joint')) {
        this.joint = initObj.joint
      }
      else {
        this.joint = new trajectory_msgs.msg.JointTrajectoryPoint();
      }
      if (initObj.hasOwnProperty('offset')) {
        this.offset = initObj.offset
      }
      else {
        this.offset = 0.0;
      }
      if (initObj.hasOwnProperty('custom_message')) {
        this.custom_message = initObj.custom_message
      }
      else {
        this.custom_message = '';
      }
      if (initObj.hasOwnProperty('image_goal')) {
        this.image_goal = initObj.image_goal
      }
      else {
        this.image_goal = new ImageGoal();
      }
      if (initObj.hasOwnProperty('point_file_name')) {
        this.point_file_name = initObj.point_file_name
      }
      else {
        this.point_file_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ImagePoint
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [joint]
    bufferOffset = trajectory_msgs.msg.JointTrajectoryPoint.serialize(obj.joint, buffer, bufferOffset);
    // Serialize message field [offset]
    bufferOffset = _serializer.float32(obj.offset, buffer, bufferOffset);
    // Serialize message field [custom_message]
    bufferOffset = _serializer.string(obj.custom_message, buffer, bufferOffset);
    // Serialize message field [image_goal]
    bufferOffset = ImageGoal.serialize(obj.image_goal, buffer, bufferOffset);
    // Serialize message field [point_file_name]
    bufferOffset = _serializer.string(obj.point_file_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ImagePoint
    let len;
    let data = new ImagePoint(null);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [joint]
    data.joint = trajectory_msgs.msg.JointTrajectoryPoint.deserialize(buffer, bufferOffset);
    // Deserialize message field [offset]
    data.offset = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [custom_message]
    data.custom_message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [image_goal]
    data.image_goal = ImageGoal.deserialize(buffer, bufferOffset);
    // Deserialize message field [point_file_name]
    data.point_file_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.pose);
    length += trajectory_msgs.msg.JointTrajectoryPoint.getMessageSize(object.joint);
    length += object.custom_message.length;
    length += ImageGoal.getMessageSize(object.image_goal);
    length += object.point_file_name.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dg_msgs/ImagePoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c622e2a85a7ab256c39a58e6fc6bff26';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new ImagePoint(null);
    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.PoseStamped.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.joint !== undefined) {
      resolved.joint = trajectory_msgs.msg.JointTrajectoryPoint.Resolve(msg.joint)
    }
    else {
      resolved.joint = new trajectory_msgs.msg.JointTrajectoryPoint()
    }

    if (msg.offset !== undefined) {
      resolved.offset = msg.offset;
    }
    else {
      resolved.offset = 0.0
    }

    if (msg.custom_message !== undefined) {
      resolved.custom_message = msg.custom_message;
    }
    else {
      resolved.custom_message = ''
    }

    if (msg.image_goal !== undefined) {
      resolved.image_goal = ImageGoal.Resolve(msg.image_goal)
    }
    else {
      resolved.image_goal = new ImageGoal()
    }

    if (msg.point_file_name !== undefined) {
      resolved.point_file_name = msg.point_file_name;
    }
    else {
      resolved.point_file_name = ''
    }

    return resolved;
    }
};

module.exports = ImagePoint;

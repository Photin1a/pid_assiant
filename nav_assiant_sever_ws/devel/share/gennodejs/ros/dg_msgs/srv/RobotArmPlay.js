// Auto-generated. Do not edit!

// (in-package dg_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let trajectory_msgs = _finder('trajectory_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class RobotArmPlayRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.number = null;
      this.trajectory = null;
    }
    else {
      if (initObj.hasOwnProperty('number')) {
        this.number = initObj.number
      }
      else {
        this.number = '';
      }
      if (initObj.hasOwnProperty('trajectory')) {
        this.trajectory = initObj.trajectory
      }
      else {
        this.trajectory = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotArmPlayRequest
    // Serialize message field [number]
    bufferOffset = _serializer.string(obj.number, buffer, bufferOffset);
    // Serialize message field [trajectory]
    // Serialize the length for message field [trajectory]
    bufferOffset = _serializer.uint32(obj.trajectory.length, buffer, bufferOffset);
    obj.trajectory.forEach((val) => {
      bufferOffset = trajectory_msgs.msg.JointTrajectoryPoint.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotArmPlayRequest
    let len;
    let data = new RobotArmPlayRequest(null);
    // Deserialize message field [number]
    data.number = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [trajectory]
    // Deserialize array length for message field [trajectory]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.trajectory = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.trajectory[i] = trajectory_msgs.msg.JointTrajectoryPoint.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.number.length;
    object.trajectory.forEach((val) => {
      length += trajectory_msgs.msg.JointTrajectoryPoint.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/RobotArmPlayRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e1985a392f556857f6576a2e977006a6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string number     # 机械臂编号
    trajectory_msgs/JointTrajectoryPoint[] trajectory      # 机械臂轨迹
    
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
    const resolved = new RobotArmPlayRequest(null);
    if (msg.number !== undefined) {
      resolved.number = msg.number;
    }
    else {
      resolved.number = ''
    }

    if (msg.trajectory !== undefined) {
      resolved.trajectory = new Array(msg.trajectory.length);
      for (let i = 0; i < resolved.trajectory.length; ++i) {
        resolved.trajectory[i] = trajectory_msgs.msg.JointTrajectoryPoint.Resolve(msg.trajectory[i]);
      }
    }
    else {
      resolved.trajectory = []
    }

    return resolved;
    }
};

class RobotArmPlayResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.err_msg = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
      }
      if (initObj.hasOwnProperty('err_msg')) {
        this.err_msg = initObj.err_msg
      }
      else {
        this.err_msg = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotArmPlayResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    // Serialize message field [err_msg]
    bufferOffset = _serializer.string(obj.err_msg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotArmPlayResponse
    let len;
    let data = new RobotArmPlayResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [err_msg]
    data.err_msg = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.err_msg.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/RobotArmPlayResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '09aeb1bafb3b420fac75afd69de1c815';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 result        # 0: 成功  非0：失败
    string err_msg      # 错误信息
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotArmPlayResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
    }

    if (msg.err_msg !== undefined) {
      resolved.err_msg = msg.err_msg;
    }
    else {
      resolved.err_msg = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: RobotArmPlayRequest,
  Response: RobotArmPlayResponse,
  md5sum() { return '864ce7ba8c1285b7aac87a4b60c5a93e'; },
  datatype() { return 'dg_msgs/RobotArmPlay'; }
};

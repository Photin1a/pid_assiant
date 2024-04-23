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

let trajectory_msgs = _finder('trajectory_msgs');

//-----------------------------------------------------------

class StopRecordingRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.number = null;
    }
    else {
      if (initObj.hasOwnProperty('number')) {
        this.number = initObj.number
      }
      else {
        this.number = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StopRecordingRequest
    // Serialize message field [number]
    bufferOffset = _serializer.string(obj.number, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StopRecordingRequest
    let len;
    let data = new StopRecordingRequest(null);
    // Deserialize message field [number]
    data.number = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.number.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/StopRecordingRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1390643684d42806cde16cb777d15235';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string number       # 机械臂编号
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StopRecordingRequest(null);
    if (msg.number !== undefined) {
      resolved.number = msg.number;
    }
    else {
      resolved.number = ''
    }

    return resolved;
    }
};

class StopRecordingResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.trajectory = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
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
    // Serializes a message object of type StopRecordingResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    // Serialize message field [trajectory]
    // Serialize the length for message field [trajectory]
    bufferOffset = _serializer.uint32(obj.trajectory.length, buffer, bufferOffset);
    obj.trajectory.forEach((val) => {
      bufferOffset = trajectory_msgs.msg.JointTrajectoryPoint.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StopRecordingResponse
    let len;
    let data = new StopRecordingResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
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
    object.trajectory.forEach((val) => {
      length += trajectory_msgs.msg.JointTrajectoryPoint.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/StopRecordingResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7d5d8507da4af23d027f5713eb4af792';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 result        # 0: 成功  非0：失败
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
    const resolved = new StopRecordingResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
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

module.exports = {
  Request: StopRecordingRequest,
  Response: StopRecordingResponse,
  md5sum() { return '7fc6f9833a3bb944adf806dfe5ac2a3b'; },
  datatype() { return 'dg_msgs/StopRecording'; }
};

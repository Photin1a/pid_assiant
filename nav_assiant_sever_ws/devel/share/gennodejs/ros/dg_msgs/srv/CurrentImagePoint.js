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
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class CurrentImagePointRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.number = null;
      this.check_position = null;
    }
    else {
      if (initObj.hasOwnProperty('number')) {
        this.number = initObj.number
      }
      else {
        this.number = '';
      }
      if (initObj.hasOwnProperty('check_position')) {
        this.check_position = initObj.check_position
      }
      else {
        this.check_position = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CurrentImagePointRequest
    // Serialize message field [number]
    bufferOffset = _serializer.string(obj.number, buffer, bufferOffset);
    // Serialize message field [check_position]
    bufferOffset = _serializer.bool(obj.check_position, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CurrentImagePointRequest
    let len;
    let data = new CurrentImagePointRequest(null);
    // Deserialize message field [number]
    data.number = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [check_position]
    data.check_position = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.number.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/CurrentImagePointRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '80d0ec965164b5361e3e4b8144b462bf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string number       # 设备编码
    bool check_position # 是否检查当前位置合理性
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CurrentImagePointRequest(null);
    if (msg.number !== undefined) {
      resolved.number = msg.number;
    }
    else {
      resolved.number = ''
    }

    if (msg.check_position !== undefined) {
      resolved.check_position = msg.check_position;
    }
    else {
      resolved.check_position = false
    }

    return resolved;
    }
};

class CurrentImagePointResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.pose = null;
      this.joint = null;
      this.offset = null;
      this.custom_message = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
      }
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CurrentImagePointResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [joint]
    bufferOffset = trajectory_msgs.msg.JointTrajectoryPoint.serialize(obj.joint, buffer, bufferOffset);
    // Serialize message field [offset]
    bufferOffset = _serializer.float32(obj.offset, buffer, bufferOffset);
    // Serialize message field [custom_message]
    bufferOffset = _serializer.string(obj.custom_message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CurrentImagePointResponse
    let len;
    let data = new CurrentImagePointResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [joint]
    data.joint = trajectory_msgs.msg.JointTrajectoryPoint.deserialize(buffer, bufferOffset);
    // Deserialize message field [offset]
    data.offset = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [custom_message]
    data.custom_message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.pose);
    length += trajectory_msgs.msg.JointTrajectoryPoint.getMessageSize(object.joint);
    length += object.custom_message.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/CurrentImagePointResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c701e822a22691f7b5acbde45b528d64';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 result        # 拍照点获取结果，0：成功；非0：失败（1：拍照点不合理）
    geometry_msgs/PoseStamped pose
    trajectory_msgs/JointTrajectoryPoint joint
    float32 offset      # 升降柱伸缩量
    string custom_message
    
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CurrentImagePointResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
    }

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

    return resolved;
    }
};

module.exports = {
  Request: CurrentImagePointRequest,
  Response: CurrentImagePointResponse,
  md5sum() { return 'c451197fe7fada4a911ce8f0ae35fafe'; },
  datatype() { return 'dg_msgs/CurrentImagePoint'; }
};

// Auto-generated. Do not edit!

// (in-package dg_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

let TrainDataSet = require('../msg/TrainDataSet.js');

//-----------------------------------------------------------

class ReturnJointAnglesAndPoseRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose_camera_baselink = null;
      this.file_path = null;
      this.alter_count = null;
      this.error_data = null;
    }
    else {
      if (initObj.hasOwnProperty('pose_camera_baselink')) {
        this.pose_camera_baselink = initObj.pose_camera_baselink
      }
      else {
        this.pose_camera_baselink = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('file_path')) {
        this.file_path = initObj.file_path
      }
      else {
        this.file_path = '';
      }
      if (initObj.hasOwnProperty('alter_count')) {
        this.alter_count = initObj.alter_count
      }
      else {
        this.alter_count = 0;
      }
      if (initObj.hasOwnProperty('error_data')) {
        this.error_data = initObj.error_data
      }
      else {
        this.error_data = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ReturnJointAnglesAndPoseRequest
    // Serialize message field [pose_camera_baselink]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose_camera_baselink, buffer, bufferOffset);
    // Serialize message field [file_path]
    bufferOffset = _serializer.string(obj.file_path, buffer, bufferOffset);
    // Serialize message field [alter_count]
    bufferOffset = _serializer.int32(obj.alter_count, buffer, bufferOffset);
    // Serialize message field [error_data]
    bufferOffset = _serializer.float64(obj.error_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ReturnJointAnglesAndPoseRequest
    let len;
    let data = new ReturnJointAnglesAndPoseRequest(null);
    // Deserialize message field [pose_camera_baselink]
    data.pose_camera_baselink = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [file_path]
    data.file_path = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [alter_count]
    data.alter_count = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [error_data]
    data.error_data = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.file_path.length;
    return length + 72;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/ReturnJointAnglesAndPoseRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '46d8702fc163af79ac3d42624a67cf7a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Pose pose_camera_baselink
    string file_path
    int32 alter_count #邻近点返回数量
    float64 error_data #误差范围
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ReturnJointAnglesAndPoseRequest(null);
    if (msg.pose_camera_baselink !== undefined) {
      resolved.pose_camera_baselink = geometry_msgs.msg.Pose.Resolve(msg.pose_camera_baselink)
    }
    else {
      resolved.pose_camera_baselink = new geometry_msgs.msg.Pose()
    }

    if (msg.file_path !== undefined) {
      resolved.file_path = msg.file_path;
    }
    else {
      resolved.file_path = ''
    }

    if (msg.alter_count !== undefined) {
      resolved.alter_count = msg.alter_count;
    }
    else {
      resolved.alter_count = 0
    }

    if (msg.error_data !== undefined) {
      resolved.error_data = msg.error_data;
    }
    else {
      resolved.error_data = 0.0
    }

    return resolved;
    }
};

class ReturnJointAnglesAndPoseResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose_ret = null;
    }
    else {
      if (initObj.hasOwnProperty('pose_ret')) {
        this.pose_ret = initObj.pose_ret
      }
      else {
        this.pose_ret = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ReturnJointAnglesAndPoseResponse
    // Serialize message field [pose_ret]
    // Serialize the length for message field [pose_ret]
    bufferOffset = _serializer.uint32(obj.pose_ret.length, buffer, bufferOffset);
    obj.pose_ret.forEach((val) => {
      bufferOffset = TrainDataSet.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ReturnJointAnglesAndPoseResponse
    let len;
    let data = new ReturnJointAnglesAndPoseResponse(null);
    // Deserialize message field [pose_ret]
    // Deserialize array length for message field [pose_ret]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.pose_ret = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.pose_ret[i] = TrainDataSet.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.pose_ret.forEach((val) => {
      length += TrainDataSet.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/ReturnJointAnglesAndPoseResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'df9892c81c97ec98448ec00af1855191';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    TrainDataSet[] pose_ret
    
    ================================================================================
    MSG: dg_msgs/TrainDataSet
    geometry_msgs/Pose pose_data
    std_msgs/Float64MultiArray[] multi_joint_data
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
    MSG: std_msgs/Float64MultiArray
    # Please look at the MultiArrayLayout message definition for
    # documentation on all multiarrays.
    
    MultiArrayLayout  layout        # specification of data layout
    float64[]         data          # array of data
    
    
    ================================================================================
    MSG: std_msgs/MultiArrayLayout
    # The multiarray declares a generic multi-dimensional array of a
    # particular data type.  Dimensions are ordered from outer most
    # to inner most.
    
    MultiArrayDimension[] dim # Array of dimension properties
    uint32 data_offset        # padding elements at front of data
    
    # Accessors should ALWAYS be written in terms of dimension stride
    # and specified outer-most dimension first.
    # 
    # multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]
    #
    # A standard, 3-channel 640x480 image with interleaved color channels
    # would be specified as:
    #
    # dim[0].label  = "height"
    # dim[0].size   = 480
    # dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)
    # dim[1].label  = "width"
    # dim[1].size   = 640
    # dim[1].stride = 3*640 = 1920
    # dim[2].label  = "channel"
    # dim[2].size   = 3
    # dim[2].stride = 3
    #
    # multiarray(i,j,k) refers to the ith row, jth column, and kth channel.
    
    ================================================================================
    MSG: std_msgs/MultiArrayDimension
    string label   # label of given dimension
    uint32 size    # size of given dimension (in type units)
    uint32 stride  # stride of given dimension
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ReturnJointAnglesAndPoseResponse(null);
    if (msg.pose_ret !== undefined) {
      resolved.pose_ret = new Array(msg.pose_ret.length);
      for (let i = 0; i < resolved.pose_ret.length; ++i) {
        resolved.pose_ret[i] = TrainDataSet.Resolve(msg.pose_ret[i]);
      }
    }
    else {
      resolved.pose_ret = []
    }

    return resolved;
    }
};

module.exports = {
  Request: ReturnJointAnglesAndPoseRequest,
  Response: ReturnJointAnglesAndPoseResponse,
  md5sum() { return '68f8701d655359a5b226e67fe93ab112'; },
  datatype() { return 'dg_msgs/ReturnJointAnglesAndPose'; }
};

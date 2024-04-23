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

class InterploateRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose_camera_baselink = null;
      this.lift_data = null;
      this.filename = null;
    }
    else {
      if (initObj.hasOwnProperty('pose_camera_baselink')) {
        this.pose_camera_baselink = initObj.pose_camera_baselink
      }
      else {
        this.pose_camera_baselink = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('lift_data')) {
        this.lift_data = initObj.lift_data
      }
      else {
        this.lift_data = 0.0;
      }
      if (initObj.hasOwnProperty('filename')) {
        this.filename = initObj.filename
      }
      else {
        this.filename = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type InterploateRequest
    // Serialize message field [pose_camera_baselink]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose_camera_baselink, buffer, bufferOffset);
    // Serialize message field [lift_data]
    bufferOffset = _serializer.float64(obj.lift_data, buffer, bufferOffset);
    // Serialize message field [filename]
    bufferOffset = _serializer.string(obj.filename, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type InterploateRequest
    let len;
    let data = new InterploateRequest(null);
    // Deserialize message field [pose_camera_baselink]
    data.pose_camera_baselink = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [lift_data]
    data.lift_data = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [filename]
    data.filename = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.filename.length;
    return length + 68;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/InterploateRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bc021ded3c94f1d7e718a558a6ac5d2c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Pose              pose_camera_baselink
    float64                         lift_data       
    string                          filename
    
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
    const resolved = new InterploateRequest(null);
    if (msg.pose_camera_baselink !== undefined) {
      resolved.pose_camera_baselink = geometry_msgs.msg.Pose.Resolve(msg.pose_camera_baselink)
    }
    else {
      resolved.pose_camera_baselink = new geometry_msgs.msg.Pose()
    }

    if (msg.lift_data !== undefined) {
      resolved.lift_data = msg.lift_data;
    }
    else {
      resolved.lift_data = 0.0
    }

    if (msg.filename !== undefined) {
      resolved.filename = msg.filename;
    }
    else {
      resolved.filename = ''
    }

    return resolved;
    }
};

class InterploateResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose_dataset_array = null;
    }
    else {
      if (initObj.hasOwnProperty('pose_dataset_array')) {
        this.pose_dataset_array = initObj.pose_dataset_array
      }
      else {
        this.pose_dataset_array = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type InterploateResponse
    // Serialize message field [pose_dataset_array]
    // Serialize the length for message field [pose_dataset_array]
    bufferOffset = _serializer.uint32(obj.pose_dataset_array.length, buffer, bufferOffset);
    obj.pose_dataset_array.forEach((val) => {
      bufferOffset = TrainDataSet.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type InterploateResponse
    let len;
    let data = new InterploateResponse(null);
    // Deserialize message field [pose_dataset_array]
    // Deserialize array length for message field [pose_dataset_array]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.pose_dataset_array = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.pose_dataset_array[i] = TrainDataSet.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.pose_dataset_array.forEach((val) => {
      length += TrainDataSet.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/InterploateResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3e20d24397c619d7b865326762c629d1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    TrainDataSet[]                  pose_dataset_array
    
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
    const resolved = new InterploateResponse(null);
    if (msg.pose_dataset_array !== undefined) {
      resolved.pose_dataset_array = new Array(msg.pose_dataset_array.length);
      for (let i = 0; i < resolved.pose_dataset_array.length; ++i) {
        resolved.pose_dataset_array[i] = TrainDataSet.Resolve(msg.pose_dataset_array[i]);
      }
    }
    else {
      resolved.pose_dataset_array = []
    }

    return resolved;
    }
};

module.exports = {
  Request: InterploateRequest,
  Response: InterploateResponse,
  md5sum() { return '20ebdb9296a7b10c1ea97741e338b7bb'; },
  datatype() { return 'dg_msgs/Interploate'; }
};

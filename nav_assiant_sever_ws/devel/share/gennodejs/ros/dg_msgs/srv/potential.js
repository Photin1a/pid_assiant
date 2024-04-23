// Auto-generated. Do not edit!

// (in-package dg_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class potentialRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose = null;
      this.joints_real = null;
      this.flag_cmd = null;
    }
    else {
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('joints_real')) {
        this.joints_real = initObj.joints_real
      }
      else {
        this.joints_real = [];
      }
      if (initObj.hasOwnProperty('flag_cmd')) {
        this.flag_cmd = initObj.flag_cmd
      }
      else {
        this.flag_cmd = new std_msgs.msg.Int8MultiArray();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type potentialRequest
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [joints_real]
    bufferOffset = _arraySerializer.float64(obj.joints_real, buffer, bufferOffset, null);
    // Serialize message field [flag_cmd]
    bufferOffset = std_msgs.msg.Int8MultiArray.serialize(obj.flag_cmd, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type potentialRequest
    let len;
    let data = new potentialRequest(null);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [joints_real]
    data.joints_real = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [flag_cmd]
    data.flag_cmd = std_msgs.msg.Int8MultiArray.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.joints_real.length;
    length += std_msgs.msg.Int8MultiArray.getMessageSize(object.flag_cmd);
    return length + 60;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/potentialRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'baa5b24ffa379d7d2fdf26018ca63830';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Pose pose
    float64[]  joints_real
    std_msgs/Int8MultiArray flag_cmd
    
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
    MSG: std_msgs/Int8MultiArray
    # Please look at the MultiArrayLayout message definition for
    # documentation on all multiarrays.
    
    MultiArrayLayout  layout        # specification of data layout
    int8[]            data          # array of data
    
    
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
    const resolved = new potentialRequest(null);
    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Pose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Pose()
    }

    if (msg.joints_real !== undefined) {
      resolved.joints_real = msg.joints_real;
    }
    else {
      resolved.joints_real = []
    }

    if (msg.flag_cmd !== undefined) {
      resolved.flag_cmd = std_msgs.msg.Int8MultiArray.Resolve(msg.flag_cmd)
    }
    else {
      resolved.flag_cmd = new std_msgs.msg.Int8MultiArray()
    }

    return resolved;
    }
};

class potentialResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ret = null;
      this.joints_new_real = null;
      this.pose_new_real = null;
      this.data_error = null;
    }
    else {
      if (initObj.hasOwnProperty('ret')) {
        this.ret = initObj.ret
      }
      else {
        this.ret = 0;
      }
      if (initObj.hasOwnProperty('joints_new_real')) {
        this.joints_new_real = initObj.joints_new_real
      }
      else {
        this.joints_new_real = [];
      }
      if (initObj.hasOwnProperty('pose_new_real')) {
        this.pose_new_real = initObj.pose_new_real
      }
      else {
        this.pose_new_real = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('data_error')) {
        this.data_error = initObj.data_error
      }
      else {
        this.data_error = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type potentialResponse
    // Serialize message field [ret]
    bufferOffset = _serializer.int32(obj.ret, buffer, bufferOffset);
    // Serialize message field [joints_new_real]
    bufferOffset = _arraySerializer.float64(obj.joints_new_real, buffer, bufferOffset, null);
    // Serialize message field [pose_new_real]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose_new_real, buffer, bufferOffset);
    // Serialize message field [data_error]
    bufferOffset = _serializer.float64(obj.data_error, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type potentialResponse
    let len;
    let data = new potentialResponse(null);
    // Deserialize message field [ret]
    data.ret = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [joints_new_real]
    data.joints_new_real = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [pose_new_real]
    data.pose_new_real = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [data_error]
    data.data_error = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.joints_new_real.length;
    return length + 72;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/potentialResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'db4b01c841da9916e59cfb7bcbfa4040';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32                   ret
    float64[]                               joints_new_real
    geometry_msgs/Pose    pose_new_real
    float64         data_error
    
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
    const resolved = new potentialResponse(null);
    if (msg.ret !== undefined) {
      resolved.ret = msg.ret;
    }
    else {
      resolved.ret = 0
    }

    if (msg.joints_new_real !== undefined) {
      resolved.joints_new_real = msg.joints_new_real;
    }
    else {
      resolved.joints_new_real = []
    }

    if (msg.pose_new_real !== undefined) {
      resolved.pose_new_real = geometry_msgs.msg.Pose.Resolve(msg.pose_new_real)
    }
    else {
      resolved.pose_new_real = new geometry_msgs.msg.Pose()
    }

    if (msg.data_error !== undefined) {
      resolved.data_error = msg.data_error;
    }
    else {
      resolved.data_error = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: potentialRequest,
  Response: potentialResponse,
  md5sum() { return '90456488a5ad9b449b3876cc4ad04605'; },
  datatype() { return 'dg_msgs/potential'; }
};

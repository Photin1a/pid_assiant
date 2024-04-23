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

class getMultiJointDataRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose_camera_baselink = null;
      this.joint_data = null;
      this.is_checkself_collision = null;
      this.is_env_collision = null;
    }
    else {
      if (initObj.hasOwnProperty('pose_camera_baselink')) {
        this.pose_camera_baselink = initObj.pose_camera_baselink
      }
      else {
        this.pose_camera_baselink = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('joint_data')) {
        this.joint_data = initObj.joint_data
      }
      else {
        this.joint_data = new std_msgs.msg.Float64MultiArray();
      }
      if (initObj.hasOwnProperty('is_checkself_collision')) {
        this.is_checkself_collision = initObj.is_checkself_collision
      }
      else {
        this.is_checkself_collision = false;
      }
      if (initObj.hasOwnProperty('is_env_collision')) {
        this.is_env_collision = initObj.is_env_collision
      }
      else {
        this.is_env_collision = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type getMultiJointDataRequest
    // Serialize message field [pose_camera_baselink]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose_camera_baselink, buffer, bufferOffset);
    // Serialize message field [joint_data]
    bufferOffset = std_msgs.msg.Float64MultiArray.serialize(obj.joint_data, buffer, bufferOffset);
    // Serialize message field [is_checkself_collision]
    bufferOffset = _serializer.bool(obj.is_checkself_collision, buffer, bufferOffset);
    // Serialize message field [is_env_collision]
    bufferOffset = _serializer.bool(obj.is_env_collision, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type getMultiJointDataRequest
    let len;
    let data = new getMultiJointDataRequest(null);
    // Deserialize message field [pose_camera_baselink]
    data.pose_camera_baselink = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [joint_data]
    data.joint_data = std_msgs.msg.Float64MultiArray.deserialize(buffer, bufferOffset);
    // Deserialize message field [is_checkself_collision]
    data.is_checkself_collision = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_env_collision]
    data.is_env_collision = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Float64MultiArray.getMessageSize(object.joint_data);
    return length + 58;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/getMultiJointDataRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '79dc60ae99ca8c5779c26ad1cab10565';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Pose pose_camera_baselink
    std_msgs/Float64MultiArray joint_data
    bool is_checkself_collision
    bool is_env_collision
    
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
    const resolved = new getMultiJointDataRequest(null);
    if (msg.pose_camera_baselink !== undefined) {
      resolved.pose_camera_baselink = geometry_msgs.msg.Pose.Resolve(msg.pose_camera_baselink)
    }
    else {
      resolved.pose_camera_baselink = new geometry_msgs.msg.Pose()
    }

    if (msg.joint_data !== undefined) {
      resolved.joint_data = std_msgs.msg.Float64MultiArray.Resolve(msg.joint_data)
    }
    else {
      resolved.joint_data = new std_msgs.msg.Float64MultiArray()
    }

    if (msg.is_checkself_collision !== undefined) {
      resolved.is_checkself_collision = msg.is_checkself_collision;
    }
    else {
      resolved.is_checkself_collision = false
    }

    if (msg.is_env_collision !== undefined) {
      resolved.is_env_collision = msg.is_env_collision;
    }
    else {
      resolved.is_env_collision = false
    }

    return resolved;
    }
};

class getMultiJointDataResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.multi_joint_data = null;
    }
    else {
      if (initObj.hasOwnProperty('multi_joint_data')) {
        this.multi_joint_data = initObj.multi_joint_data
      }
      else {
        this.multi_joint_data = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type getMultiJointDataResponse
    // Serialize message field [multi_joint_data]
    // Serialize the length for message field [multi_joint_data]
    bufferOffset = _serializer.uint32(obj.multi_joint_data.length, buffer, bufferOffset);
    obj.multi_joint_data.forEach((val) => {
      bufferOffset = std_msgs.msg.Float64MultiArray.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type getMultiJointDataResponse
    let len;
    let data = new getMultiJointDataResponse(null);
    // Deserialize message field [multi_joint_data]
    // Deserialize array length for message field [multi_joint_data]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.multi_joint_data = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.multi_joint_data[i] = std_msgs.msg.Float64MultiArray.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.multi_joint_data.forEach((val) => {
      length += std_msgs.msg.Float64MultiArray.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/getMultiJointDataResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8f36bb3dc5e97ebfc79b2c4dbc512776';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Float64MultiArray[] multi_joint_data
    
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
    const resolved = new getMultiJointDataResponse(null);
    if (msg.multi_joint_data !== undefined) {
      resolved.multi_joint_data = new Array(msg.multi_joint_data.length);
      for (let i = 0; i < resolved.multi_joint_data.length; ++i) {
        resolved.multi_joint_data[i] = std_msgs.msg.Float64MultiArray.Resolve(msg.multi_joint_data[i]);
      }
    }
    else {
      resolved.multi_joint_data = []
    }

    return resolved;
    }
};

module.exports = {
  Request: getMultiJointDataRequest,
  Response: getMultiJointDataResponse,
  md5sum() { return '41a9011d770649a5881591be09a91dc1'; },
  datatype() { return 'dg_msgs/getMultiJointData'; }
};

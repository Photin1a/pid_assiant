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

class CameraTargetOrderRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose_camera_baselink_array = null;
      this.begin_joint = null;
      this.end_joint = null;
      this.lift_data = null;
    }
    else {
      if (initObj.hasOwnProperty('pose_camera_baselink_array')) {
        this.pose_camera_baselink_array = initObj.pose_camera_baselink_array
      }
      else {
        this.pose_camera_baselink_array = new geometry_msgs.msg.PoseArray();
      }
      if (initObj.hasOwnProperty('begin_joint')) {
        this.begin_joint = initObj.begin_joint
      }
      else {
        this.begin_joint = new std_msgs.msg.Float64MultiArray();
      }
      if (initObj.hasOwnProperty('end_joint')) {
        this.end_joint = initObj.end_joint
      }
      else {
        this.end_joint = new std_msgs.msg.Float64MultiArray();
      }
      if (initObj.hasOwnProperty('lift_data')) {
        this.lift_data = initObj.lift_data
      }
      else {
        this.lift_data = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CameraTargetOrderRequest
    // Serialize message field [pose_camera_baselink_array]
    bufferOffset = geometry_msgs.msg.PoseArray.serialize(obj.pose_camera_baselink_array, buffer, bufferOffset);
    // Serialize message field [begin_joint]
    bufferOffset = std_msgs.msg.Float64MultiArray.serialize(obj.begin_joint, buffer, bufferOffset);
    // Serialize message field [end_joint]
    bufferOffset = std_msgs.msg.Float64MultiArray.serialize(obj.end_joint, buffer, bufferOffset);
    // Serialize message field [lift_data]
    bufferOffset = _arraySerializer.float64(obj.lift_data, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CameraTargetOrderRequest
    let len;
    let data = new CameraTargetOrderRequest(null);
    // Deserialize message field [pose_camera_baselink_array]
    data.pose_camera_baselink_array = geometry_msgs.msg.PoseArray.deserialize(buffer, bufferOffset);
    // Deserialize message field [begin_joint]
    data.begin_joint = std_msgs.msg.Float64MultiArray.deserialize(buffer, bufferOffset);
    // Deserialize message field [end_joint]
    data.end_joint = std_msgs.msg.Float64MultiArray.deserialize(buffer, bufferOffset);
    // Deserialize message field [lift_data]
    data.lift_data = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PoseArray.getMessageSize(object.pose_camera_baselink_array);
    length += std_msgs.msg.Float64MultiArray.getMessageSize(object.begin_joint);
    length += std_msgs.msg.Float64MultiArray.getMessageSize(object.end_joint);
    length += 8 * object.lift_data.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/CameraTargetOrderRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '96d829781359ee3a89af49c3b0db055d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/PoseArray pose_camera_baselink_array
    std_msgs/Float64MultiArray begin_joint
    std_msgs/Float64MultiArray end_joint
    float64[]                                  lift_data
    
    ================================================================================
    MSG: geometry_msgs/PoseArray
    # An array of poses with a header for global reference.
    
    Header header
    
    Pose[] poses
    
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
    const resolved = new CameraTargetOrderRequest(null);
    if (msg.pose_camera_baselink_array !== undefined) {
      resolved.pose_camera_baselink_array = geometry_msgs.msg.PoseArray.Resolve(msg.pose_camera_baselink_array)
    }
    else {
      resolved.pose_camera_baselink_array = new geometry_msgs.msg.PoseArray()
    }

    if (msg.begin_joint !== undefined) {
      resolved.begin_joint = std_msgs.msg.Float64MultiArray.Resolve(msg.begin_joint)
    }
    else {
      resolved.begin_joint = new std_msgs.msg.Float64MultiArray()
    }

    if (msg.end_joint !== undefined) {
      resolved.end_joint = std_msgs.msg.Float64MultiArray.Resolve(msg.end_joint)
    }
    else {
      resolved.end_joint = new std_msgs.msg.Float64MultiArray()
    }

    if (msg.lift_data !== undefined) {
      resolved.lift_data = msg.lift_data;
    }
    else {
      resolved.lift_data = []
    }

    return resolved;
    }
};

class CameraTargetOrderResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.order_index = null;
      this.multi_joint_data = null;
    }
    else {
      if (initObj.hasOwnProperty('order_index')) {
        this.order_index = initObj.order_index
      }
      else {
        this.order_index = [];
      }
      if (initObj.hasOwnProperty('multi_joint_data')) {
        this.multi_joint_data = initObj.multi_joint_data
      }
      else {
        this.multi_joint_data = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CameraTargetOrderResponse
    // Serialize message field [order_index]
    bufferOffset = _arraySerializer.int32(obj.order_index, buffer, bufferOffset, null);
    // Serialize message field [multi_joint_data]
    // Serialize the length for message field [multi_joint_data]
    bufferOffset = _serializer.uint32(obj.multi_joint_data.length, buffer, bufferOffset);
    obj.multi_joint_data.forEach((val) => {
      bufferOffset = std_msgs.msg.Float64MultiArray.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CameraTargetOrderResponse
    let len;
    let data = new CameraTargetOrderResponse(null);
    // Deserialize message field [order_index]
    data.order_index = _arrayDeserializer.int32(buffer, bufferOffset, null)
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
    length += 4 * object.order_index.length;
    object.multi_joint_data.forEach((val) => {
      length += std_msgs.msg.Float64MultiArray.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/CameraTargetOrderResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '39b33a8637c95e13516daeef4683dc68';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32[]                      order_index
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
    const resolved = new CameraTargetOrderResponse(null);
    if (msg.order_index !== undefined) {
      resolved.order_index = msg.order_index;
    }
    else {
      resolved.order_index = []
    }

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
  Request: CameraTargetOrderRequest,
  Response: CameraTargetOrderResponse,
  md5sum() { return '342700011bd240dab8e5b7f40ce1f93b'; },
  datatype() { return 'dg_msgs/CameraTargetOrder'; }
};

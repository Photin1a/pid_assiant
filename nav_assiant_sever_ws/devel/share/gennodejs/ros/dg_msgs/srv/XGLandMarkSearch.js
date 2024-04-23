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


//-----------------------------------------------------------

class XGLandMarkSearchRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.camear_factory_start = null;
      this.search_radius = null;
    }
    else {
      if (initObj.hasOwnProperty('camear_factory_start')) {
        this.camear_factory_start = initObj.camear_factory_start
      }
      else {
        this.camear_factory_start = new geometry_msgs.msg.PoseArray();
      }
      if (initObj.hasOwnProperty('search_radius')) {
        this.search_radius = initObj.search_radius
      }
      else {
        this.search_radius = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type XGLandMarkSearchRequest
    // Serialize message field [camear_factory_start]
    bufferOffset = geometry_msgs.msg.PoseArray.serialize(obj.camear_factory_start, buffer, bufferOffset);
    // Serialize message field [search_radius]
    bufferOffset = _serializer.float32(obj.search_radius, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type XGLandMarkSearchRequest
    let len;
    let data = new XGLandMarkSearchRequest(null);
    // Deserialize message field [camear_factory_start]
    data.camear_factory_start = geometry_msgs.msg.PoseArray.deserialize(buffer, bufferOffset);
    // Deserialize message field [search_radius]
    data.search_radius = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PoseArray.getMessageSize(object.camear_factory_start);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/XGLandMarkSearchRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '95d89be3d2b86dcd022d60de928abd85';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 仙工站点搜索 - 欧式距离1.6m(包含z)+并集
    geometry_msgs/PoseArray camear_factory_start            # 需要搜索的pose
    float32 search_radius                                   # 搜索半径
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new XGLandMarkSearchRequest(null);
    if (msg.camear_factory_start !== undefined) {
      resolved.camear_factory_start = geometry_msgs.msg.PoseArray.Resolve(msg.camear_factory_start)
    }
    else {
      resolved.camear_factory_start = new geometry_msgs.msg.PoseArray()
    }

    if (msg.search_radius !== undefined) {
      resolved.search_radius = msg.search_radius;
    }
    else {
      resolved.search_radius = 0.0
    }

    return resolved;
    }
};

class XGLandMarkSearchResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.motion_link_factory_start = null;
    }
    else {
      if (initObj.hasOwnProperty('motion_link_factory_start')) {
        this.motion_link_factory_start = initObj.motion_link_factory_start
      }
      else {
        this.motion_link_factory_start = new geometry_msgs.msg.PoseArray();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type XGLandMarkSearchResponse
    // Serialize message field [motion_link_factory_start]
    bufferOffset = geometry_msgs.msg.PoseArray.serialize(obj.motion_link_factory_start, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type XGLandMarkSearchResponse
    let len;
    let data = new XGLandMarkSearchResponse(null);
    // Deserialize message field [motion_link_factory_start]
    data.motion_link_factory_start = geometry_msgs.msg.PoseArray.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PoseArray.getMessageSize(object.motion_link_factory_start);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/XGLandMarkSearchResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5245404957a7d8e954e936dff4aae107';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/PoseArray motion_link_factory_start       # 搜索到的pose
    
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new XGLandMarkSearchResponse(null);
    if (msg.motion_link_factory_start !== undefined) {
      resolved.motion_link_factory_start = geometry_msgs.msg.PoseArray.Resolve(msg.motion_link_factory_start)
    }
    else {
      resolved.motion_link_factory_start = new geometry_msgs.msg.PoseArray()
    }

    return resolved;
    }
};

module.exports = {
  Request: XGLandMarkSearchRequest,
  Response: XGLandMarkSearchResponse,
  md5sum() { return '7434ec9527fdaa3278286227ab996863'; },
  datatype() { return 'dg_msgs/XGLandMarkSearch'; }
};

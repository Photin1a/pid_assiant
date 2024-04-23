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

let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class TeachingRegframeRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.update_head2F = null;
      this.pcd_regframe_path = null;
      this.json_save_path = null;
      this.region_name = null;
      this.lidar_topic = null;
    }
    else {
      if (initObj.hasOwnProperty('update_head2F')) {
        this.update_head2F = initObj.update_head2F
      }
      else {
        this.update_head2F = false;
      }
      if (initObj.hasOwnProperty('pcd_regframe_path')) {
        this.pcd_regframe_path = initObj.pcd_regframe_path
      }
      else {
        this.pcd_regframe_path = '';
      }
      if (initObj.hasOwnProperty('json_save_path')) {
        this.json_save_path = initObj.json_save_path
      }
      else {
        this.json_save_path = '';
      }
      if (initObj.hasOwnProperty('region_name')) {
        this.region_name = initObj.region_name
      }
      else {
        this.region_name = '';
      }
      if (initObj.hasOwnProperty('lidar_topic')) {
        this.lidar_topic = initObj.lidar_topic
      }
      else {
        this.lidar_topic = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TeachingRegframeRequest
    // Serialize message field [update_head2F]
    bufferOffset = _serializer.bool(obj.update_head2F, buffer, bufferOffset);
    // Serialize message field [pcd_regframe_path]
    bufferOffset = _serializer.string(obj.pcd_regframe_path, buffer, bufferOffset);
    // Serialize message field [json_save_path]
    bufferOffset = _serializer.string(obj.json_save_path, buffer, bufferOffset);
    // Serialize message field [region_name]
    bufferOffset = _serializer.string(obj.region_name, buffer, bufferOffset);
    // Serialize message field [lidar_topic]
    bufferOffset = _serializer.string(obj.lidar_topic, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TeachingRegframeRequest
    let len;
    let data = new TeachingRegframeRequest(null);
    // Deserialize message field [update_head2F]
    data.update_head2F = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [pcd_regframe_path]
    data.pcd_regframe_path = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [json_save_path]
    data.json_save_path = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [region_name]
    data.region_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [lidar_topic]
    data.lidar_topic = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.pcd_regframe_path.length;
    length += object.json_save_path.length;
    length += object.region_name.length;
    length += object.lidar_topic.length;
    return length + 17;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/TeachingRegframeRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '955a95a4072012a34535bf74a9393e3c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool update_head2F
    string pcd_regframe_path
    string json_save_path
    string region_name
    string lidar_topic
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TeachingRegframeRequest(null);
    if (msg.update_head2F !== undefined) {
      resolved.update_head2F = msg.update_head2F;
    }
    else {
      resolved.update_head2F = false
    }

    if (msg.pcd_regframe_path !== undefined) {
      resolved.pcd_regframe_path = msg.pcd_regframe_path;
    }
    else {
      resolved.pcd_regframe_path = ''
    }

    if (msg.json_save_path !== undefined) {
      resolved.json_save_path = msg.json_save_path;
    }
    else {
      resolved.json_save_path = ''
    }

    if (msg.region_name !== undefined) {
      resolved.region_name = msg.region_name;
    }
    else {
      resolved.region_name = ''
    }

    if (msg.lidar_topic !== undefined) {
      resolved.lidar_topic = msg.lidar_topic;
    }
    else {
      resolved.lidar_topic = ''
    }

    return resolved;
    }
};

class TeachingRegframeResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pcd_regframe_path = null;
      this.pose_regframe2head = null;
      this.pose_head2F = null;
    }
    else {
      if (initObj.hasOwnProperty('pcd_regframe_path')) {
        this.pcd_regframe_path = initObj.pcd_regframe_path
      }
      else {
        this.pcd_regframe_path = '';
      }
      if (initObj.hasOwnProperty('pose_regframe2head')) {
        this.pose_regframe2head = initObj.pose_regframe2head
      }
      else {
        this.pose_regframe2head = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('pose_head2F')) {
        this.pose_head2F = initObj.pose_head2F
      }
      else {
        this.pose_head2F = new geometry_msgs.msg.Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TeachingRegframeResponse
    // Serialize message field [pcd_regframe_path]
    bufferOffset = _serializer.string(obj.pcd_regframe_path, buffer, bufferOffset);
    // Serialize message field [pose_regframe2head]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose_regframe2head, buffer, bufferOffset);
    // Serialize message field [pose_head2F]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose_head2F, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TeachingRegframeResponse
    let len;
    let data = new TeachingRegframeResponse(null);
    // Deserialize message field [pcd_regframe_path]
    data.pcd_regframe_path = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pose_regframe2head]
    data.pose_regframe2head = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [pose_head2F]
    data.pose_head2F = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.pcd_regframe_path.length;
    return length + 116;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/TeachingRegframeResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f8fc278f54dd5e1f6f87b89c3c58641c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string pcd_regframe_path
    geometry_msgs/Pose pose_regframe2head
    geometry_msgs/Pose pose_head2F
    
    
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
    const resolved = new TeachingRegframeResponse(null);
    if (msg.pcd_regframe_path !== undefined) {
      resolved.pcd_regframe_path = msg.pcd_regframe_path;
    }
    else {
      resolved.pcd_regframe_path = ''
    }

    if (msg.pose_regframe2head !== undefined) {
      resolved.pose_regframe2head = geometry_msgs.msg.Pose.Resolve(msg.pose_regframe2head)
    }
    else {
      resolved.pose_regframe2head = new geometry_msgs.msg.Pose()
    }

    if (msg.pose_head2F !== undefined) {
      resolved.pose_head2F = geometry_msgs.msg.Pose.Resolve(msg.pose_head2F)
    }
    else {
      resolved.pose_head2F = new geometry_msgs.msg.Pose()
    }

    return resolved;
    }
};

module.exports = {
  Request: TeachingRegframeRequest,
  Response: TeachingRegframeResponse,
  md5sum() { return '82733c39cc3dc283e1ac8112691de480'; },
  datatype() { return 'dg_msgs/TeachingRegframe'; }
};

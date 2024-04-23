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


//-----------------------------------------------------------

class CollisionTestRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.planning_group = null;
    }
    else {
      if (initObj.hasOwnProperty('planning_group')) {
        this.planning_group = initObj.planning_group
      }
      else {
        this.planning_group = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CollisionTestRequest
    // Serialize message field [planning_group]
    bufferOffset = _serializer.string(obj.planning_group, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CollisionTestRequest
    let len;
    let data = new CollisionTestRequest(null);
    // Deserialize message field [planning_group]
    data.planning_group = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.planning_group.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/CollisionTestRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6b02e06b167eb20b51185dc7d0b638aa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string planning_group
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CollisionTestRequest(null);
    if (msg.planning_group !== undefined) {
      resolved.planning_group = msg.planning_group;
    }
    else {
      resolved.planning_group = ''
    }

    return resolved;
    }
};

class CollisionTestResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Is_collision = null;
      this.collision_joint = null;
    }
    else {
      if (initObj.hasOwnProperty('Is_collision')) {
        this.Is_collision = initObj.Is_collision
      }
      else {
        this.Is_collision = false;
      }
      if (initObj.hasOwnProperty('collision_joint')) {
        this.collision_joint = initObj.collision_joint
      }
      else {
        this.collision_joint = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CollisionTestResponse
    // Serialize message field [Is_collision]
    bufferOffset = _serializer.bool(obj.Is_collision, buffer, bufferOffset);
    // Serialize message field [collision_joint]
    bufferOffset = _arraySerializer.string(obj.collision_joint, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CollisionTestResponse
    let len;
    let data = new CollisionTestResponse(null);
    // Deserialize message field [Is_collision]
    data.Is_collision = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [collision_joint]
    data.collision_joint = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.collision_joint.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/CollisionTestResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bf09aec3412804357417651c82888ed6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool Is_collision
    string[] collision_joint
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CollisionTestResponse(null);
    if (msg.Is_collision !== undefined) {
      resolved.Is_collision = msg.Is_collision;
    }
    else {
      resolved.Is_collision = false
    }

    if (msg.collision_joint !== undefined) {
      resolved.collision_joint = msg.collision_joint;
    }
    else {
      resolved.collision_joint = []
    }

    return resolved;
    }
};

module.exports = {
  Request: CollisionTestRequest,
  Response: CollisionTestResponse,
  md5sum() { return '2f299f8cf2ba5e251107e33972dff6f4'; },
  datatype() { return 'dg_msgs/CollisionTest'; }
};

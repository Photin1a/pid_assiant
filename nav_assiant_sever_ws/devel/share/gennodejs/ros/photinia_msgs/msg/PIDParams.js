// Auto-generated. Do not edit!

// (in-package photinia_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class PIDParams {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.time = null;
      this.test_distance = null;
      this.max_linear = null;
      this.max_w = null;
      this.angle_p = null;
      this.angle_i = null;
      this.angle_d = null;
      this.linear_p = null;
      this.linear_i = null;
      this.linear_d = null;
    }
    else {
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = '';
      }
      if (initObj.hasOwnProperty('test_distance')) {
        this.test_distance = initObj.test_distance
      }
      else {
        this.test_distance = 0.0;
      }
      if (initObj.hasOwnProperty('max_linear')) {
        this.max_linear = initObj.max_linear
      }
      else {
        this.max_linear = 0.0;
      }
      if (initObj.hasOwnProperty('max_w')) {
        this.max_w = initObj.max_w
      }
      else {
        this.max_w = 0.0;
      }
      if (initObj.hasOwnProperty('angle_p')) {
        this.angle_p = initObj.angle_p
      }
      else {
        this.angle_p = 0.0;
      }
      if (initObj.hasOwnProperty('angle_i')) {
        this.angle_i = initObj.angle_i
      }
      else {
        this.angle_i = 0.0;
      }
      if (initObj.hasOwnProperty('angle_d')) {
        this.angle_d = initObj.angle_d
      }
      else {
        this.angle_d = 0.0;
      }
      if (initObj.hasOwnProperty('linear_p')) {
        this.linear_p = initObj.linear_p
      }
      else {
        this.linear_p = 0.0;
      }
      if (initObj.hasOwnProperty('linear_i')) {
        this.linear_i = initObj.linear_i
      }
      else {
        this.linear_i = 0.0;
      }
      if (initObj.hasOwnProperty('linear_d')) {
        this.linear_d = initObj.linear_d
      }
      else {
        this.linear_d = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PIDParams
    // Serialize message field [time]
    bufferOffset = _serializer.string(obj.time, buffer, bufferOffset);
    // Serialize message field [test_distance]
    bufferOffset = _serializer.float64(obj.test_distance, buffer, bufferOffset);
    // Serialize message field [max_linear]
    bufferOffset = _serializer.float64(obj.max_linear, buffer, bufferOffset);
    // Serialize message field [max_w]
    bufferOffset = _serializer.float64(obj.max_w, buffer, bufferOffset);
    // Serialize message field [angle_p]
    bufferOffset = _serializer.float64(obj.angle_p, buffer, bufferOffset);
    // Serialize message field [angle_i]
    bufferOffset = _serializer.float64(obj.angle_i, buffer, bufferOffset);
    // Serialize message field [angle_d]
    bufferOffset = _serializer.float64(obj.angle_d, buffer, bufferOffset);
    // Serialize message field [linear_p]
    bufferOffset = _serializer.float64(obj.linear_p, buffer, bufferOffset);
    // Serialize message field [linear_i]
    bufferOffset = _serializer.float64(obj.linear_i, buffer, bufferOffset);
    // Serialize message field [linear_d]
    bufferOffset = _serializer.float64(obj.linear_d, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PIDParams
    let len;
    let data = new PIDParams(null);
    // Deserialize message field [time]
    data.time = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [test_distance]
    data.test_distance = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [max_linear]
    data.max_linear = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [max_w]
    data.max_w = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [angle_p]
    data.angle_p = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [angle_i]
    data.angle_i = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [angle_d]
    data.angle_d = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [linear_p]
    data.linear_p = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [linear_i]
    data.linear_i = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [linear_d]
    data.linear_d = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.time.length;
    return length + 76;
  }

  static datatype() {
    // Returns string type for a message object
    return 'photinia_msgs/PIDParams';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7a2c7c5eae38f45d6993a091f91254ea';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string time
    float64 test_distance
    float64 max_linear
    float64 max_w
    float64 angle_p
    float64 angle_i
    float64 angle_d
    float64 linear_p
    float64 linear_i
    float64 linear_d
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PIDParams(null);
    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = ''
    }

    if (msg.test_distance !== undefined) {
      resolved.test_distance = msg.test_distance;
    }
    else {
      resolved.test_distance = 0.0
    }

    if (msg.max_linear !== undefined) {
      resolved.max_linear = msg.max_linear;
    }
    else {
      resolved.max_linear = 0.0
    }

    if (msg.max_w !== undefined) {
      resolved.max_w = msg.max_w;
    }
    else {
      resolved.max_w = 0.0
    }

    if (msg.angle_p !== undefined) {
      resolved.angle_p = msg.angle_p;
    }
    else {
      resolved.angle_p = 0.0
    }

    if (msg.angle_i !== undefined) {
      resolved.angle_i = msg.angle_i;
    }
    else {
      resolved.angle_i = 0.0
    }

    if (msg.angle_d !== undefined) {
      resolved.angle_d = msg.angle_d;
    }
    else {
      resolved.angle_d = 0.0
    }

    if (msg.linear_p !== undefined) {
      resolved.linear_p = msg.linear_p;
    }
    else {
      resolved.linear_p = 0.0
    }

    if (msg.linear_i !== undefined) {
      resolved.linear_i = msg.linear_i;
    }
    else {
      resolved.linear_i = 0.0
    }

    if (msg.linear_d !== undefined) {
      resolved.linear_d = msg.linear_d;
    }
    else {
      resolved.linear_d = 0.0
    }

    return resolved;
    }
};

module.exports = PIDParams;

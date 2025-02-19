// Auto-generated. Do not edit!

// (in-package dg_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class potential_cloudRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cloud_cmd = null;
    }
    else {
      if (initObj.hasOwnProperty('cloud_cmd')) {
        this.cloud_cmd = initObj.cloud_cmd
      }
      else {
        this.cloud_cmd = new sensor_msgs.msg.PointCloud2();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type potential_cloudRequest
    // Serialize message field [cloud_cmd]
    bufferOffset = sensor_msgs.msg.PointCloud2.serialize(obj.cloud_cmd, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type potential_cloudRequest
    let len;
    let data = new potential_cloudRequest(null);
    // Deserialize message field [cloud_cmd]
    data.cloud_cmd = sensor_msgs.msg.PointCloud2.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.PointCloud2.getMessageSize(object.cloud_cmd);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/potential_cloudRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c2952293ab925308292d861e4c4f2da8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    sensor_msgs/PointCloud2 cloud_cmd
    
    ================================================================================
    MSG: sensor_msgs/PointCloud2
    # This message holds a collection of N-dimensional points, which may
    # contain additional information such as normals, intensity, etc. The
    # point data is stored as a binary blob, its layout described by the
    # contents of the "fields" array.
    
    # The point cloud data may be organized 2d (image-like) or 1d
    # (unordered). Point clouds organized as 2d images may be produced by
    # camera depth sensors such as stereo or time-of-flight.
    
    # Time of sensor data acquisition, and the coordinate frame ID (for 3d
    # points).
    Header header
    
    # 2D structure of the point cloud. If the cloud is unordered, height is
    # 1 and width is the length of the point cloud.
    uint32 height
    uint32 width
    
    # Describes the channels and their layout in the binary data blob.
    PointField[] fields
    
    bool    is_bigendian # Is this data bigendian?
    uint32  point_step   # Length of a point in bytes
    uint32  row_step     # Length of a row in bytes
    uint8[] data         # Actual point data, size is (row_step*height)
    
    bool is_dense        # True if there are no invalid points
    
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
    MSG: sensor_msgs/PointField
    # This message holds the description of one point entry in the
    # PointCloud2 message format.
    uint8 INT8    = 1
    uint8 UINT8   = 2
    uint8 INT16   = 3
    uint8 UINT16  = 4
    uint8 INT32   = 5
    uint8 UINT32  = 6
    uint8 FLOAT32 = 7
    uint8 FLOAT64 = 8
    
    string name      # Name of field
    uint32 offset    # Offset from start of point struct
    uint8  datatype  # Datatype enumeration, see above
    uint32 count     # How many elements in the field
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new potential_cloudRequest(null);
    if (msg.cloud_cmd !== undefined) {
      resolved.cloud_cmd = sensor_msgs.msg.PointCloud2.Resolve(msg.cloud_cmd)
    }
    else {
      resolved.cloud_cmd = new sensor_msgs.msg.PointCloud2()
    }

    return resolved;
    }
};

class potential_cloudResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.flag_cloud = null;
    }
    else {
      if (initObj.hasOwnProperty('flag_cloud')) {
        this.flag_cloud = initObj.flag_cloud
      }
      else {
        this.flag_cloud = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type potential_cloudResponse
    // Serialize message field [flag_cloud]
    bufferOffset = _serializer.int8(obj.flag_cloud, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type potential_cloudResponse
    let len;
    let data = new potential_cloudResponse(null);
    // Deserialize message field [flag_cloud]
    data.flag_cloud = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/potential_cloudResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd71254472aedb57a5a396e0e444ee951';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 flag_cloud
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new potential_cloudResponse(null);
    if (msg.flag_cloud !== undefined) {
      resolved.flag_cloud = msg.flag_cloud;
    }
    else {
      resolved.flag_cloud = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: potential_cloudRequest,
  Response: potential_cloudResponse,
  md5sum() { return '73d2c4d627d9757c7b058b1b0296d8a7'; },
  datatype() { return 'dg_msgs/potential_cloud'; }
};

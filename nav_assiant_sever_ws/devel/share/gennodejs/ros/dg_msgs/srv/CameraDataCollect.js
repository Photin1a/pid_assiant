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

let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

class CameraDataCollectRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.point_cloud_path = null;
    }
    else {
      if (initObj.hasOwnProperty('point_cloud_path')) {
        this.point_cloud_path = initObj.point_cloud_path
      }
      else {
        this.point_cloud_path = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CameraDataCollectRequest
    // Serialize message field [point_cloud_path]
    bufferOffset = _serializer.string(obj.point_cloud_path, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CameraDataCollectRequest
    let len;
    let data = new CameraDataCollectRequest(null);
    // Deserialize message field [point_cloud_path]
    data.point_cloud_path = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.point_cloud_path.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/CameraDataCollectRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '64334ff0caad3c60c3dbf62c3620ae4c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string point_cloud_path
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CameraDataCollectRequest(null);
    if (msg.point_cloud_path !== undefined) {
      resolved.point_cloud_path = msg.point_cloud_path;
    }
    else {
      resolved.point_cloud_path = ''
    }

    return resolved;
    }
};

class CameraDataCollectResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.PointCloud = null;
    }
    else {
      if (initObj.hasOwnProperty('PointCloud')) {
        this.PointCloud = initObj.PointCloud
      }
      else {
        this.PointCloud = new sensor_msgs.msg.PointCloud2();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CameraDataCollectResponse
    // Serialize message field [PointCloud]
    bufferOffset = sensor_msgs.msg.PointCloud2.serialize(obj.PointCloud, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CameraDataCollectResponse
    let len;
    let data = new CameraDataCollectResponse(null);
    // Deserialize message field [PointCloud]
    data.PointCloud = sensor_msgs.msg.PointCloud2.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.PointCloud2.getMessageSize(object.PointCloud);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/CameraDataCollectResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '62cbe1cfe333a66132a02f178e9a8274';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    sensor_msgs/PointCloud2 PointCloud
    
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
    const resolved = new CameraDataCollectResponse(null);
    if (msg.PointCloud !== undefined) {
      resolved.PointCloud = sensor_msgs.msg.PointCloud2.Resolve(msg.PointCloud)
    }
    else {
      resolved.PointCloud = new sensor_msgs.msg.PointCloud2()
    }

    return resolved;
    }
};

module.exports = {
  Request: CameraDataCollectRequest,
  Response: CameraDataCollectResponse,
  md5sum() { return 'c67c27276579d6590e6569ff105e6071'; },
  datatype() { return 'dg_msgs/CameraDataCollect'; }
};

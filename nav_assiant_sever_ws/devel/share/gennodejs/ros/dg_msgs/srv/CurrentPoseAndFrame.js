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

class CurrentPoseAndFrameRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sensor_type = null;
      this.sensor_id = null;
      this.directory = null;
      this.frame_type = null;
    }
    else {
      if (initObj.hasOwnProperty('sensor_type')) {
        this.sensor_type = initObj.sensor_type
      }
      else {
        this.sensor_type = '';
      }
      if (initObj.hasOwnProperty('sensor_id')) {
        this.sensor_id = initObj.sensor_id
      }
      else {
        this.sensor_id = '';
      }
      if (initObj.hasOwnProperty('directory')) {
        this.directory = initObj.directory
      }
      else {
        this.directory = '';
      }
      if (initObj.hasOwnProperty('frame_type')) {
        this.frame_type = initObj.frame_type
      }
      else {
        this.frame_type = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CurrentPoseAndFrameRequest
    // Serialize message field [sensor_type]
    bufferOffset = _serializer.string(obj.sensor_type, buffer, bufferOffset);
    // Serialize message field [sensor_id]
    bufferOffset = _serializer.string(obj.sensor_id, buffer, bufferOffset);
    // Serialize message field [directory]
    bufferOffset = _serializer.string(obj.directory, buffer, bufferOffset);
    // Serialize message field [frame_type]
    bufferOffset = _serializer.string(obj.frame_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CurrentPoseAndFrameRequest
    let len;
    let data = new CurrentPoseAndFrameRequest(null);
    // Deserialize message field [sensor_type]
    data.sensor_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [sensor_id]
    data.sensor_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [directory]
    data.directory = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [frame_type]
    data.frame_type = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.sensor_type.length;
    length += object.sensor_id.length;
    length += object.directory.length;
    length += object.frame_type.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/CurrentPoseAndFrameRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c3c2927265057c7c63498a08d017d864';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 采集区域帧/车头帧
    string sensor_type         # 雷达（lidar）、精扫相机（camera）
    string sensor_id           # 雷达topic  相机分组编号
    string directory           # 数据存放目录
    string frame_type          # 帧类型：车头配准帧（head）区域配准帧（region）
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CurrentPoseAndFrameRequest(null);
    if (msg.sensor_type !== undefined) {
      resolved.sensor_type = msg.sensor_type;
    }
    else {
      resolved.sensor_type = ''
    }

    if (msg.sensor_id !== undefined) {
      resolved.sensor_id = msg.sensor_id;
    }
    else {
      resolved.sensor_id = ''
    }

    if (msg.directory !== undefined) {
      resolved.directory = msg.directory;
    }
    else {
      resolved.directory = ''
    }

    if (msg.frame_type !== undefined) {
      resolved.frame_type = msg.frame_type;
    }
    else {
      resolved.frame_type = ''
    }

    return resolved;
    }
};

class CurrentPoseAndFrameResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.pose = null;
      this.data_file_path = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('data_file_path')) {
        this.data_file_path = initObj.data_file_path
      }
      else {
        this.data_file_path = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CurrentPoseAndFrameResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [data_file_path]
    bufferOffset = _serializer.string(obj.data_file_path, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CurrentPoseAndFrameResponse
    let len;
    let data = new CurrentPoseAndFrameResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [data_file_path]
    data.data_file_path = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.pose);
    length += object.data_file_path.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/CurrentPoseAndFrameResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f463f8e622160c20ef7649d2827224d9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 result                       # 0: 成功  非0：失败
    geometry_msgs/PoseStamped pose     # 当前机器人全局坐标
    string data_file_path              # 采集数据存放路径
    
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
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
    const resolved = new CurrentPoseAndFrameResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.PoseStamped.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.data_file_path !== undefined) {
      resolved.data_file_path = msg.data_file_path;
    }
    else {
      resolved.data_file_path = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: CurrentPoseAndFrameRequest,
  Response: CurrentPoseAndFrameResponse,
  md5sum() { return '413286d2ab742cdfc7a2610d488af047'; },
  datatype() { return 'dg_msgs/CurrentPoseAndFrame'; }
};

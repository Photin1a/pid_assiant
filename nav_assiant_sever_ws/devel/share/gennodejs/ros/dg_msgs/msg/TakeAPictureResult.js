// Auto-generated. Do not edit!

// (in-package dg_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let UniversalStateInfo = require('./UniversalStateInfo.js');

//-----------------------------------------------------------

class TakeAPictureResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pointCloud = null;
      this.rgb = null;
      this.depth = null;
      this.state_info = null;
    }
    else {
      if (initObj.hasOwnProperty('pointCloud')) {
        this.pointCloud = initObj.pointCloud
      }
      else {
        this.pointCloud = '';
      }
      if (initObj.hasOwnProperty('rgb')) {
        this.rgb = initObj.rgb
      }
      else {
        this.rgb = '';
      }
      if (initObj.hasOwnProperty('depth')) {
        this.depth = initObj.depth
      }
      else {
        this.depth = '';
      }
      if (initObj.hasOwnProperty('state_info')) {
        this.state_info = initObj.state_info
      }
      else {
        this.state_info = new UniversalStateInfo();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TakeAPictureResult
    // Serialize message field [pointCloud]
    bufferOffset = _serializer.string(obj.pointCloud, buffer, bufferOffset);
    // Serialize message field [rgb]
    bufferOffset = _serializer.string(obj.rgb, buffer, bufferOffset);
    // Serialize message field [depth]
    bufferOffset = _serializer.string(obj.depth, buffer, bufferOffset);
    // Serialize message field [state_info]
    bufferOffset = UniversalStateInfo.serialize(obj.state_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TakeAPictureResult
    let len;
    let data = new TakeAPictureResult(null);
    // Deserialize message field [pointCloud]
    data.pointCloud = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [rgb]
    data.rgb = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [depth]
    data.depth = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [state_info]
    data.state_info = UniversalStateInfo.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.pointCloud.length;
    length += object.rgb.length;
    length += object.depth.length;
    length += UniversalStateInfo.getMessageSize(object.state_info);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dg_msgs/TakeAPictureResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '43a9f96505994e95f9f117bf4737a0c7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    #result definition
    string pointCloud
    string rgb
    string depth
    UniversalStateInfo  state_info
      
    # 0 表示成功；
    # error: 1 表示点云存储失败
    #        2 表示rgb图像存储失败
    #        3 表示深度图存储失败
    
    ================================================================================
    MSG: dg_msgs/UniversalStateInfo
    int32 state_index   # 状态索引值：统一0是正常，其他数字自定义
    string node_name    # 当前节点名
    string state_msgs   # 附加信息，相当于additional_msgs
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TakeAPictureResult(null);
    if (msg.pointCloud !== undefined) {
      resolved.pointCloud = msg.pointCloud;
    }
    else {
      resolved.pointCloud = ''
    }

    if (msg.rgb !== undefined) {
      resolved.rgb = msg.rgb;
    }
    else {
      resolved.rgb = ''
    }

    if (msg.depth !== undefined) {
      resolved.depth = msg.depth;
    }
    else {
      resolved.depth = ''
    }

    if (msg.state_info !== undefined) {
      resolved.state_info = UniversalStateInfo.Resolve(msg.state_info)
    }
    else {
      resolved.state_info = new UniversalStateInfo()
    }

    return resolved;
    }
};

module.exports = TakeAPictureResult;

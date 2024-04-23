// Auto-generated. Do not edit!

// (in-package dg_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MonitorState = require('./MonitorState.js');

//-----------------------------------------------------------

class ROSTopicState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.topic_name = null;
      this.publish_node = null;
      this.publish_rate = null;
      this.desire_rate = null;
      this.bandwidth = null;
      this.state_info = null;
    }
    else {
      if (initObj.hasOwnProperty('topic_name')) {
        this.topic_name = initObj.topic_name
      }
      else {
        this.topic_name = '';
      }
      if (initObj.hasOwnProperty('publish_node')) {
        this.publish_node = initObj.publish_node
      }
      else {
        this.publish_node = '';
      }
      if (initObj.hasOwnProperty('publish_rate')) {
        this.publish_rate = initObj.publish_rate
      }
      else {
        this.publish_rate = 0.0;
      }
      if (initObj.hasOwnProperty('desire_rate')) {
        this.desire_rate = initObj.desire_rate
      }
      else {
        this.desire_rate = 0.0;
      }
      if (initObj.hasOwnProperty('bandwidth')) {
        this.bandwidth = initObj.bandwidth
      }
      else {
        this.bandwidth = 0.0;
      }
      if (initObj.hasOwnProperty('state_info')) {
        this.state_info = initObj.state_info
      }
      else {
        this.state_info = new MonitorState();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ROSTopicState
    // Serialize message field [topic_name]
    bufferOffset = _serializer.string(obj.topic_name, buffer, bufferOffset);
    // Serialize message field [publish_node]
    bufferOffset = _serializer.string(obj.publish_node, buffer, bufferOffset);
    // Serialize message field [publish_rate]
    bufferOffset = _serializer.float32(obj.publish_rate, buffer, bufferOffset);
    // Serialize message field [desire_rate]
    bufferOffset = _serializer.float32(obj.desire_rate, buffer, bufferOffset);
    // Serialize message field [bandwidth]
    bufferOffset = _serializer.float32(obj.bandwidth, buffer, bufferOffset);
    // Serialize message field [state_info]
    bufferOffset = MonitorState.serialize(obj.state_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ROSTopicState
    let len;
    let data = new ROSTopicState(null);
    // Deserialize message field [topic_name]
    data.topic_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [publish_node]
    data.publish_node = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [publish_rate]
    data.publish_rate = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [desire_rate]
    data.desire_rate = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [bandwidth]
    data.bandwidth = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [state_info]
    data.state_info = MonitorState.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.topic_name.length;
    length += object.publish_node.length;
    length += MonitorState.getMessageSize(object.state_info);
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dg_msgs/ROSTopicState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '311695093c106b87476e31b7c6eb9105';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ros-topic 状态
    string topic_name               # 话题名
    string publish_node             # 发布节点  
    float32 publish_rate            # 当前发布频率
    float32 desire_rate             # 期望频率
    float32 bandwidth               # 当前占用网络带宽
    
    dg_msgs/MonitorState state_info         # 状态信息
    ================================================================================
    MSG: dg_msgs/MonitorState
    # 监控状态 - 当状态正常时错误码为0
    int32 error_code            # 错误码
    string additional_msgs       # 附加信息
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ROSTopicState(null);
    if (msg.topic_name !== undefined) {
      resolved.topic_name = msg.topic_name;
    }
    else {
      resolved.topic_name = ''
    }

    if (msg.publish_node !== undefined) {
      resolved.publish_node = msg.publish_node;
    }
    else {
      resolved.publish_node = ''
    }

    if (msg.publish_rate !== undefined) {
      resolved.publish_rate = msg.publish_rate;
    }
    else {
      resolved.publish_rate = 0.0
    }

    if (msg.desire_rate !== undefined) {
      resolved.desire_rate = msg.desire_rate;
    }
    else {
      resolved.desire_rate = 0.0
    }

    if (msg.bandwidth !== undefined) {
      resolved.bandwidth = msg.bandwidth;
    }
    else {
      resolved.bandwidth = 0.0
    }

    if (msg.state_info !== undefined) {
      resolved.state_info = MonitorState.Resolve(msg.state_info)
    }
    else {
      resolved.state_info = new MonitorState()
    }

    return resolved;
    }
};

module.exports = ROSTopicState;

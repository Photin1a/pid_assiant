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

class GetSetLightBarColorRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ligth_bar_color = null;
    }
    else {
      if (initObj.hasOwnProperty('ligth_bar_color')) {
        this.ligth_bar_color = initObj.ligth_bar_color
      }
      else {
        this.ligth_bar_color = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetSetLightBarColorRequest
    // Serialize message field [ligth_bar_color]
    bufferOffset = _serializer.string(obj.ligth_bar_color, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetSetLightBarColorRequest
    let len;
    let data = new GetSetLightBarColorRequest(null);
    // Deserialize message field [ligth_bar_color]
    data.ligth_bar_color = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.ligth_bar_color.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/GetSetLightBarColorRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b8b99cbc0dd126e1864a37a9a498dc8b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 获取/设置灯带颜色的服务
    string ligth_bar_color          # 灯带颜色，如果是空字符串，则返回当前灯带颜色 ｜ 格式：color format 如：red flash 红灯闪烁, red form 红灯常亮，允许不区分大小写
    # 艾智威灯带支持的以下几种状态
    # none          无显示
    # green breath  绿色呼吸
    # green form    绿色常亮
    # left turn     左转
    # right turn    右转
    # blue flash    蓝色闪烁
    # red form      红色常亮
    # red flash     红色闪烁
    # yellow form   黄色常亮
    # yellow flash  黄色闪烁
    # white form    白色常亮
    # green flash   绿色闪烁
    # skyblue form  蓝色常亮
    # purple form   紫色闪烁
    # yellow breath 黄色呼吸
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetSetLightBarColorRequest(null);
    if (msg.ligth_bar_color !== undefined) {
      resolved.ligth_bar_color = msg.ligth_bar_color;
    }
    else {
      resolved.ligth_bar_color = ''
    }

    return resolved;
    }
};

class GetSetLightBarColorResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.current_light_bar_color = null;
    }
    else {
      if (initObj.hasOwnProperty('current_light_bar_color')) {
        this.current_light_bar_color = initObj.current_light_bar_color
      }
      else {
        this.current_light_bar_color = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetSetLightBarColorResponse
    // Serialize message field [current_light_bar_color]
    bufferOffset = _serializer.string(obj.current_light_bar_color, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetSetLightBarColorResponse
    let len;
    let data = new GetSetLightBarColorResponse(null);
    // Deserialize message field [current_light_bar_color]
    data.current_light_bar_color = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.current_light_bar_color.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/GetSetLightBarColorResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '854aed64211aff4c36f3d5834925108f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string current_light_bar_color  # 当前灯带颜色
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetSetLightBarColorResponse(null);
    if (msg.current_light_bar_color !== undefined) {
      resolved.current_light_bar_color = msg.current_light_bar_color;
    }
    else {
      resolved.current_light_bar_color = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: GetSetLightBarColorRequest,
  Response: GetSetLightBarColorResponse,
  md5sum() { return '1a018bf81959926990f6f2e6ba2d8144'; },
  datatype() { return 'dg_msgs/GetSetLightBarColor'; }
};

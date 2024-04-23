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

class SoundAudioControlRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.audio_name = null;
      this.play_count = null;
      this.volume = null;
      this.cancle_play = null;
    }
    else {
      if (initObj.hasOwnProperty('audio_name')) {
        this.audio_name = initObj.audio_name
      }
      else {
        this.audio_name = '';
      }
      if (initObj.hasOwnProperty('play_count')) {
        this.play_count = initObj.play_count
      }
      else {
        this.play_count = 0;
      }
      if (initObj.hasOwnProperty('volume')) {
        this.volume = initObj.volume
      }
      else {
        this.volume = 0;
      }
      if (initObj.hasOwnProperty('cancle_play')) {
        this.cancle_play = initObj.cancle_play
      }
      else {
        this.cancle_play = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SoundAudioControlRequest
    // Serialize message field [audio_name]
    bufferOffset = _serializer.string(obj.audio_name, buffer, bufferOffset);
    // Serialize message field [play_count]
    bufferOffset = _serializer.int32(obj.play_count, buffer, bufferOffset);
    // Serialize message field [volume]
    bufferOffset = _serializer.int32(obj.volume, buffer, bufferOffset);
    // Serialize message field [cancle_play]
    bufferOffset = _serializer.bool(obj.cancle_play, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SoundAudioControlRequest
    let len;
    let data = new SoundAudioControlRequest(null);
    // Deserialize message field [audio_name]
    data.audio_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [play_count]
    data.play_count = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [volume]
    data.volume = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [cancle_play]
    data.cancle_play = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.audio_name.length;
    return length + 13;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/SoundAudioControlRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6ef9969b6ded47adbc865caa1d5d45d7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 控制音响的服务
    string audio_name       # 音频名    
    int32 play_count        # 播放次数              -1 无限循环播放; 0 默认播放一次; 1 播放一次
    int32 volume            # 音量大小              [0,100] 
    bool cancle_play        # 是否终止播放当前音频    true/false
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SoundAudioControlRequest(null);
    if (msg.audio_name !== undefined) {
      resolved.audio_name = msg.audio_name;
    }
    else {
      resolved.audio_name = ''
    }

    if (msg.play_count !== undefined) {
      resolved.play_count = msg.play_count;
    }
    else {
      resolved.play_count = 0
    }

    if (msg.volume !== undefined) {
      resolved.volume = msg.volume;
    }
    else {
      resolved.volume = 0
    }

    if (msg.cancle_play !== undefined) {
      resolved.cancle_play = msg.cancle_play;
    }
    else {
      resolved.cancle_play = false
    }

    return resolved;
    }
};

class SoundAudioControlResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.is_played = null;
    }
    else {
      if (initObj.hasOwnProperty('is_played')) {
        this.is_played = initObj.is_played
      }
      else {
        this.is_played = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SoundAudioControlResponse
    // Serialize message field [is_played]
    bufferOffset = _serializer.bool(obj.is_played, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SoundAudioControlResponse
    let len;
    let data = new SoundAudioControlResponse(null);
    // Deserialize message field [is_played]
    data.is_played = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dg_msgs/SoundAudioControlResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '74549fc6ac88290eedc451bf233c073a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool is_played          # 播放成功              true/false
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SoundAudioControlResponse(null);
    if (msg.is_played !== undefined) {
      resolved.is_played = msg.is_played;
    }
    else {
      resolved.is_played = false
    }

    return resolved;
    }
};

module.exports = {
  Request: SoundAudioControlRequest,
  Response: SoundAudioControlResponse,
  md5sum() { return '274ab99c5d36f88cae47c4b4e730d64c'; },
  datatype() { return 'dg_msgs/SoundAudioControl'; }
};

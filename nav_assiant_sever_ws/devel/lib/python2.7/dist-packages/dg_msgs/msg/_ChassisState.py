# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from dg_msgs/ChassisState.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import dg_msgs.msg
import geometry_msgs.msg
import std_msgs.msg

class ChassisState(genpy.Message):
  _md5sum = "75fcdbda3ff2c5f09f982d836b82cd48"
  _type = "dg_msgs/ChassisState"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """string chassis_state_json                    # 底盘各种参数的json文件
string chassis_type                          # 底盘类型
string chassis_name                          # 底盘名

# [核心参数] - 是上面的子集
float32 battery                              # 电池电量
geometry_msgs/PoseStamped current_pose       # 底盘当前所在位置
bool is_charged                              # 当前是否在充电

Header header                                # 头部信息 - 主要使用的是时间戳
dg_msgs/MonitorState state_info              # 状态信息
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

================================================================================
MSG: dg_msgs/MonitorState
# 监控状态 - 当状态正常时错误码为0
int32 error_code            # 错误码
string additional_msgs       # 附加信息"""
  __slots__ = ['chassis_state_json','chassis_type','chassis_name','battery','current_pose','is_charged','header','state_info']
  _slot_types = ['string','string','string','float32','geometry_msgs/PoseStamped','bool','std_msgs/Header','dg_msgs/MonitorState']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       chassis_state_json,chassis_type,chassis_name,battery,current_pose,is_charged,header,state_info

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ChassisState, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.chassis_state_json is None:
        self.chassis_state_json = ''
      if self.chassis_type is None:
        self.chassis_type = ''
      if self.chassis_name is None:
        self.chassis_name = ''
      if self.battery is None:
        self.battery = 0.
      if self.current_pose is None:
        self.current_pose = geometry_msgs.msg.PoseStamped()
      if self.is_charged is None:
        self.is_charged = False
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.state_info is None:
        self.state_info = dg_msgs.msg.MonitorState()
    else:
      self.chassis_state_json = ''
      self.chassis_type = ''
      self.chassis_name = ''
      self.battery = 0.
      self.current_pose = geometry_msgs.msg.PoseStamped()
      self.is_charged = False
      self.header = std_msgs.msg.Header()
      self.state_info = dg_msgs.msg.MonitorState()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self.chassis_state_json
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.chassis_type
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.chassis_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_f3I().pack(_x.battery, _x.current_pose.header.seq, _x.current_pose.header.stamp.secs, _x.current_pose.header.stamp.nsecs))
      _x = self.current_pose.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_7dB3I().pack(_x.current_pose.pose.position.x, _x.current_pose.pose.position.y, _x.current_pose.pose.position.z, _x.current_pose.pose.orientation.x, _x.current_pose.pose.orientation.y, _x.current_pose.pose.orientation.z, _x.current_pose.pose.orientation.w, _x.is_charged, _x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.state_info.error_code
      buff.write(_get_struct_i().pack(_x))
      _x = self.state_info.additional_msgs
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.current_pose is None:
        self.current_pose = geometry_msgs.msg.PoseStamped()
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.state_info is None:
        self.state_info = dg_msgs.msg.MonitorState()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.chassis_state_json = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.chassis_state_json = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.chassis_type = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.chassis_type = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.chassis_name = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.chassis_name = str[start:end]
      _x = self
      start = end
      end += 16
      (_x.battery, _x.current_pose.header.seq, _x.current_pose.header.stamp.secs, _x.current_pose.header.stamp.nsecs,) = _get_struct_f3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.current_pose.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.current_pose.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 69
      (_x.current_pose.pose.position.x, _x.current_pose.pose.position.y, _x.current_pose.pose.position.z, _x.current_pose.pose.orientation.x, _x.current_pose.pose.orientation.y, _x.current_pose.pose.orientation.z, _x.current_pose.pose.orientation.w, _x.is_charged, _x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_7dB3I().unpack(str[start:end])
      self.is_charged = bool(self.is_charged)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      start = end
      end += 4
      (self.state_info.error_code,) = _get_struct_i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.state_info.additional_msgs = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.state_info.additional_msgs = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self.chassis_state_json
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.chassis_type
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.chassis_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_f3I().pack(_x.battery, _x.current_pose.header.seq, _x.current_pose.header.stamp.secs, _x.current_pose.header.stamp.nsecs))
      _x = self.current_pose.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_7dB3I().pack(_x.current_pose.pose.position.x, _x.current_pose.pose.position.y, _x.current_pose.pose.position.z, _x.current_pose.pose.orientation.x, _x.current_pose.pose.orientation.y, _x.current_pose.pose.orientation.z, _x.current_pose.pose.orientation.w, _x.is_charged, _x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.state_info.error_code
      buff.write(_get_struct_i().pack(_x))
      _x = self.state_info.additional_msgs
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.current_pose is None:
        self.current_pose = geometry_msgs.msg.PoseStamped()
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.state_info is None:
        self.state_info = dg_msgs.msg.MonitorState()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.chassis_state_json = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.chassis_state_json = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.chassis_type = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.chassis_type = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.chassis_name = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.chassis_name = str[start:end]
      _x = self
      start = end
      end += 16
      (_x.battery, _x.current_pose.header.seq, _x.current_pose.header.stamp.secs, _x.current_pose.header.stamp.nsecs,) = _get_struct_f3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.current_pose.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.current_pose.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 69
      (_x.current_pose.pose.position.x, _x.current_pose.pose.position.y, _x.current_pose.pose.position.z, _x.current_pose.pose.orientation.x, _x.current_pose.pose.orientation.y, _x.current_pose.pose.orientation.z, _x.current_pose.pose.orientation.w, _x.is_charged, _x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_7dB3I().unpack(str[start:end])
      self.is_charged = bool(self.is_charged)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      start = end
      end += 4
      (self.state_info.error_code,) = _get_struct_i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.state_info.additional_msgs = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.state_info.additional_msgs = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_7dB3I = None
def _get_struct_7dB3I():
    global _struct_7dB3I
    if _struct_7dB3I is None:
        _struct_7dB3I = struct.Struct("<7dB3I")
    return _struct_7dB3I
_struct_f3I = None
def _get_struct_f3I():
    global _struct_f3I
    if _struct_f3I is None:
        _struct_f3I = struct.Struct("<f3I")
    return _struct_f3I
_struct_i = None
def _get_struct_i():
    global _struct_i
    if _struct_i is None:
        _struct_i = struct.Struct("<i")
    return _struct_i

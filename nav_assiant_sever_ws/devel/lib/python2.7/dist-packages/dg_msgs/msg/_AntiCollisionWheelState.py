# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from dg_msgs/AntiCollisionWheelState.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class AntiCollisionWheelState(genpy.Message):
  _md5sum = "a269fe39cc5307abc0b5ce3d3619c54a"
  _type = "dg_msgs/AntiCollisionWheelState"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# 防撞轮状态 - 设置和获取通用
string wheel_name           # 防撞轮名
bool is_get_state           # 当前请求是否是获得状态，如果为true为请求状态，false则为设置状态
float32 position            # 位置
float32 speed               # 速度
int32 state_word            # 状态字"""
  __slots__ = ['wheel_name','is_get_state','position','speed','state_word']
  _slot_types = ['string','bool','float32','float32','int32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       wheel_name,is_get_state,position,speed,state_word

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(AntiCollisionWheelState, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.wheel_name is None:
        self.wheel_name = ''
      if self.is_get_state is None:
        self.is_get_state = False
      if self.position is None:
        self.position = 0.
      if self.speed is None:
        self.speed = 0.
      if self.state_word is None:
        self.state_word = 0
    else:
      self.wheel_name = ''
      self.is_get_state = False
      self.position = 0.
      self.speed = 0.
      self.state_word = 0

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
      _x = self.wheel_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_B2fi().pack(_x.is_get_state, _x.position, _x.speed, _x.state_word))
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
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.wheel_name = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.wheel_name = str[start:end]
      _x = self
      start = end
      end += 13
      (_x.is_get_state, _x.position, _x.speed, _x.state_word,) = _get_struct_B2fi().unpack(str[start:end])
      self.is_get_state = bool(self.is_get_state)
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
      _x = self.wheel_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_B2fi().pack(_x.is_get_state, _x.position, _x.speed, _x.state_word))
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
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.wheel_name = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.wheel_name = str[start:end]
      _x = self
      start = end
      end += 13
      (_x.is_get_state, _x.position, _x.speed, _x.state_word,) = _get_struct_B2fi().unpack(str[start:end])
      self.is_get_state = bool(self.is_get_state)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_B2fi = None
def _get_struct_B2fi():
    global _struct_B2fi
    if _struct_B2fi is None:
        _struct_B2fi = struct.Struct("<B2fi")
    return _struct_B2fi

# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from dg_msgs/GetAssembleStateRequest.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class GetAssembleStateRequest(genpy.Message):
  _md5sum = "8c01392cb66a9eb73f995bc04929e206"
  _type = "dg_msgs/GetAssembleStateRequest"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# 获取上装体状态请求
string assemble_index
"""
  __slots__ = ['assemble_index']
  _slot_types = ['string']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       assemble_index

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(GetAssembleStateRequest, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.assemble_index is None:
        self.assemble_index = ''
    else:
      self.assemble_index = ''

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
      _x = self.assemble_index
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
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.assemble_index = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.assemble_index = str[start:end]
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
      _x = self.assemble_index
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
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.assemble_index = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.assemble_index = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from dg_msgs/GetAssembleStateResponse.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import dg_msgs.msg

class GetAssembleStateResponse(genpy.Message):
  _md5sum = "108a9200f03144761e3482fd81be1087"
  _type = "dg_msgs/GetAssembleStateResponse"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """AssembleState state_

================================================================================
MSG: dg_msgs/AssembleState
# 上装箱体状态信息
bool is_emergency           # 是否是急停
bool is_auto                # 是否是自动档
bool is_rescue              # 是否是救援模式
bool is_reset               # 是否是复位"""
  __slots__ = ['state_']
  _slot_types = ['dg_msgs/AssembleState']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       state_

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(GetAssembleStateResponse, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.state_ is None:
        self.state_ = dg_msgs.msg.AssembleState()
    else:
      self.state_ = dg_msgs.msg.AssembleState()

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
      _x = self
      buff.write(_get_struct_4B().pack(_x.state_.is_emergency, _x.state_.is_auto, _x.state_.is_rescue, _x.state_.is_reset))
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
      if self.state_ is None:
        self.state_ = dg_msgs.msg.AssembleState()
      end = 0
      _x = self
      start = end
      end += 4
      (_x.state_.is_emergency, _x.state_.is_auto, _x.state_.is_rescue, _x.state_.is_reset,) = _get_struct_4B().unpack(str[start:end])
      self.state_.is_emergency = bool(self.state_.is_emergency)
      self.state_.is_auto = bool(self.state_.is_auto)
      self.state_.is_rescue = bool(self.state_.is_rescue)
      self.state_.is_reset = bool(self.state_.is_reset)
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
      _x = self
      buff.write(_get_struct_4B().pack(_x.state_.is_emergency, _x.state_.is_auto, _x.state_.is_rescue, _x.state_.is_reset))
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
      if self.state_ is None:
        self.state_ = dg_msgs.msg.AssembleState()
      end = 0
      _x = self
      start = end
      end += 4
      (_x.state_.is_emergency, _x.state_.is_auto, _x.state_.is_rescue, _x.state_.is_reset,) = _get_struct_4B().unpack(str[start:end])
      self.state_.is_emergency = bool(self.state_.is_emergency)
      self.state_.is_auto = bool(self.state_.is_auto)
      self.state_.is_rescue = bool(self.state_.is_rescue)
      self.state_.is_reset = bool(self.state_.is_reset)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_4B = None
def _get_struct_4B():
    global _struct_4B
    if _struct_4B is None:
        _struct_4B = struct.Struct("<4B")
    return _struct_4B
class GetAssembleState(object):
  _type          = 'dg_msgs/GetAssembleState'
  _md5sum = 'f047080dfaa590aae4f29539db7e0f2b'
  _request_class  = GetAssembleStateRequest
  _response_class = GetAssembleStateResponse

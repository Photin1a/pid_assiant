# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from dg_msgs/DiskState.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import dg_msgs.msg

class DiskState(genpy.Message):
  _md5sum = "0ae89d9226df323af7a5a7808953730a"
  _type = "dg_msgs/DiskState"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# 硬盘状态
string disk_name            # 硬盘盘符
float32 disk_total          # 硬盘总空间 GB
float32 disk_used           # 已经使用的空间 GB
float32 disk_avail          # 剩余可用空间
float32 disk_used_percent   # 硬盘使用率

dg_msgs/MonitorState state_info         # 状态信息
================================================================================
MSG: dg_msgs/MonitorState
# 监控状态 - 当状态正常时错误码为0
int32 error_code            # 错误码
string additional_msgs       # 附加信息"""
  __slots__ = ['disk_name','disk_total','disk_used','disk_avail','disk_used_percent','state_info']
  _slot_types = ['string','float32','float32','float32','float32','dg_msgs/MonitorState']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       disk_name,disk_total,disk_used,disk_avail,disk_used_percent,state_info

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(DiskState, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.disk_name is None:
        self.disk_name = ''
      if self.disk_total is None:
        self.disk_total = 0.
      if self.disk_used is None:
        self.disk_used = 0.
      if self.disk_avail is None:
        self.disk_avail = 0.
      if self.disk_used_percent is None:
        self.disk_used_percent = 0.
      if self.state_info is None:
        self.state_info = dg_msgs.msg.MonitorState()
    else:
      self.disk_name = ''
      self.disk_total = 0.
      self.disk_used = 0.
      self.disk_avail = 0.
      self.disk_used_percent = 0.
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
      _x = self.disk_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_4fi().pack(_x.disk_total, _x.disk_used, _x.disk_avail, _x.disk_used_percent, _x.state_info.error_code))
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
      if self.state_info is None:
        self.state_info = dg_msgs.msg.MonitorState()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.disk_name = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.disk_name = str[start:end]
      _x = self
      start = end
      end += 20
      (_x.disk_total, _x.disk_used, _x.disk_avail, _x.disk_used_percent, _x.state_info.error_code,) = _get_struct_4fi().unpack(str[start:end])
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
      _x = self.disk_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_4fi().pack(_x.disk_total, _x.disk_used, _x.disk_avail, _x.disk_used_percent, _x.state_info.error_code))
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
      if self.state_info is None:
        self.state_info = dg_msgs.msg.MonitorState()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.disk_name = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.disk_name = str[start:end]
      _x = self
      start = end
      end += 20
      (_x.disk_total, _x.disk_used, _x.disk_avail, _x.disk_used_percent, _x.state_info.error_code,) = _get_struct_4fi().unpack(str[start:end])
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
_struct_4fi = None
def _get_struct_4fi():
    global _struct_4fi
    if _struct_4fi is None:
        _struct_4fi = struct.Struct("<4fi")
    return _struct_4fi

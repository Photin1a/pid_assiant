# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from dg_msgs/RobotArmAcqMoveRequest.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class RobotArmAcqMoveRequest(genpy.Message):
  _md5sum = "1390643684d42806cde16cb777d15235"
  _type = "dg_msgs/RobotArmAcqMoveRequest"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """string number       # 设备编码
"""
  __slots__ = ['number']
  _slot_types = ['string']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       number

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(RobotArmAcqMoveRequest, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.number is None:
        self.number = ''
    else:
      self.number = ''

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
      _x = self.number
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
        self.number = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.number = str[start:end]
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
      _x = self.number
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
        self.number = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.number = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from dg_msgs/RobotArmAcqMoveResponse.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import dg_msgs.msg

class RobotArmAcqMoveResponse(genpy.Message):
  _md5sum = "7461d885ace5cce64cb1ffa820e96bbd"
  _type = "dg_msgs/RobotArmAcqMoveResponse"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """UniversalStateInfo  state_info
string image_name
  
# 0 表示成功；
# error: 1 表示运动失败；
# warning: 2 表示规划失败 （运动失败就不能再进行采集任务的执行了，规划失败也就是目标像点无法到达）

================================================================================
MSG: dg_msgs/UniversalStateInfo
int32 state_index   # 状态索引值：统一0是正常，其他数字自定义
string node_name    # 当前节点名
string state_msgs   # 附加信息，相当于additional_msgs"""
  __slots__ = ['state_info','image_name']
  _slot_types = ['dg_msgs/UniversalStateInfo','string']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       state_info,image_name

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(RobotArmAcqMoveResponse, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.state_info is None:
        self.state_info = dg_msgs.msg.UniversalStateInfo()
      if self.image_name is None:
        self.image_name = ''
    else:
      self.state_info = dg_msgs.msg.UniversalStateInfo()
      self.image_name = ''

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
      _x = self.state_info.state_index
      buff.write(_get_struct_i().pack(_x))
      _x = self.state_info.node_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.state_info.state_msgs
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.image_name
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
        self.state_info = dg_msgs.msg.UniversalStateInfo()
      end = 0
      start = end
      end += 4
      (self.state_info.state_index,) = _get_struct_i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.state_info.node_name = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.state_info.node_name = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.state_info.state_msgs = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.state_info.state_msgs = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.image_name = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.image_name = str[start:end]
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
      _x = self.state_info.state_index
      buff.write(_get_struct_i().pack(_x))
      _x = self.state_info.node_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.state_info.state_msgs
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.image_name
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
        self.state_info = dg_msgs.msg.UniversalStateInfo()
      end = 0
      start = end
      end += 4
      (self.state_info.state_index,) = _get_struct_i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.state_info.node_name = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.state_info.node_name = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.state_info.state_msgs = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.state_info.state_msgs = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.image_name = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.image_name = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_i = None
def _get_struct_i():
    global _struct_i
    if _struct_i is None:
        _struct_i = struct.Struct("<i")
    return _struct_i
class RobotArmAcqMove(object):
  _type          = 'dg_msgs/RobotArmAcqMove'
  _md5sum = '859763e90581dbf8fc57b389728da002'
  _request_class  = RobotArmAcqMoveRequest
  _response_class = RobotArmAcqMoveResponse

# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from dg_msgs/TakeAPictureRequest.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class TakeAPictureRequest(genpy.Message):
  _md5sum = "e4e033359a4f935d40a3917c8d7204be"
  _type = "dg_msgs/TakeAPictureRequest"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """#goal definition
string pointCloud   # 点云存储路径
string rgb          # RGB 图像存储路径
string depth        # 深度图存储路径
bool[] selection    # 按照pointCloud, rgb, depth顺序输入是否需要对应的数据
int32  image_type   # 对图像处理类型，0-正常，1-镜像
"""
  __slots__ = ['pointCloud','rgb','depth','selection','image_type']
  _slot_types = ['string','string','string','bool[]','int32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       pointCloud,rgb,depth,selection,image_type

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(TakeAPictureRequest, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.pointCloud is None:
        self.pointCloud = ''
      if self.rgb is None:
        self.rgb = ''
      if self.depth is None:
        self.depth = ''
      if self.selection is None:
        self.selection = []
      if self.image_type is None:
        self.image_type = 0
    else:
      self.pointCloud = ''
      self.rgb = ''
      self.depth = ''
      self.selection = []
      self.image_type = 0

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
      _x = self.pointCloud
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.rgb
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.depth
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.selection)
      buff.write(_struct_I.pack(length))
      pattern = '<%sB'%length
      buff.write(struct.Struct(pattern).pack(*self.selection))
      _x = self.image_type
      buff.write(_get_struct_i().pack(_x))
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
        self.pointCloud = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.pointCloud = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.rgb = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.rgb = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.depth = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.depth = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sB'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.selection = s.unpack(str[start:end])
      self.selection = list(map(bool, self.selection))
      start = end
      end += 4
      (self.image_type,) = _get_struct_i().unpack(str[start:end])
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
      _x = self.pointCloud
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.rgb
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.depth
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.selection)
      buff.write(_struct_I.pack(length))
      pattern = '<%sB'%length
      buff.write(self.selection.tostring())
      _x = self.image_type
      buff.write(_get_struct_i().pack(_x))
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
        self.pointCloud = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.pointCloud = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.rgb = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.rgb = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.depth = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.depth = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sB'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.selection = numpy.frombuffer(str[start:end], dtype=numpy.bool, count=length)
      self.selection = list(map(bool, self.selection))
      start = end
      end += 4
      (self.image_type,) = _get_struct_i().unpack(str[start:end])
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
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from dg_msgs/TakeAPictureResponse.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import dg_msgs.msg

class TakeAPictureResponse(genpy.Message):
  _md5sum = "43a9f96505994e95f9f117bf4737a0c7"
  _type = "dg_msgs/TakeAPictureResponse"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """#result definition
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
string state_msgs   # 附加信息，相当于additional_msgs"""
  __slots__ = ['pointCloud','rgb','depth','state_info']
  _slot_types = ['string','string','string','dg_msgs/UniversalStateInfo']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       pointCloud,rgb,depth,state_info

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(TakeAPictureResponse, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.pointCloud is None:
        self.pointCloud = ''
      if self.rgb is None:
        self.rgb = ''
      if self.depth is None:
        self.depth = ''
      if self.state_info is None:
        self.state_info = dg_msgs.msg.UniversalStateInfo()
    else:
      self.pointCloud = ''
      self.rgb = ''
      self.depth = ''
      self.state_info = dg_msgs.msg.UniversalStateInfo()

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
      _x = self.pointCloud
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.rgb
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.depth
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
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
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.pointCloud = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.pointCloud = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.rgb = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.rgb = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.depth = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.depth = str[start:end]
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
      _x = self.pointCloud
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.rgb
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.depth
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
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
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.pointCloud = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.pointCloud = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.rgb = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.rgb = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.depth = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.depth = str[start:end]
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
class TakeAPicture(object):
  _type          = 'dg_msgs/TakeAPicture'
  _md5sum = '7b55008856d595d72ce46bf9f46f37fd'
  _request_class  = TakeAPictureRequest
  _response_class = TakeAPictureResponse

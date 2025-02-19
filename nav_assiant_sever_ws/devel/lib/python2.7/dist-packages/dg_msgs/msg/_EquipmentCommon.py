# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from dg_msgs/EquipmentCommon.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class EquipmentCommon(genpy.Message):
  _md5sum = "f069498b74d3b3fdeaf4df87eac49670"
  _type = "dg_msgs/EquipmentCommon"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """int32 equipment_id
string equipment_name
bool connected
uint64 connected_time
string model
string manufacturer
"""
  __slots__ = ['equipment_id','equipment_name','connected','connected_time','model','manufacturer']
  _slot_types = ['int32','string','bool','uint64','string','string']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       equipment_id,equipment_name,connected,connected_time,model,manufacturer

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(EquipmentCommon, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.equipment_id is None:
        self.equipment_id = 0
      if self.equipment_name is None:
        self.equipment_name = ''
      if self.connected is None:
        self.connected = False
      if self.connected_time is None:
        self.connected_time = 0
      if self.model is None:
        self.model = ''
      if self.manufacturer is None:
        self.manufacturer = ''
    else:
      self.equipment_id = 0
      self.equipment_name = ''
      self.connected = False
      self.connected_time = 0
      self.model = ''
      self.manufacturer = ''

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
      _x = self.equipment_id
      buff.write(_get_struct_i().pack(_x))
      _x = self.equipment_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_BQ().pack(_x.connected, _x.connected_time))
      _x = self.model
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.manufacturer
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
      (self.equipment_id,) = _get_struct_i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.equipment_name = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.equipment_name = str[start:end]
      _x = self
      start = end
      end += 9
      (_x.connected, _x.connected_time,) = _get_struct_BQ().unpack(str[start:end])
      self.connected = bool(self.connected)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.model = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.model = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.manufacturer = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.manufacturer = str[start:end]
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
      _x = self.equipment_id
      buff.write(_get_struct_i().pack(_x))
      _x = self.equipment_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_BQ().pack(_x.connected, _x.connected_time))
      _x = self.model
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.manufacturer
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
      (self.equipment_id,) = _get_struct_i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.equipment_name = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.equipment_name = str[start:end]
      _x = self
      start = end
      end += 9
      (_x.connected, _x.connected_time,) = _get_struct_BQ().unpack(str[start:end])
      self.connected = bool(self.connected)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.model = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.model = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.manufacturer = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.manufacturer = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_BQ = None
def _get_struct_BQ():
    global _struct_BQ
    if _struct_BQ is None:
        _struct_BQ = struct.Struct("<BQ")
    return _struct_BQ
_struct_i = None
def _get_struct_i():
    global _struct_i
    if _struct_i is None:
        _struct_i = struct.Struct("<i")
    return _struct_i

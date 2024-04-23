# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from dg_msgs/ReturnJointAnglesAndPoseRequest.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg

class ReturnJointAnglesAndPoseRequest(genpy.Message):
  _md5sum = "46d8702fc163af79ac3d42624a67cf7a"
  _type = "dg_msgs/ReturnJointAnglesAndPoseRequest"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """geometry_msgs/Pose pose_camera_baselink
string file_path
int32 alter_count #邻近点返回数量
float64 error_data #误差范围

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
"""
  __slots__ = ['pose_camera_baselink','file_path','alter_count','error_data']
  _slot_types = ['geometry_msgs/Pose','string','int32','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       pose_camera_baselink,file_path,alter_count,error_data

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ReturnJointAnglesAndPoseRequest, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.pose_camera_baselink is None:
        self.pose_camera_baselink = geometry_msgs.msg.Pose()
      if self.file_path is None:
        self.file_path = ''
      if self.alter_count is None:
        self.alter_count = 0
      if self.error_data is None:
        self.error_data = 0.
    else:
      self.pose_camera_baselink = geometry_msgs.msg.Pose()
      self.file_path = ''
      self.alter_count = 0
      self.error_data = 0.

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
      buff.write(_get_struct_7d().pack(_x.pose_camera_baselink.position.x, _x.pose_camera_baselink.position.y, _x.pose_camera_baselink.position.z, _x.pose_camera_baselink.orientation.x, _x.pose_camera_baselink.orientation.y, _x.pose_camera_baselink.orientation.z, _x.pose_camera_baselink.orientation.w))
      _x = self.file_path
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_id().pack(_x.alter_count, _x.error_data))
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
      if self.pose_camera_baselink is None:
        self.pose_camera_baselink = geometry_msgs.msg.Pose()
      end = 0
      _x = self
      start = end
      end += 56
      (_x.pose_camera_baselink.position.x, _x.pose_camera_baselink.position.y, _x.pose_camera_baselink.position.z, _x.pose_camera_baselink.orientation.x, _x.pose_camera_baselink.orientation.y, _x.pose_camera_baselink.orientation.z, _x.pose_camera_baselink.orientation.w,) = _get_struct_7d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.file_path = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.file_path = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.alter_count, _x.error_data,) = _get_struct_id().unpack(str[start:end])
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
      buff.write(_get_struct_7d().pack(_x.pose_camera_baselink.position.x, _x.pose_camera_baselink.position.y, _x.pose_camera_baselink.position.z, _x.pose_camera_baselink.orientation.x, _x.pose_camera_baselink.orientation.y, _x.pose_camera_baselink.orientation.z, _x.pose_camera_baselink.orientation.w))
      _x = self.file_path
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_id().pack(_x.alter_count, _x.error_data))
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
      if self.pose_camera_baselink is None:
        self.pose_camera_baselink = geometry_msgs.msg.Pose()
      end = 0
      _x = self
      start = end
      end += 56
      (_x.pose_camera_baselink.position.x, _x.pose_camera_baselink.position.y, _x.pose_camera_baselink.position.z, _x.pose_camera_baselink.orientation.x, _x.pose_camera_baselink.orientation.y, _x.pose_camera_baselink.orientation.z, _x.pose_camera_baselink.orientation.w,) = _get_struct_7d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.file_path = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.file_path = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.alter_count, _x.error_data,) = _get_struct_id().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_7d = None
def _get_struct_7d():
    global _struct_7d
    if _struct_7d is None:
        _struct_7d = struct.Struct("<7d")
    return _struct_7d
_struct_id = None
def _get_struct_id():
    global _struct_id
    if _struct_id is None:
        _struct_id = struct.Struct("<id")
    return _struct_id
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from dg_msgs/ReturnJointAnglesAndPoseResponse.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import dg_msgs.msg
import geometry_msgs.msg
import std_msgs.msg

class ReturnJointAnglesAndPoseResponse(genpy.Message):
  _md5sum = "df9892c81c97ec98448ec00af1855191"
  _type = "dg_msgs/ReturnJointAnglesAndPoseResponse"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """TrainDataSet[] pose_ret

================================================================================
MSG: dg_msgs/TrainDataSet
geometry_msgs/Pose pose_data
std_msgs/Float64MultiArray[] multi_joint_data
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
MSG: std_msgs/Float64MultiArray
# Please look at the MultiArrayLayout message definition for
# documentation on all multiarrays.

MultiArrayLayout  layout        # specification of data layout
float64[]         data          # array of data


================================================================================
MSG: std_msgs/MultiArrayLayout
# The multiarray declares a generic multi-dimensional array of a
# particular data type.  Dimensions are ordered from outer most
# to inner most.

MultiArrayDimension[] dim # Array of dimension properties
uint32 data_offset        # padding elements at front of data

# Accessors should ALWAYS be written in terms of dimension stride
# and specified outer-most dimension first.
# 
# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]
#
# A standard, 3-channel 640x480 image with interleaved color channels
# would be specified as:
#
# dim[0].label  = "height"
# dim[0].size   = 480
# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)
# dim[1].label  = "width"
# dim[1].size   = 640
# dim[1].stride = 3*640 = 1920
# dim[2].label  = "channel"
# dim[2].size   = 3
# dim[2].stride = 3
#
# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.

================================================================================
MSG: std_msgs/MultiArrayDimension
string label   # label of given dimension
uint32 size    # size of given dimension (in type units)
uint32 stride  # stride of given dimension"""
  __slots__ = ['pose_ret']
  _slot_types = ['dg_msgs/TrainDataSet[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       pose_ret

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ReturnJointAnglesAndPoseResponse, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.pose_ret is None:
        self.pose_ret = []
    else:
      self.pose_ret = []

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
      length = len(self.pose_ret)
      buff.write(_struct_I.pack(length))
      for val1 in self.pose_ret:
        _v1 = val1.pose_data
        _v2 = _v1.position
        _x = _v2
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v3 = _v1.orientation
        _x = _v3
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
        length = len(val1.multi_joint_data)
        buff.write(_struct_I.pack(length))
        for val2 in val1.multi_joint_data:
          _v4 = val2.layout
          length = len(_v4.dim)
          buff.write(_struct_I.pack(length))
          for val4 in _v4.dim:
            _x = val4.label
            length = len(_x)
            if python3 or type(_x) == unicode:
              _x = _x.encode('utf-8')
              length = len(_x)
            buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
            _x = val4
            buff.write(_get_struct_2I().pack(_x.size, _x.stride))
          _x = _v4.data_offset
          buff.write(_get_struct_I().pack(_x))
          length = len(val2.data)
          buff.write(_struct_I.pack(length))
          pattern = '<%sd'%length
          buff.write(struct.Struct(pattern).pack(*val2.data))
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
      if self.pose_ret is None:
        self.pose_ret = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.pose_ret = []
      for i in range(0, length):
        val1 = dg_msgs.msg.TrainDataSet()
        _v5 = val1.pose_data
        _v6 = _v5.position
        _x = _v6
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v7 = _v5.orientation
        _x = _v7
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.multi_joint_data = []
        for i in range(0, length):
          val2 = std_msgs.msg.Float64MultiArray()
          _v8 = val2.layout
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          _v8.dim = []
          for i in range(0, length):
            val4 = std_msgs.msg.MultiArrayDimension()
            start = end
            end += 4
            (length,) = _struct_I.unpack(str[start:end])
            start = end
            end += length
            if python3:
              val4.label = str[start:end].decode('utf-8', 'rosmsg')
            else:
              val4.label = str[start:end]
            _x = val4
            start = end
            end += 8
            (_x.size, _x.stride,) = _get_struct_2I().unpack(str[start:end])
            _v8.dim.append(val4)
          start = end
          end += 4
          (_v8.data_offset,) = _get_struct_I().unpack(str[start:end])
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          pattern = '<%sd'%length
          start = end
          s = struct.Struct(pattern)
          end += s.size
          val2.data = s.unpack(str[start:end])
          val1.multi_joint_data.append(val2)
        self.pose_ret.append(val1)
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
      length = len(self.pose_ret)
      buff.write(_struct_I.pack(length))
      for val1 in self.pose_ret:
        _v9 = val1.pose_data
        _v10 = _v9.position
        _x = _v10
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v11 = _v9.orientation
        _x = _v11
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
        length = len(val1.multi_joint_data)
        buff.write(_struct_I.pack(length))
        for val2 in val1.multi_joint_data:
          _v12 = val2.layout
          length = len(_v12.dim)
          buff.write(_struct_I.pack(length))
          for val4 in _v12.dim:
            _x = val4.label
            length = len(_x)
            if python3 or type(_x) == unicode:
              _x = _x.encode('utf-8')
              length = len(_x)
            buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
            _x = val4
            buff.write(_get_struct_2I().pack(_x.size, _x.stride))
          _x = _v12.data_offset
          buff.write(_get_struct_I().pack(_x))
          length = len(val2.data)
          buff.write(_struct_I.pack(length))
          pattern = '<%sd'%length
          buff.write(val2.data.tostring())
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
      if self.pose_ret is None:
        self.pose_ret = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.pose_ret = []
      for i in range(0, length):
        val1 = dg_msgs.msg.TrainDataSet()
        _v13 = val1.pose_data
        _v14 = _v13.position
        _x = _v14
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v15 = _v13.orientation
        _x = _v15
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.multi_joint_data = []
        for i in range(0, length):
          val2 = std_msgs.msg.Float64MultiArray()
          _v16 = val2.layout
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          _v16.dim = []
          for i in range(0, length):
            val4 = std_msgs.msg.MultiArrayDimension()
            start = end
            end += 4
            (length,) = _struct_I.unpack(str[start:end])
            start = end
            end += length
            if python3:
              val4.label = str[start:end].decode('utf-8', 'rosmsg')
            else:
              val4.label = str[start:end]
            _x = val4
            start = end
            end += 8
            (_x.size, _x.stride,) = _get_struct_2I().unpack(str[start:end])
            _v16.dim.append(val4)
          start = end
          end += 4
          (_v16.data_offset,) = _get_struct_I().unpack(str[start:end])
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          pattern = '<%sd'%length
          start = end
          s = struct.Struct(pattern)
          end += s.size
          val2.data = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
          val1.multi_joint_data.append(val2)
        self.pose_ret.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2I = None
def _get_struct_2I():
    global _struct_2I
    if _struct_2I is None:
        _struct_2I = struct.Struct("<2I")
    return _struct_2I
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
_struct_4d = None
def _get_struct_4d():
    global _struct_4d
    if _struct_4d is None:
        _struct_4d = struct.Struct("<4d")
    return _struct_4d
class ReturnJointAnglesAndPose(object):
  _type          = 'dg_msgs/ReturnJointAnglesAndPose'
  _md5sum = '68f8701d655359a5b226e67fe93ab112'
  _request_class  = ReturnJointAnglesAndPoseRequest
  _response_class = ReturnJointAnglesAndPoseResponse

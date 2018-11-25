# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from kobuki_fleet_msgs/SubTask.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import genpy

class SubTask(genpy.Message):
  _md5sum = "bf4ea2cfd8702568f206b18548c2144d"
  _type = "kobuki_fleet_msgs/SubTask"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """string subTasktType
string serviceArea
uint16 poseOrientation
float32 serviceAreaHigh
geometry_msgs/Pose poseNew
geometry_msgs/Point pose
duration waitingTime
string objectType
uint16 objectId
uint16 object2
uint16 object3
uint16 containerId

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of postion and orientation. 
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
  __slots__ = ['subTasktType','serviceArea','poseOrientation','serviceAreaHigh','poseNew','pose','waitingTime','objectType','objectId','object2','object3','containerId']
  _slot_types = ['string','string','uint16','float32','geometry_msgs/Pose','geometry_msgs/Point','duration','string','uint16','uint16','uint16','uint16']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       subTasktType,serviceArea,poseOrientation,serviceAreaHigh,poseNew,pose,waitingTime,objectType,objectId,object2,object3,containerId

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(SubTask, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.subTasktType is None:
        self.subTasktType = ''
      if self.serviceArea is None:
        self.serviceArea = ''
      if self.poseOrientation is None:
        self.poseOrientation = 0
      if self.serviceAreaHigh is None:
        self.serviceAreaHigh = 0.
      if self.poseNew is None:
        self.poseNew = geometry_msgs.msg.Pose()
      if self.pose is None:
        self.pose = geometry_msgs.msg.Point()
      if self.waitingTime is None:
        self.waitingTime = genpy.Duration()
      if self.objectType is None:
        self.objectType = ''
      if self.objectId is None:
        self.objectId = 0
      if self.object2 is None:
        self.object2 = 0
      if self.object3 is None:
        self.object3 = 0
      if self.containerId is None:
        self.containerId = 0
    else:
      self.subTasktType = ''
      self.serviceArea = ''
      self.poseOrientation = 0
      self.serviceAreaHigh = 0.
      self.poseNew = geometry_msgs.msg.Pose()
      self.pose = geometry_msgs.msg.Point()
      self.waitingTime = genpy.Duration()
      self.objectType = ''
      self.objectId = 0
      self.object2 = 0
      self.object3 = 0
      self.containerId = 0

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
      _x = self.subTasktType
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.serviceArea
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_Hf10d2i.pack(_x.poseOrientation, _x.serviceAreaHigh, _x.poseNew.position.x, _x.poseNew.position.y, _x.poseNew.position.z, _x.poseNew.orientation.x, _x.poseNew.orientation.y, _x.poseNew.orientation.z, _x.poseNew.orientation.w, _x.pose.x, _x.pose.y, _x.pose.z, _x.waitingTime.secs, _x.waitingTime.nsecs))
      _x = self.objectType
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_4H.pack(_x.objectId, _x.object2, _x.object3, _x.containerId))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(_x))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(_x))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.poseNew is None:
        self.poseNew = geometry_msgs.msg.Pose()
      if self.pose is None:
        self.pose = geometry_msgs.msg.Point()
      if self.waitingTime is None:
        self.waitingTime = genpy.Duration()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.subTasktType = str[start:end].decode('utf-8')
      else:
        self.subTasktType = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.serviceArea = str[start:end].decode('utf-8')
      else:
        self.serviceArea = str[start:end]
      _x = self
      start = end
      end += 94
      (_x.poseOrientation, _x.serviceAreaHigh, _x.poseNew.position.x, _x.poseNew.position.y, _x.poseNew.position.z, _x.poseNew.orientation.x, _x.poseNew.orientation.y, _x.poseNew.orientation.z, _x.poseNew.orientation.w, _x.pose.x, _x.pose.y, _x.pose.z, _x.waitingTime.secs, _x.waitingTime.nsecs,) = _struct_Hf10d2i.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.objectType = str[start:end].decode('utf-8')
      else:
        self.objectType = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.objectId, _x.object2, _x.object3, _x.containerId,) = _struct_4H.unpack(str[start:end])
      self.waitingTime.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self.subTasktType
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.serviceArea
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_Hf10d2i.pack(_x.poseOrientation, _x.serviceAreaHigh, _x.poseNew.position.x, _x.poseNew.position.y, _x.poseNew.position.z, _x.poseNew.orientation.x, _x.poseNew.orientation.y, _x.poseNew.orientation.z, _x.poseNew.orientation.w, _x.pose.x, _x.pose.y, _x.pose.z, _x.waitingTime.secs, _x.waitingTime.nsecs))
      _x = self.objectType
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_4H.pack(_x.objectId, _x.object2, _x.object3, _x.containerId))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(_x))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(_x))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.poseNew is None:
        self.poseNew = geometry_msgs.msg.Pose()
      if self.pose is None:
        self.pose = geometry_msgs.msg.Point()
      if self.waitingTime is None:
        self.waitingTime = genpy.Duration()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.subTasktType = str[start:end].decode('utf-8')
      else:
        self.subTasktType = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.serviceArea = str[start:end].decode('utf-8')
      else:
        self.serviceArea = str[start:end]
      _x = self
      start = end
      end += 94
      (_x.poseOrientation, _x.serviceAreaHigh, _x.poseNew.position.x, _x.poseNew.position.y, _x.poseNew.position.z, _x.poseNew.orientation.x, _x.poseNew.orientation.y, _x.poseNew.orientation.z, _x.poseNew.orientation.w, _x.pose.x, _x.pose.y, _x.pose.z, _x.waitingTime.secs, _x.waitingTime.nsecs,) = _struct_Hf10d2i.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.objectType = str[start:end].decode('utf-8')
      else:
        self.objectType = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.objectId, _x.object2, _x.object3, _x.containerId,) = _struct_4H.unpack(str[start:end])
      self.waitingTime.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_Hf10d2i = struct.Struct("<Hf10d2i")
_struct_4H = struct.Struct("<4H")
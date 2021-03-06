# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from kobuki_fleet_msgs/AssignTaskRequest.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import std_msgs.msg

class AssignTaskRequest(genpy.Message):
  _md5sum = "4ea88700548a933a754b1f6661c76942"
  _type = "kobuki_fleet_msgs/AssignTaskRequest"
  _has_header = True #flag to mark the presence of a Header object
  _full_text = """Header header
string machineName
string robotName
string robotPrimary
string robotSecondary


uint16 REPLENISHMENT=1
uint16 DELIVERY=2
uint16 GOTO=3
uint16 CALL=4
uint16 taskType

uint16 PRIMARY=1
uint16 SECONDARY=2
uint16 taskPriority

uint16 OPEN=0
uint16 WORKING=1
uint16 FINISHED=2
uint16 ERROR=3
uint16 CANCELLED=4
uint16 taskStatus

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
# 0: no frame
# 1: global frame
string frame_id

"""
  # Pseudo-constants
  REPLENISHMENT = 1
  DELIVERY = 2
  GOTO = 3
  CALL = 4
  PRIMARY = 1
  SECONDARY = 2
  OPEN = 0
  WORKING = 1
  FINISHED = 2
  ERROR = 3
  CANCELLED = 4

  __slots__ = ['header','machineName','robotName','robotPrimary','robotSecondary','taskType','taskPriority','taskStatus']
  _slot_types = ['std_msgs/Header','string','string','string','string','uint16','uint16','uint16']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,machineName,robotName,robotPrimary,robotSecondary,taskType,taskPriority,taskStatus

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(AssignTaskRequest, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.machineName is None:
        self.machineName = ''
      if self.robotName is None:
        self.robotName = ''
      if self.robotPrimary is None:
        self.robotPrimary = ''
      if self.robotSecondary is None:
        self.robotSecondary = ''
      if self.taskType is None:
        self.taskType = 0
      if self.taskPriority is None:
        self.taskPriority = 0
      if self.taskStatus is None:
        self.taskStatus = 0
    else:
      self.header = std_msgs.msg.Header()
      self.machineName = ''
      self.robotName = ''
      self.robotPrimary = ''
      self.robotSecondary = ''
      self.taskType = 0
      self.taskPriority = 0
      self.taskStatus = 0

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
      buff.write(_struct_3I.pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.machineName
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.robotName
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.robotPrimary
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.robotSecondary
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_3H.pack(_x.taskType, _x.taskPriority, _x.taskStatus))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(_x))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(_x))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _struct_3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.machineName = str[start:end].decode('utf-8')
      else:
        self.machineName = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.robotName = str[start:end].decode('utf-8')
      else:
        self.robotName = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.robotPrimary = str[start:end].decode('utf-8')
      else:
        self.robotPrimary = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.robotSecondary = str[start:end].decode('utf-8')
      else:
        self.robotSecondary = str[start:end]
      _x = self
      start = end
      end += 6
      (_x.taskType, _x.taskPriority, _x.taskStatus,) = _struct_3H.unpack(str[start:end])
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
      _x = self
      buff.write(_struct_3I.pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.machineName
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.robotName
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.robotPrimary
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.robotSecondary
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_3H.pack(_x.taskType, _x.taskPriority, _x.taskStatus))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(_x))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(_x))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _struct_3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.machineName = str[start:end].decode('utf-8')
      else:
        self.machineName = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.robotName = str[start:end].decode('utf-8')
      else:
        self.robotName = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.robotPrimary = str[start:end].decode('utf-8')
      else:
        self.robotPrimary = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.robotSecondary = str[start:end].decode('utf-8')
      else:
        self.robotSecondary = str[start:end]
      _x = self
      start = end
      end += 6
      (_x.taskType, _x.taskPriority, _x.taskStatus,) = _struct_3H.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_3I = struct.Struct("<3I")
_struct_3H = struct.Struct("<3H")
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from kobuki_fleet_msgs/AssignTaskResponse.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import std_msgs.msg

class AssignTaskResponse(genpy.Message):
  _md5sum = "a224dfe60a28ec92cf4d074ad1a928b7"
  _type = "kobuki_fleet_msgs/AssignTaskResponse"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """
std_msgs/Bool statusAsignation


================================================================================
MSG: std_msgs/Bool
bool data
"""
  __slots__ = ['statusAsignation']
  _slot_types = ['std_msgs/Bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       statusAsignation

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(AssignTaskResponse, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.statusAsignation is None:
        self.statusAsignation = std_msgs.msg.Bool()
    else:
      self.statusAsignation = std_msgs.msg.Bool()

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
      buff.write(_struct_B.pack(self.statusAsignation.data))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(_x))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(_x))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.statusAsignation is None:
        self.statusAsignation = std_msgs.msg.Bool()
      end = 0
      start = end
      end += 1
      (self.statusAsignation.data,) = _struct_B.unpack(str[start:end])
      self.statusAsignation.data = bool(self.statusAsignation.data)
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
      buff.write(_struct_B.pack(self.statusAsignation.data))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(_x))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(_x))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.statusAsignation is None:
        self.statusAsignation = std_msgs.msg.Bool()
      end = 0
      start = end
      end += 1
      (self.statusAsignation.data,) = _struct_B.unpack(str[start:end])
      self.statusAsignation.data = bool(self.statusAsignation.data)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_B = struct.Struct("<B")
class AssignTask(object):
  _type          = 'kobuki_fleet_msgs/AssignTask'
  _md5sum = 'b2e00537ad9afaf702715f57966af958'
  _request_class  = AssignTaskRequest
  _response_class = AssignTaskResponse

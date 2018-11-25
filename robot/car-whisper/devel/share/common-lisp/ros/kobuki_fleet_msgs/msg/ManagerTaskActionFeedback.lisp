; Auto-generated. Do not edit!


(cl:in-package kobuki_fleet_msgs-msg)


;//! \htmlinclude ManagerTaskActionFeedback.msg.html

(cl:defclass <ManagerTaskActionFeedback> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (status
    :reader status
    :initarg :status
    :type actionlib_msgs-msg:GoalStatus
    :initform (cl:make-instance 'actionlib_msgs-msg:GoalStatus))
   (feedback
    :reader feedback
    :initarg :feedback
    :type kobuki_fleet_msgs-msg:ManagerTaskFeedback
    :initform (cl:make-instance 'kobuki_fleet_msgs-msg:ManagerTaskFeedback)))
)

(cl:defclass ManagerTaskActionFeedback (<ManagerTaskActionFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ManagerTaskActionFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ManagerTaskActionFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kobuki_fleet_msgs-msg:<ManagerTaskActionFeedback> is deprecated: use kobuki_fleet_msgs-msg:ManagerTaskActionFeedback instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ManagerTaskActionFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-msg:header-val is deprecated.  Use kobuki_fleet_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <ManagerTaskActionFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-msg:status-val is deprecated.  Use kobuki_fleet_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'feedback-val :lambda-list '(m))
(cl:defmethod feedback-val ((m <ManagerTaskActionFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-msg:feedback-val is deprecated.  Use kobuki_fleet_msgs-msg:feedback instead.")
  (feedback m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ManagerTaskActionFeedback>) ostream)
  "Serializes a message object of type '<ManagerTaskActionFeedback>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'status) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'feedback) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ManagerTaskActionFeedback>) istream)
  "Deserializes a message object of type '<ManagerTaskActionFeedback>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'status) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'feedback) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ManagerTaskActionFeedback>)))
  "Returns string type for a message object of type '<ManagerTaskActionFeedback>"
  "kobuki_fleet_msgs/ManagerTaskActionFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ManagerTaskActionFeedback)))
  "Returns string type for a message object of type 'ManagerTaskActionFeedback"
  "kobuki_fleet_msgs/ManagerTaskActionFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ManagerTaskActionFeedback>)))
  "Returns md5sum for a message object of type '<ManagerTaskActionFeedback>"
  "f5b1427c531edc6aec20c01705e282f3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ManagerTaskActionFeedback)))
  "Returns md5sum for a message object of type 'ManagerTaskActionFeedback"
  "f5b1427c531edc6aec20c01705e282f3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ManagerTaskActionFeedback>)))
  "Returns full string definition for message of type '<ManagerTaskActionFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%ManagerTaskFeedback feedback~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: kobuki_fleet_msgs/ManagerTaskFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback description~%uint8 task_status~%#uint8 OPEN=0~%#uint8 WORKING=1~%#uint8 FINISHED=2~%#uint8 ERROR=3~%~%#uint16 tid~%#uint16 rid~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ManagerTaskActionFeedback)))
  "Returns full string definition for message of type 'ManagerTaskActionFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%ManagerTaskFeedback feedback~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: kobuki_fleet_msgs/ManagerTaskFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback description~%uint8 task_status~%#uint8 OPEN=0~%#uint8 WORKING=1~%#uint8 FINISHED=2~%#uint8 ERROR=3~%~%#uint16 tid~%#uint16 rid~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ManagerTaskActionFeedback>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'feedback))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ManagerTaskActionFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'ManagerTaskActionFeedback
    (cl:cons ':header (header msg))
    (cl:cons ':status (status msg))
    (cl:cons ':feedback (feedback msg))
))
; Auto-generated. Do not edit!


(cl:in-package neocortec-srv)


;//! \htmlinclude neocortecSendData-request.msg.html

(cl:defclass <neocortecSendData-request> (roslisp-msg-protocol:ros-message)
  ((nodeId
    :reader nodeId
    :initarg :nodeId
    :type cl:fixnum
    :initform 0)
   (port
    :reader port
    :initarg :port
    :type cl:fixnum
    :initform 0)
   (data
    :reader data
    :initarg :data
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass neocortecSendData-request (<neocortecSendData-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <neocortecSendData-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'neocortecSendData-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name neocortec-srv:<neocortecSendData-request> is deprecated: use neocortec-srv:neocortecSendData-request instead.")))

(cl:ensure-generic-function 'nodeId-val :lambda-list '(m))
(cl:defmethod nodeId-val ((m <neocortecSendData-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neocortec-srv:nodeId-val is deprecated.  Use neocortec-srv:nodeId instead.")
  (nodeId m))

(cl:ensure-generic-function 'port-val :lambda-list '(m))
(cl:defmethod port-val ((m <neocortecSendData-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neocortec-srv:port-val is deprecated.  Use neocortec-srv:port instead.")
  (port m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <neocortecSendData-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neocortec-srv:data-val is deprecated.  Use neocortec-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <neocortecSendData-request>) ostream)
  "Serializes a message object of type '<neocortecSendData-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nodeId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'port)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <neocortecSendData-request>) istream)
  "Deserializes a message object of type '<neocortecSendData-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nodeId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'port)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<neocortecSendData-request>)))
  "Returns string type for a service object of type '<neocortecSendData-request>"
  "neocortec/neocortecSendDataRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'neocortecSendData-request)))
  "Returns string type for a service object of type 'neocortecSendData-request"
  "neocortec/neocortecSendDataRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<neocortecSendData-request>)))
  "Returns md5sum for a message object of type '<neocortecSendData-request>"
  "6c02cb841862df337a17ec959d566f8f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'neocortecSendData-request)))
  "Returns md5sum for a message object of type 'neocortecSendData-request"
  "6c02cb841862df337a17ec959d566f8f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<neocortecSendData-request>)))
  "Returns full string definition for message of type '<neocortecSendData-request>"
  (cl:format cl:nil "uint8 nodeId~%uint8 port~%uint8[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'neocortecSendData-request)))
  "Returns full string definition for message of type 'neocortecSendData-request"
  (cl:format cl:nil "uint8 nodeId~%uint8 port~%uint8[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <neocortecSendData-request>))
  (cl:+ 0
     1
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <neocortecSendData-request>))
  "Converts a ROS message object to a list"
  (cl:list 'neocortecSendData-request
    (cl:cons ':nodeId (nodeId msg))
    (cl:cons ':port (port msg))
    (cl:cons ':data (data msg))
))
;//! \htmlinclude neocortecSendData-response.msg.html

(cl:defclass <neocortecSendData-response> (roslisp-msg-protocol:ros-message)
  ((returnValue
    :reader returnValue
    :initarg :returnValue
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass neocortecSendData-response (<neocortecSendData-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <neocortecSendData-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'neocortecSendData-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name neocortec-srv:<neocortecSendData-response> is deprecated: use neocortec-srv:neocortecSendData-response instead.")))

(cl:ensure-generic-function 'returnValue-val :lambda-list '(m))
(cl:defmethod returnValue-val ((m <neocortecSendData-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neocortec-srv:returnValue-val is deprecated.  Use neocortec-srv:returnValue instead.")
  (returnValue m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <neocortecSendData-response>) ostream)
  "Serializes a message object of type '<neocortecSendData-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'returnValue) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <neocortecSendData-response>) istream)
  "Deserializes a message object of type '<neocortecSendData-response>"
    (cl:setf (cl:slot-value msg 'returnValue) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<neocortecSendData-response>)))
  "Returns string type for a service object of type '<neocortecSendData-response>"
  "neocortec/neocortecSendDataResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'neocortecSendData-response)))
  "Returns string type for a service object of type 'neocortecSendData-response"
  "neocortec/neocortecSendDataResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<neocortecSendData-response>)))
  "Returns md5sum for a message object of type '<neocortecSendData-response>"
  "6c02cb841862df337a17ec959d566f8f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'neocortecSendData-response)))
  "Returns md5sum for a message object of type 'neocortecSendData-response"
  "6c02cb841862df337a17ec959d566f8f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<neocortecSendData-response>)))
  "Returns full string definition for message of type '<neocortecSendData-response>"
  (cl:format cl:nil "bool returnValue~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'neocortecSendData-response)))
  "Returns full string definition for message of type 'neocortecSendData-response"
  (cl:format cl:nil "bool returnValue~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <neocortecSendData-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <neocortecSendData-response>))
  "Converts a ROS message object to a list"
  (cl:list 'neocortecSendData-response
    (cl:cons ':returnValue (returnValue msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'neocortecSendData)))
  'neocortecSendData-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'neocortecSendData)))
  'neocortecSendData-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'neocortecSendData)))
  "Returns string type for a service object of type '<neocortecSendData>"
  "neocortec/neocortecSendData")
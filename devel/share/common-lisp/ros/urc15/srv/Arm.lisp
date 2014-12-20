; Auto-generated. Do not edit!


(cl:in-package urc15-srv)


;//! \htmlinclude Arm-request.msg.html

(cl:defclass <Arm-request> (roslisp-msg-protocol:ros-message)
  ((algorithm
    :reader algorithm
    :initarg :algorithm
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Arm-request (<Arm-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Arm-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Arm-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name urc15-srv:<Arm-request> is deprecated: use urc15-srv:Arm-request instead.")))

(cl:ensure-generic-function 'algorithm-val :lambda-list '(m))
(cl:defmethod algorithm-val ((m <Arm-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader urc15-srv:algorithm-val is deprecated.  Use urc15-srv:algorithm instead.")
  (algorithm m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Arm-request>) ostream)
  "Serializes a message object of type '<Arm-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'algorithm)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Arm-request>) istream)
  "Deserializes a message object of type '<Arm-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'algorithm)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Arm-request>)))
  "Returns string type for a service object of type '<Arm-request>"
  "urc15/ArmRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Arm-request)))
  "Returns string type for a service object of type 'Arm-request"
  "urc15/ArmRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Arm-request>)))
  "Returns md5sum for a message object of type '<Arm-request>"
  "b89aebdb4b4412931ce7c68a6023011f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Arm-request)))
  "Returns md5sum for a message object of type 'Arm-request"
  "b89aebdb4b4412931ce7c68a6023011f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Arm-request>)))
  "Returns full string definition for message of type '<Arm-request>"
  (cl:format cl:nil "uint8 algorithm~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Arm-request)))
  "Returns full string definition for message of type 'Arm-request"
  (cl:format cl:nil "uint8 algorithm~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Arm-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Arm-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Arm-request
    (cl:cons ':algorithm (algorithm msg))
))
;//! \htmlinclude Arm-response.msg.html

(cl:defclass <Arm-response> (roslisp-msg-protocol:ros-message)
  ((successful
    :reader successful
    :initarg :successful
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Arm-response (<Arm-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Arm-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Arm-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name urc15-srv:<Arm-response> is deprecated: use urc15-srv:Arm-response instead.")))

(cl:ensure-generic-function 'successful-val :lambda-list '(m))
(cl:defmethod successful-val ((m <Arm-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader urc15-srv:successful-val is deprecated.  Use urc15-srv:successful instead.")
  (successful m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Arm-response>) ostream)
  "Serializes a message object of type '<Arm-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'successful)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Arm-response>) istream)
  "Deserializes a message object of type '<Arm-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'successful)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Arm-response>)))
  "Returns string type for a service object of type '<Arm-response>"
  "urc15/ArmResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Arm-response)))
  "Returns string type for a service object of type 'Arm-response"
  "urc15/ArmResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Arm-response>)))
  "Returns md5sum for a message object of type '<Arm-response>"
  "b89aebdb4b4412931ce7c68a6023011f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Arm-response)))
  "Returns md5sum for a message object of type 'Arm-response"
  "b89aebdb4b4412931ce7c68a6023011f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Arm-response>)))
  "Returns full string definition for message of type '<Arm-response>"
  (cl:format cl:nil "uint8 successful~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Arm-response)))
  "Returns full string definition for message of type 'Arm-response"
  (cl:format cl:nil "uint8 successful~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Arm-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Arm-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Arm-response
    (cl:cons ':successful (successful msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Arm)))
  'Arm-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Arm)))
  'Arm-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Arm)))
  "Returns string type for a service object of type '<Arm>"
  "urc15/Arm")
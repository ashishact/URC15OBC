; Auto-generated. Do not edit!


(cl:in-package urc15-msg)


;//! \htmlinclude Comm_DataArray.msg.html

(cl:defclass <Comm_DataArray> (roslisp-msg-protocol:ros-message)
  ((datas
    :reader datas
    :initarg :datas
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass Comm_DataArray (<Comm_DataArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Comm_DataArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Comm_DataArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name urc15-msg:<Comm_DataArray> is deprecated: use urc15-msg:Comm_DataArray instead.")))

(cl:ensure-generic-function 'datas-val :lambda-list '(m))
(cl:defmethod datas-val ((m <Comm_DataArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader urc15-msg:datas-val is deprecated.  Use urc15-msg:datas instead.")
  (datas m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Comm_DataArray>) ostream)
  "Serializes a message object of type '<Comm_DataArray>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'datas))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'datas))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Comm_DataArray>) istream)
  "Deserializes a message object of type '<Comm_DataArray>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'datas) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'datas)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Comm_DataArray>)))
  "Returns string type for a message object of type '<Comm_DataArray>"
  "urc15/Comm_DataArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Comm_DataArray)))
  "Returns string type for a message object of type 'Comm_DataArray"
  "urc15/Comm_DataArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Comm_DataArray>)))
  "Returns md5sum for a message object of type '<Comm_DataArray>"
  "69dfad1a6ee9f07f2a78619e47508622")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Comm_DataArray)))
  "Returns md5sum for a message object of type 'Comm_DataArray"
  "69dfad1a6ee9f07f2a78619e47508622")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Comm_DataArray>)))
  "Returns full string definition for message of type '<Comm_DataArray>"
  (cl:format cl:nil "uint8[] datas~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Comm_DataArray)))
  "Returns full string definition for message of type 'Comm_DataArray"
  (cl:format cl:nil "uint8[] datas~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Comm_DataArray>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'datas) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Comm_DataArray>))
  "Converts a ROS message object to a list"
  (cl:list 'Comm_DataArray
    (cl:cons ':datas (datas msg))
))

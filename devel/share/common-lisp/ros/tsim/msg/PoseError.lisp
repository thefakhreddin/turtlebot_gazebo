; Auto-generated. Do not edit!


(cl:in-package tsim-msg)


;//! \htmlinclude PoseError.msg.html

(cl:defclass <PoseError> (roslisp-msg-protocol:ros-message)
  ((x_error
    :reader x_error
    :initarg :x_error
    :type cl:float
    :initform 0.0)
   (y_error
    :reader y_error
    :initarg :y_error
    :type cl:float
    :initform 0.0)
   (theta_error
    :reader theta_error
    :initarg :theta_error
    :type cl:float
    :initform 0.0))
)

(cl:defclass PoseError (<PoseError>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PoseError>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PoseError)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tsim-msg:<PoseError> is deprecated: use tsim-msg:PoseError instead.")))

(cl:ensure-generic-function 'x_error-val :lambda-list '(m))
(cl:defmethod x_error-val ((m <PoseError>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tsim-msg:x_error-val is deprecated.  Use tsim-msg:x_error instead.")
  (x_error m))

(cl:ensure-generic-function 'y_error-val :lambda-list '(m))
(cl:defmethod y_error-val ((m <PoseError>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tsim-msg:y_error-val is deprecated.  Use tsim-msg:y_error instead.")
  (y_error m))

(cl:ensure-generic-function 'theta_error-val :lambda-list '(m))
(cl:defmethod theta_error-val ((m <PoseError>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tsim-msg:theta_error-val is deprecated.  Use tsim-msg:theta_error instead.")
  (theta_error m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PoseError>) ostream)
  "Serializes a message object of type '<PoseError>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x_error))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y_error))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'theta_error))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PoseError>) istream)
  "Deserializes a message object of type '<PoseError>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x_error) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y_error) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'theta_error) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PoseError>)))
  "Returns string type for a message object of type '<PoseError>"
  "tsim/PoseError")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PoseError)))
  "Returns string type for a message object of type 'PoseError"
  "tsim/PoseError")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PoseError>)))
  "Returns md5sum for a message object of type '<PoseError>"
  "d2b1656b3ae7e47d072bbd7d5734d5a4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PoseError)))
  "Returns md5sum for a message object of type 'PoseError"
  "d2b1656b3ae7e47d072bbd7d5734d5a4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PoseError>)))
  "Returns full string definition for message of type '<PoseError>"
  (cl:format cl:nil "# absolute value of the x error~%float32 x_error~%~%# absolute value of the x error~%float32 y_error~%~%# absolute value of the angular error~%float32 theta_error~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PoseError)))
  "Returns full string definition for message of type 'PoseError"
  (cl:format cl:nil "# absolute value of the x error~%float32 x_error~%~%# absolute value of the x error~%float32 y_error~%~%# absolute value of the angular error~%float32 theta_error~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PoseError>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PoseError>))
  "Converts a ROS message object to a list"
  (cl:list 'PoseError
    (cl:cons ':x_error (x_error msg))
    (cl:cons ':y_error (y_error msg))
    (cl:cons ':theta_error (theta_error msg))
))

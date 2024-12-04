; Auto-generated. Do not edit!


(cl:in-package robot_bringup-srv)


;//! \htmlinclude C_pose-request.msg.html

(cl:defclass <C_pose-request> (roslisp-msg-protocol:ros-message)
  ((pose_x
    :reader pose_x
    :initarg :pose_x
    :type cl:float
    :initform 0.0)
   (pose_y
    :reader pose_y
    :initarg :pose_y
    :type cl:float
    :initform 0.0)
   (pose_z
    :reader pose_z
    :initarg :pose_z
    :type cl:float
    :initform 0.0)
   (theta
    :reader theta
    :initarg :theta
    :type cl:float
    :initform 0.0))
)

(cl:defclass C_pose-request (<C_pose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <C_pose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'C_pose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_bringup-srv:<C_pose-request> is deprecated: use robot_bringup-srv:C_pose-request instead.")))

(cl:ensure-generic-function 'pose_x-val :lambda-list '(m))
(cl:defmethod pose_x-val ((m <C_pose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_bringup-srv:pose_x-val is deprecated.  Use robot_bringup-srv:pose_x instead.")
  (pose_x m))

(cl:ensure-generic-function 'pose_y-val :lambda-list '(m))
(cl:defmethod pose_y-val ((m <C_pose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_bringup-srv:pose_y-val is deprecated.  Use robot_bringup-srv:pose_y instead.")
  (pose_y m))

(cl:ensure-generic-function 'pose_z-val :lambda-list '(m))
(cl:defmethod pose_z-val ((m <C_pose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_bringup-srv:pose_z-val is deprecated.  Use robot_bringup-srv:pose_z instead.")
  (pose_z m))

(cl:ensure-generic-function 'theta-val :lambda-list '(m))
(cl:defmethod theta-val ((m <C_pose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_bringup-srv:theta-val is deprecated.  Use robot_bringup-srv:theta instead.")
  (theta m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <C_pose-request>) ostream)
  "Serializes a message object of type '<C_pose-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'pose_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'pose_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'pose_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'theta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <C_pose-request>) istream)
  "Deserializes a message object of type '<C_pose-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pose_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pose_y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pose_z) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'theta) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<C_pose-request>)))
  "Returns string type for a service object of type '<C_pose-request>"
  "robot_bringup/C_poseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'C_pose-request)))
  "Returns string type for a service object of type 'C_pose-request"
  "robot_bringup/C_poseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<C_pose-request>)))
  "Returns md5sum for a message object of type '<C_pose-request>"
  "c5d18bef2da6b3fa66babcd6adf5167e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'C_pose-request)))
  "Returns md5sum for a message object of type 'C_pose-request"
  "c5d18bef2da6b3fa66babcd6adf5167e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<C_pose-request>)))
  "Returns full string definition for message of type '<C_pose-request>"
  (cl:format cl:nil "float64 pose_x~%float64 pose_y~%float64 pose_z~%float64 theta~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'C_pose-request)))
  "Returns full string definition for message of type 'C_pose-request"
  (cl:format cl:nil "float64 pose_x~%float64 pose_y~%float64 pose_z~%float64 theta~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <C_pose-request>))
  (cl:+ 0
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <C_pose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'C_pose-request
    (cl:cons ':pose_x (pose_x msg))
    (cl:cons ':pose_y (pose_y msg))
    (cl:cons ':pose_z (pose_z msg))
    (cl:cons ':theta (theta msg))
))
;//! \htmlinclude C_pose-response.msg.html

(cl:defclass <C_pose-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass C_pose-response (<C_pose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <C_pose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'C_pose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_bringup-srv:<C_pose-response> is deprecated: use robot_bringup-srv:C_pose-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <C_pose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_bringup-srv:success-val is deprecated.  Use robot_bringup-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <C_pose-response>) ostream)
  "Serializes a message object of type '<C_pose-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <C_pose-response>) istream)
  "Deserializes a message object of type '<C_pose-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<C_pose-response>)))
  "Returns string type for a service object of type '<C_pose-response>"
  "robot_bringup/C_poseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'C_pose-response)))
  "Returns string type for a service object of type 'C_pose-response"
  "robot_bringup/C_poseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<C_pose-response>)))
  "Returns md5sum for a message object of type '<C_pose-response>"
  "c5d18bef2da6b3fa66babcd6adf5167e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'C_pose-response)))
  "Returns md5sum for a message object of type 'C_pose-response"
  "c5d18bef2da6b3fa66babcd6adf5167e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<C_pose-response>)))
  "Returns full string definition for message of type '<C_pose-response>"
  (cl:format cl:nil "bool success~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'C_pose-response)))
  "Returns full string definition for message of type 'C_pose-response"
  (cl:format cl:nil "bool success~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <C_pose-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <C_pose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'C_pose-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'C_pose)))
  'C_pose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'C_pose)))
  'C_pose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'C_pose)))
  "Returns string type for a service object of type '<C_pose>"
  "robot_bringup/C_pose")
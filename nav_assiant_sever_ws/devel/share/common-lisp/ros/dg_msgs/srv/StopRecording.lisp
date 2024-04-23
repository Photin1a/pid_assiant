; Auto-generated. Do not edit!


(cl:in-package dg_msgs-srv)


;//! \htmlinclude StopRecording-request.msg.html

(cl:defclass <StopRecording-request> (roslisp-msg-protocol:ros-message)
  ((number
    :reader number
    :initarg :number
    :type cl:string
    :initform ""))
)

(cl:defclass StopRecording-request (<StopRecording-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StopRecording-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StopRecording-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<StopRecording-request> is deprecated: use dg_msgs-srv:StopRecording-request instead.")))

(cl:ensure-generic-function 'number-val :lambda-list '(m))
(cl:defmethod number-val ((m <StopRecording-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:number-val is deprecated.  Use dg_msgs-srv:number instead.")
  (number m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StopRecording-request>) ostream)
  "Serializes a message object of type '<StopRecording-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'number))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'number))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StopRecording-request>) istream)
  "Deserializes a message object of type '<StopRecording-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'number) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'number) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StopRecording-request>)))
  "Returns string type for a service object of type '<StopRecording-request>"
  "dg_msgs/StopRecordingRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopRecording-request)))
  "Returns string type for a service object of type 'StopRecording-request"
  "dg_msgs/StopRecordingRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StopRecording-request>)))
  "Returns md5sum for a message object of type '<StopRecording-request>"
  "7fc6f9833a3bb944adf806dfe5ac2a3b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StopRecording-request)))
  "Returns md5sum for a message object of type 'StopRecording-request"
  "7fc6f9833a3bb944adf806dfe5ac2a3b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StopRecording-request>)))
  "Returns full string definition for message of type '<StopRecording-request>"
  (cl:format cl:nil "string number       # 机械臂编号~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StopRecording-request)))
  "Returns full string definition for message of type 'StopRecording-request"
  (cl:format cl:nil "string number       # 机械臂编号~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StopRecording-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'number))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StopRecording-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StopRecording-request
    (cl:cons ':number (number msg))
))
;//! \htmlinclude StopRecording-response.msg.html

(cl:defclass <StopRecording-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0)
   (trajectory
    :reader trajectory
    :initarg :trajectory
    :type (cl:vector trajectory_msgs-msg:JointTrajectoryPoint)
   :initform (cl:make-array 0 :element-type 'trajectory_msgs-msg:JointTrajectoryPoint :initial-element (cl:make-instance 'trajectory_msgs-msg:JointTrajectoryPoint))))
)

(cl:defclass StopRecording-response (<StopRecording-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StopRecording-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StopRecording-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<StopRecording-response> is deprecated: use dg_msgs-srv:StopRecording-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <StopRecording-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:result-val is deprecated.  Use dg_msgs-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'trajectory-val :lambda-list '(m))
(cl:defmethod trajectory-val ((m <StopRecording-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:trajectory-val is deprecated.  Use dg_msgs-srv:trajectory instead.")
  (trajectory m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StopRecording-response>) ostream)
  "Serializes a message object of type '<StopRecording-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'trajectory))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'trajectory))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StopRecording-response>) istream)
  "Deserializes a message object of type '<StopRecording-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'trajectory) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'trajectory)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'trajectory_msgs-msg:JointTrajectoryPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StopRecording-response>)))
  "Returns string type for a service object of type '<StopRecording-response>"
  "dg_msgs/StopRecordingResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopRecording-response)))
  "Returns string type for a service object of type 'StopRecording-response"
  "dg_msgs/StopRecordingResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StopRecording-response>)))
  "Returns md5sum for a message object of type '<StopRecording-response>"
  "7fc6f9833a3bb944adf806dfe5ac2a3b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StopRecording-response)))
  "Returns md5sum for a message object of type 'StopRecording-response"
  "7fc6f9833a3bb944adf806dfe5ac2a3b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StopRecording-response>)))
  "Returns full string definition for message of type '<StopRecording-response>"
  (cl:format cl:nil "int32 result        # 0: 成功  非0：失败~%trajectory_msgs/JointTrajectoryPoint[] trajectory      # 机械臂轨迹~%~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StopRecording-response)))
  "Returns full string definition for message of type 'StopRecording-response"
  (cl:format cl:nil "int32 result        # 0: 成功  非0：失败~%trajectory_msgs/JointTrajectoryPoint[] trajectory      # 机械臂轨迹~%~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StopRecording-response>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'trajectory) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StopRecording-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StopRecording-response
    (cl:cons ':result (result msg))
    (cl:cons ':trajectory (trajectory msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StopRecording)))
  'StopRecording-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StopRecording)))
  'StopRecording-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopRecording)))
  "Returns string type for a service object of type '<StopRecording>"
  "dg_msgs/StopRecording")
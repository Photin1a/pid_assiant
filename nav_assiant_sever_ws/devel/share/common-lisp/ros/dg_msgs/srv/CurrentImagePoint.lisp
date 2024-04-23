; Auto-generated. Do not edit!


(cl:in-package dg_msgs-srv)


;//! \htmlinclude CurrentImagePoint-request.msg.html

(cl:defclass <CurrentImagePoint-request> (roslisp-msg-protocol:ros-message)
  ((number
    :reader number
    :initarg :number
    :type cl:string
    :initform "")
   (check_position
    :reader check_position
    :initarg :check_position
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CurrentImagePoint-request (<CurrentImagePoint-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CurrentImagePoint-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CurrentImagePoint-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<CurrentImagePoint-request> is deprecated: use dg_msgs-srv:CurrentImagePoint-request instead.")))

(cl:ensure-generic-function 'number-val :lambda-list '(m))
(cl:defmethod number-val ((m <CurrentImagePoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:number-val is deprecated.  Use dg_msgs-srv:number instead.")
  (number m))

(cl:ensure-generic-function 'check_position-val :lambda-list '(m))
(cl:defmethod check_position-val ((m <CurrentImagePoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:check_position-val is deprecated.  Use dg_msgs-srv:check_position instead.")
  (check_position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CurrentImagePoint-request>) ostream)
  "Serializes a message object of type '<CurrentImagePoint-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'number))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'number))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'check_position) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CurrentImagePoint-request>) istream)
  "Deserializes a message object of type '<CurrentImagePoint-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'number) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'number) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'check_position) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CurrentImagePoint-request>)))
  "Returns string type for a service object of type '<CurrentImagePoint-request>"
  "dg_msgs/CurrentImagePointRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CurrentImagePoint-request)))
  "Returns string type for a service object of type 'CurrentImagePoint-request"
  "dg_msgs/CurrentImagePointRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CurrentImagePoint-request>)))
  "Returns md5sum for a message object of type '<CurrentImagePoint-request>"
  "c451197fe7fada4a911ce8f0ae35fafe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CurrentImagePoint-request)))
  "Returns md5sum for a message object of type 'CurrentImagePoint-request"
  "c451197fe7fada4a911ce8f0ae35fafe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CurrentImagePoint-request>)))
  "Returns full string definition for message of type '<CurrentImagePoint-request>"
  (cl:format cl:nil "string number       # 设备编码~%bool check_position # 是否检查当前位置合理性~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CurrentImagePoint-request)))
  "Returns full string definition for message of type 'CurrentImagePoint-request"
  (cl:format cl:nil "string number       # 设备编码~%bool check_position # 是否检查当前位置合理性~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CurrentImagePoint-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'number))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CurrentImagePoint-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CurrentImagePoint-request
    (cl:cons ':number (number msg))
    (cl:cons ':check_position (check_position msg))
))
;//! \htmlinclude CurrentImagePoint-response.msg.html

(cl:defclass <CurrentImagePoint-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0)
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (joint
    :reader joint
    :initarg :joint
    :type trajectory_msgs-msg:JointTrajectoryPoint
    :initform (cl:make-instance 'trajectory_msgs-msg:JointTrajectoryPoint))
   (offset
    :reader offset
    :initarg :offset
    :type cl:float
    :initform 0.0)
   (custom_message
    :reader custom_message
    :initarg :custom_message
    :type cl:string
    :initform ""))
)

(cl:defclass CurrentImagePoint-response (<CurrentImagePoint-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CurrentImagePoint-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CurrentImagePoint-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<CurrentImagePoint-response> is deprecated: use dg_msgs-srv:CurrentImagePoint-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <CurrentImagePoint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:result-val is deprecated.  Use dg_msgs-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <CurrentImagePoint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:pose-val is deprecated.  Use dg_msgs-srv:pose instead.")
  (pose m))

(cl:ensure-generic-function 'joint-val :lambda-list '(m))
(cl:defmethod joint-val ((m <CurrentImagePoint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:joint-val is deprecated.  Use dg_msgs-srv:joint instead.")
  (joint m))

(cl:ensure-generic-function 'offset-val :lambda-list '(m))
(cl:defmethod offset-val ((m <CurrentImagePoint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:offset-val is deprecated.  Use dg_msgs-srv:offset instead.")
  (offset m))

(cl:ensure-generic-function 'custom_message-val :lambda-list '(m))
(cl:defmethod custom_message-val ((m <CurrentImagePoint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:custom_message-val is deprecated.  Use dg_msgs-srv:custom_message instead.")
  (custom_message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CurrentImagePoint-response>) ostream)
  "Serializes a message object of type '<CurrentImagePoint-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'joint) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'custom_message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'custom_message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CurrentImagePoint-response>) istream)
  "Deserializes a message object of type '<CurrentImagePoint-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'joint) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'offset) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'custom_message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'custom_message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CurrentImagePoint-response>)))
  "Returns string type for a service object of type '<CurrentImagePoint-response>"
  "dg_msgs/CurrentImagePointResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CurrentImagePoint-response)))
  "Returns string type for a service object of type 'CurrentImagePoint-response"
  "dg_msgs/CurrentImagePointResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CurrentImagePoint-response>)))
  "Returns md5sum for a message object of type '<CurrentImagePoint-response>"
  "c451197fe7fada4a911ce8f0ae35fafe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CurrentImagePoint-response)))
  "Returns md5sum for a message object of type 'CurrentImagePoint-response"
  "c451197fe7fada4a911ce8f0ae35fafe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CurrentImagePoint-response>)))
  "Returns full string definition for message of type '<CurrentImagePoint-response>"
  (cl:format cl:nil "int32 result        # 拍照点获取结果，0：成功；非0：失败（1：拍照点不合理）~%geometry_msgs/PoseStamped pose~%trajectory_msgs/JointTrajectoryPoint joint~%float32 offset      # 升降柱伸缩量~%string custom_message~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CurrentImagePoint-response)))
  "Returns full string definition for message of type 'CurrentImagePoint-response"
  (cl:format cl:nil "int32 result        # 拍照点获取结果，0：成功；非0：失败（1：拍照点不合理）~%geometry_msgs/PoseStamped pose~%trajectory_msgs/JointTrajectoryPoint joint~%float32 offset      # 升降柱伸缩量~%string custom_message~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CurrentImagePoint-response>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'joint))
     4
     4 (cl:length (cl:slot-value msg 'custom_message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CurrentImagePoint-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CurrentImagePoint-response
    (cl:cons ':result (result msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':joint (joint msg))
    (cl:cons ':offset (offset msg))
    (cl:cons ':custom_message (custom_message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CurrentImagePoint)))
  'CurrentImagePoint-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CurrentImagePoint)))
  'CurrentImagePoint-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CurrentImagePoint)))
  "Returns string type for a service object of type '<CurrentImagePoint>"
  "dg_msgs/CurrentImagePoint")
; Auto-generated. Do not edit!


(cl:in-package dg_msgs-srv)


;//! \htmlinclude RobotArmAcqModelLoad-request.msg.html

(cl:defclass <RobotArmAcqModelLoad-request> (roslisp-msg-protocol:ros-message)
  ((model_path
    :reader model_path
    :initarg :model_path
    :type cl:string
    :initform "")
   (matrix_region_init
    :reader matrix_region_init
    :initarg :matrix_region_init
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (region_frame_path
    :reader region_frame_path
    :initarg :region_frame_path
    :type cl:string
    :initform "")
   (matrix_region_regionframe
    :reader matrix_region_regionframe
    :initarg :matrix_region_regionframe
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (image_points
    :reader image_points
    :initarg :image_points
    :type (cl:vector dg_msgs-msg:PointSequence)
   :initform (cl:make-array 0 :element-type 'dg_msgs-msg:PointSequence :initial-element (cl:make-instance 'dg_msgs-msg:PointSequence))))
)

(cl:defclass RobotArmAcqModelLoad-request (<RobotArmAcqModelLoad-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotArmAcqModelLoad-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotArmAcqModelLoad-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<RobotArmAcqModelLoad-request> is deprecated: use dg_msgs-srv:RobotArmAcqModelLoad-request instead.")))

(cl:ensure-generic-function 'model_path-val :lambda-list '(m))
(cl:defmethod model_path-val ((m <RobotArmAcqModelLoad-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:model_path-val is deprecated.  Use dg_msgs-srv:model_path instead.")
  (model_path m))

(cl:ensure-generic-function 'matrix_region_init-val :lambda-list '(m))
(cl:defmethod matrix_region_init-val ((m <RobotArmAcqModelLoad-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:matrix_region_init-val is deprecated.  Use dg_msgs-srv:matrix_region_init instead.")
  (matrix_region_init m))

(cl:ensure-generic-function 'region_frame_path-val :lambda-list '(m))
(cl:defmethod region_frame_path-val ((m <RobotArmAcqModelLoad-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:region_frame_path-val is deprecated.  Use dg_msgs-srv:region_frame_path instead.")
  (region_frame_path m))

(cl:ensure-generic-function 'matrix_region_regionframe-val :lambda-list '(m))
(cl:defmethod matrix_region_regionframe-val ((m <RobotArmAcqModelLoad-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:matrix_region_regionframe-val is deprecated.  Use dg_msgs-srv:matrix_region_regionframe instead.")
  (matrix_region_regionframe m))

(cl:ensure-generic-function 'image_points-val :lambda-list '(m))
(cl:defmethod image_points-val ((m <RobotArmAcqModelLoad-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:image_points-val is deprecated.  Use dg_msgs-srv:image_points instead.")
  (image_points m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotArmAcqModelLoad-request>) ostream)
  "Serializes a message object of type '<RobotArmAcqModelLoad-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'model_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'model_path))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'matrix_region_init))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'matrix_region_init))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'region_frame_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'region_frame_path))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'matrix_region_regionframe))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'matrix_region_regionframe))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'image_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'image_points))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotArmAcqModelLoad-request>) istream)
  "Deserializes a message object of type '<RobotArmAcqModelLoad-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'model_path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'model_path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'matrix_region_init) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'matrix_region_init)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'region_frame_path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'region_frame_path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'matrix_region_regionframe) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'matrix_region_regionframe)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'image_points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'image_points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'dg_msgs-msg:PointSequence))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotArmAcqModelLoad-request>)))
  "Returns string type for a service object of type '<RobotArmAcqModelLoad-request>"
  "dg_msgs/RobotArmAcqModelLoadRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotArmAcqModelLoad-request)))
  "Returns string type for a service object of type 'RobotArmAcqModelLoad-request"
  "dg_msgs/RobotArmAcqModelLoadRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotArmAcqModelLoad-request>)))
  "Returns md5sum for a message object of type '<RobotArmAcqModelLoad-request>"
  "7fe10d3217aaf92c81e254fca18fb315")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotArmAcqModelLoad-request)))
  "Returns md5sum for a message object of type 'RobotArmAcqModelLoad-request"
  "7fe10d3217aaf92c81e254fca18fb315")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotArmAcqModelLoad-request>)))
  "Returns full string definition for message of type '<RobotArmAcqModelLoad-request>"
  (cl:format cl:nil "string      model_path                     # 区域模型~%float64[]   matrix_region_init             # 区域初始矩阵，镜像复用和旋转复用，在进行配准时需要提前对区域~%string      region_frame_path              # 区域配准帧模型~%float64[]   matrix_region_regionframe      # 区域到区域配准帧的转换关系~%PointSequence[] image_points                     # 像点, 用于加载可替代点位~%~%================================================================================~%MSG: dg_msgs/PointSequence~%string number      # 设备组编号~%ImagePoint[] points    # 机械臂拍照点位~%~%================================================================================~%MSG: dg_msgs/ImagePoint~%geometry_msgs/PoseStamped pose~%trajectory_msgs/JointTrajectoryPoint joint~%float32 offset      # 升降柱伸缩量~%string custom_message~%ImageGoal image_goal~%string point_file_name~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%================================================================================~%MSG: dg_msgs/ImageGoal~%string id          # ID~%string number     # 设备编号~%int32 types     # 拍照类型，灰度为`1`，彩色为`2`，深度为`4`，点云为`8`，多种类型时按位相与~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotArmAcqModelLoad-request)))
  "Returns full string definition for message of type 'RobotArmAcqModelLoad-request"
  (cl:format cl:nil "string      model_path                     # 区域模型~%float64[]   matrix_region_init             # 区域初始矩阵，镜像复用和旋转复用，在进行配准时需要提前对区域~%string      region_frame_path              # 区域配准帧模型~%float64[]   matrix_region_regionframe      # 区域到区域配准帧的转换关系~%PointSequence[] image_points                     # 像点, 用于加载可替代点位~%~%================================================================================~%MSG: dg_msgs/PointSequence~%string number      # 设备组编号~%ImagePoint[] points    # 机械臂拍照点位~%~%================================================================================~%MSG: dg_msgs/ImagePoint~%geometry_msgs/PoseStamped pose~%trajectory_msgs/JointTrajectoryPoint joint~%float32 offset      # 升降柱伸缩量~%string custom_message~%ImageGoal image_goal~%string point_file_name~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%================================================================================~%MSG: dg_msgs/ImageGoal~%string id          # ID~%string number     # 设备编号~%int32 types     # 拍照类型，灰度为`1`，彩色为`2`，深度为`4`，点云为`8`，多种类型时按位相与~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotArmAcqModelLoad-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'model_path))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'matrix_region_init) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:length (cl:slot-value msg 'region_frame_path))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'matrix_region_regionframe) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'image_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotArmAcqModelLoad-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotArmAcqModelLoad-request
    (cl:cons ':model_path (model_path msg))
    (cl:cons ':matrix_region_init (matrix_region_init msg))
    (cl:cons ':region_frame_path (region_frame_path msg))
    (cl:cons ':matrix_region_regionframe (matrix_region_regionframe msg))
    (cl:cons ':image_points (image_points msg))
))
;//! \htmlinclude RobotArmAcqModelLoad-response.msg.html

(cl:defclass <RobotArmAcqModelLoad-response> (roslisp-msg-protocol:ros-message)
  ((state_info
    :reader state_info
    :initarg :state_info
    :type dg_msgs-msg:UniversalStateInfo
    :initform (cl:make-instance 'dg_msgs-msg:UniversalStateInfo)))
)

(cl:defclass RobotArmAcqModelLoad-response (<RobotArmAcqModelLoad-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotArmAcqModelLoad-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotArmAcqModelLoad-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<RobotArmAcqModelLoad-response> is deprecated: use dg_msgs-srv:RobotArmAcqModelLoad-response instead.")))

(cl:ensure-generic-function 'state_info-val :lambda-list '(m))
(cl:defmethod state_info-val ((m <RobotArmAcqModelLoad-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:state_info-val is deprecated.  Use dg_msgs-srv:state_info instead.")
  (state_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotArmAcqModelLoad-response>) ostream)
  "Serializes a message object of type '<RobotArmAcqModelLoad-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state_info) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotArmAcqModelLoad-response>) istream)
  "Deserializes a message object of type '<RobotArmAcqModelLoad-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state_info) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotArmAcqModelLoad-response>)))
  "Returns string type for a service object of type '<RobotArmAcqModelLoad-response>"
  "dg_msgs/RobotArmAcqModelLoadResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotArmAcqModelLoad-response)))
  "Returns string type for a service object of type 'RobotArmAcqModelLoad-response"
  "dg_msgs/RobotArmAcqModelLoadResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotArmAcqModelLoad-response>)))
  "Returns md5sum for a message object of type '<RobotArmAcqModelLoad-response>"
  "7fe10d3217aaf92c81e254fca18fb315")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotArmAcqModelLoad-response)))
  "Returns md5sum for a message object of type 'RobotArmAcqModelLoad-response"
  "7fe10d3217aaf92c81e254fca18fb315")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotArmAcqModelLoad-response>)))
  "Returns full string definition for message of type '<RobotArmAcqModelLoad-response>"
  (cl:format cl:nil "UniversalStateInfo  state_info~%~%# 0 表示成功；~%~%================================================================================~%MSG: dg_msgs/UniversalStateInfo~%int32 state_index   # 状态索引值：统一0是正常，其他数字自定义~%string node_name    # 当前节点名~%string state_msgs   # 附加信息，相当于additional_msgs~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotArmAcqModelLoad-response)))
  "Returns full string definition for message of type 'RobotArmAcqModelLoad-response"
  (cl:format cl:nil "UniversalStateInfo  state_info~%~%# 0 表示成功；~%~%================================================================================~%MSG: dg_msgs/UniversalStateInfo~%int32 state_index   # 状态索引值：统一0是正常，其他数字自定义~%string node_name    # 当前节点名~%string state_msgs   # 附加信息，相当于additional_msgs~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotArmAcqModelLoad-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotArmAcqModelLoad-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotArmAcqModelLoad-response
    (cl:cons ':state_info (state_info msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RobotArmAcqModelLoad)))
  'RobotArmAcqModelLoad-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RobotArmAcqModelLoad)))
  'RobotArmAcqModelLoad-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotArmAcqModelLoad)))
  "Returns string type for a service object of type '<RobotArmAcqModelLoad>"
  "dg_msgs/RobotArmAcqModelLoad")
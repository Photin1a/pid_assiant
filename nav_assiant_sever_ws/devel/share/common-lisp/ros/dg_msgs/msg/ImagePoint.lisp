; Auto-generated. Do not edit!


(cl:in-package dg_msgs-msg)


;//! \htmlinclude ImagePoint.msg.html

(cl:defclass <ImagePoint> (roslisp-msg-protocol:ros-message)
  ((pose
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
    :initform "")
   (image_goal
    :reader image_goal
    :initarg :image_goal
    :type dg_msgs-msg:ImageGoal
    :initform (cl:make-instance 'dg_msgs-msg:ImageGoal))
   (point_file_name
    :reader point_file_name
    :initarg :point_file_name
    :type cl:string
    :initform ""))
)

(cl:defclass ImagePoint (<ImagePoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ImagePoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ImagePoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-msg:<ImagePoint> is deprecated: use dg_msgs-msg:ImagePoint instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <ImagePoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:pose-val is deprecated.  Use dg_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'joint-val :lambda-list '(m))
(cl:defmethod joint-val ((m <ImagePoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:joint-val is deprecated.  Use dg_msgs-msg:joint instead.")
  (joint m))

(cl:ensure-generic-function 'offset-val :lambda-list '(m))
(cl:defmethod offset-val ((m <ImagePoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:offset-val is deprecated.  Use dg_msgs-msg:offset instead.")
  (offset m))

(cl:ensure-generic-function 'custom_message-val :lambda-list '(m))
(cl:defmethod custom_message-val ((m <ImagePoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:custom_message-val is deprecated.  Use dg_msgs-msg:custom_message instead.")
  (custom_message m))

(cl:ensure-generic-function 'image_goal-val :lambda-list '(m))
(cl:defmethod image_goal-val ((m <ImagePoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:image_goal-val is deprecated.  Use dg_msgs-msg:image_goal instead.")
  (image_goal m))

(cl:ensure-generic-function 'point_file_name-val :lambda-list '(m))
(cl:defmethod point_file_name-val ((m <ImagePoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:point_file_name-val is deprecated.  Use dg_msgs-msg:point_file_name instead.")
  (point_file_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ImagePoint>) ostream)
  "Serializes a message object of type '<ImagePoint>"
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
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'image_goal) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'point_file_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'point_file_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ImagePoint>) istream)
  "Deserializes a message object of type '<ImagePoint>"
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'image_goal) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'point_file_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'point_file_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ImagePoint>)))
  "Returns string type for a message object of type '<ImagePoint>"
  "dg_msgs/ImagePoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ImagePoint)))
  "Returns string type for a message object of type 'ImagePoint"
  "dg_msgs/ImagePoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ImagePoint>)))
  "Returns md5sum for a message object of type '<ImagePoint>"
  "c622e2a85a7ab256c39a58e6fc6bff26")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ImagePoint)))
  "Returns md5sum for a message object of type 'ImagePoint"
  "c622e2a85a7ab256c39a58e6fc6bff26")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ImagePoint>)))
  "Returns full string definition for message of type '<ImagePoint>"
  (cl:format cl:nil "geometry_msgs/PoseStamped pose~%trajectory_msgs/JointTrajectoryPoint joint~%float32 offset      # 升降柱伸缩量~%string custom_message~%ImageGoal image_goal~%string point_file_name~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%================================================================================~%MSG: dg_msgs/ImageGoal~%string id          # ID~%string number     # 设备编号~%int32 types     # 拍照类型，灰度为`1`，彩色为`2`，深度为`4`，点云为`8`，多种类型时按位相与~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ImagePoint)))
  "Returns full string definition for message of type 'ImagePoint"
  (cl:format cl:nil "geometry_msgs/PoseStamped pose~%trajectory_msgs/JointTrajectoryPoint joint~%float32 offset      # 升降柱伸缩量~%string custom_message~%ImageGoal image_goal~%string point_file_name~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%================================================================================~%MSG: dg_msgs/ImageGoal~%string id          # ID~%string number     # 设备编号~%int32 types     # 拍照类型，灰度为`1`，彩色为`2`，深度为`4`，点云为`8`，多种类型时按位相与~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ImagePoint>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'joint))
     4
     4 (cl:length (cl:slot-value msg 'custom_message))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image_goal))
     4 (cl:length (cl:slot-value msg 'point_file_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ImagePoint>))
  "Converts a ROS message object to a list"
  (cl:list 'ImagePoint
    (cl:cons ':pose (pose msg))
    (cl:cons ':joint (joint msg))
    (cl:cons ':offset (offset msg))
    (cl:cons ':custom_message (custom_message msg))
    (cl:cons ':image_goal (image_goal msg))
    (cl:cons ':point_file_name (point_file_name msg))
))

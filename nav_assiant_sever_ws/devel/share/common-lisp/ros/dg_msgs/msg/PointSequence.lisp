; Auto-generated. Do not edit!


(cl:in-package dg_msgs-msg)


;//! \htmlinclude PointSequence.msg.html

(cl:defclass <PointSequence> (roslisp-msg-protocol:ros-message)
  ((number
    :reader number
    :initarg :number
    :type cl:string
    :initform "")
   (points
    :reader points
    :initarg :points
    :type (cl:vector dg_msgs-msg:ImagePoint)
   :initform (cl:make-array 0 :element-type 'dg_msgs-msg:ImagePoint :initial-element (cl:make-instance 'dg_msgs-msg:ImagePoint))))
)

(cl:defclass PointSequence (<PointSequence>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PointSequence>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PointSequence)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-msg:<PointSequence> is deprecated: use dg_msgs-msg:PointSequence instead.")))

(cl:ensure-generic-function 'number-val :lambda-list '(m))
(cl:defmethod number-val ((m <PointSequence>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:number-val is deprecated.  Use dg_msgs-msg:number instead.")
  (number m))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <PointSequence>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:points-val is deprecated.  Use dg_msgs-msg:points instead.")
  (points m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PointSequence>) ostream)
  "Serializes a message object of type '<PointSequence>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'number))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'number))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PointSequence>) istream)
  "Deserializes a message object of type '<PointSequence>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'number) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'number) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'dg_msgs-msg:ImagePoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PointSequence>)))
  "Returns string type for a message object of type '<PointSequence>"
  "dg_msgs/PointSequence")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PointSequence)))
  "Returns string type for a message object of type 'PointSequence"
  "dg_msgs/PointSequence")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PointSequence>)))
  "Returns md5sum for a message object of type '<PointSequence>"
  "b0d9a719acd34e16fa2945a901af80a3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PointSequence)))
  "Returns md5sum for a message object of type 'PointSequence"
  "b0d9a719acd34e16fa2945a901af80a3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PointSequence>)))
  "Returns full string definition for message of type '<PointSequence>"
  (cl:format cl:nil "string number      # 设备组编号~%ImagePoint[] points    # 机械臂拍照点位~%~%================================================================================~%MSG: dg_msgs/ImagePoint~%geometry_msgs/PoseStamped pose~%trajectory_msgs/JointTrajectoryPoint joint~%float32 offset      # 升降柱伸缩量~%string custom_message~%ImageGoal image_goal~%string point_file_name~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%================================================================================~%MSG: dg_msgs/ImageGoal~%string id          # ID~%string number     # 设备编号~%int32 types     # 拍照类型，灰度为`1`，彩色为`2`，深度为`4`，点云为`8`，多种类型时按位相与~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PointSequence)))
  "Returns full string definition for message of type 'PointSequence"
  (cl:format cl:nil "string number      # 设备组编号~%ImagePoint[] points    # 机械臂拍照点位~%~%================================================================================~%MSG: dg_msgs/ImagePoint~%geometry_msgs/PoseStamped pose~%trajectory_msgs/JointTrajectoryPoint joint~%float32 offset      # 升降柱伸缩量~%string custom_message~%ImageGoal image_goal~%string point_file_name~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%================================================================================~%MSG: dg_msgs/ImageGoal~%string id          # ID~%string number     # 设备编号~%int32 types     # 拍照类型，灰度为`1`，彩色为`2`，深度为`4`，点云为`8`，多种类型时按位相与~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PointSequence>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'number))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PointSequence>))
  "Converts a ROS message object to a list"
  (cl:list 'PointSequence
    (cl:cons ':number (number msg))
    (cl:cons ':points (points msg))
))

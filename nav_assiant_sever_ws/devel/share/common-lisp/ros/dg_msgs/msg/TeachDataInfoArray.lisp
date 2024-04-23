; Auto-generated. Do not edit!


(cl:in-package dg_msgs-msg)


;//! \htmlinclude TeachDataInfoArray.msg.html

(cl:defclass <TeachDataInfoArray> (roslisp-msg-protocol:ros-message)
  ((TeachData
    :reader TeachData
    :initarg :TeachData
    :type (cl:vector dg_msgs-msg:TeachDataInfo)
   :initform (cl:make-array 0 :element-type 'dg_msgs-msg:TeachDataInfo :initial-element (cl:make-instance 'dg_msgs-msg:TeachDataInfo))))
)

(cl:defclass TeachDataInfoArray (<TeachDataInfoArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TeachDataInfoArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TeachDataInfoArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-msg:<TeachDataInfoArray> is deprecated: use dg_msgs-msg:TeachDataInfoArray instead.")))

(cl:ensure-generic-function 'TeachData-val :lambda-list '(m))
(cl:defmethod TeachData-val ((m <TeachDataInfoArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:TeachData-val is deprecated.  Use dg_msgs-msg:TeachData instead.")
  (TeachData m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TeachDataInfoArray>) ostream)
  "Serializes a message object of type '<TeachDataInfoArray>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'TeachData))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'TeachData))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TeachDataInfoArray>) istream)
  "Deserializes a message object of type '<TeachDataInfoArray>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'TeachData) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'TeachData)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'dg_msgs-msg:TeachDataInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TeachDataInfoArray>)))
  "Returns string type for a message object of type '<TeachDataInfoArray>"
  "dg_msgs/TeachDataInfoArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TeachDataInfoArray)))
  "Returns string type for a message object of type 'TeachDataInfoArray"
  "dg_msgs/TeachDataInfoArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TeachDataInfoArray>)))
  "Returns md5sum for a message object of type '<TeachDataInfoArray>"
  "b4e006fa993775aa9be2a4055f4cff48")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TeachDataInfoArray)))
  "Returns md5sum for a message object of type 'TeachDataInfoArray"
  "b4e006fa993775aa9be2a4055f4cff48")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TeachDataInfoArray>)))
  "Returns full string definition for message of type '<TeachDataInfoArray>"
  (cl:format cl:nil "TeachDataInfo[]     TeachData~%================================================================================~%MSG: dg_msgs/TeachDataInfo~%geometry_msgs/PoseStamped pose_stop_trainhead~%geometry_msgs/PoseStamped pose_stop_region~%int32                     model_type~%string                    model_path~%geometry_msgs/PoseArray   camera_region~%int32                     region_type           # 区域类型，0直接复用，1镜像复用，2旋转180复用~%float64[]                 matrix_region_init~%float64[]                 matrix_region_trainhead~%int32                     reg_type              # 配准采集数据类型， 0为相机，1为雷达~%string                    lidar_topic~%CorrectionPoint           correction_point~%CropBox                   box_target~%CropBox                   box_source~%int32                     cruising_route_type~%int32                     geometry_completion_type~%geometry_msgs/PoseStamped pose_regionframe_region~%geometry_msgs/PoseStamped pose_regionframe_trainhead~%trajectory_msgs/JointTrajectoryPoint[]                          correction_joint~%string                      region_frame_path~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/PoseArray~%# An array of poses with a header for global reference.~%~%Header header~%~%Pose[] poses~%~%================================================================================~%MSG: dg_msgs/CorrectionPoint~%string number                                   # 设备组编号~%geometry_msgs/PoseStamped pose                  # 相机目标点的pose~%float32 offset                                  # 升降柱伸缩量~%string custom_message~%================================================================================~%MSG: dg_msgs/CropBox~%float32[] center_~%float32[] R_euler~%float32[] extent_~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TeachDataInfoArray)))
  "Returns full string definition for message of type 'TeachDataInfoArray"
  (cl:format cl:nil "TeachDataInfo[]     TeachData~%================================================================================~%MSG: dg_msgs/TeachDataInfo~%geometry_msgs/PoseStamped pose_stop_trainhead~%geometry_msgs/PoseStamped pose_stop_region~%int32                     model_type~%string                    model_path~%geometry_msgs/PoseArray   camera_region~%int32                     region_type           # 区域类型，0直接复用，1镜像复用，2旋转180复用~%float64[]                 matrix_region_init~%float64[]                 matrix_region_trainhead~%int32                     reg_type              # 配准采集数据类型， 0为相机，1为雷达~%string                    lidar_topic~%CorrectionPoint           correction_point~%CropBox                   box_target~%CropBox                   box_source~%int32                     cruising_route_type~%int32                     geometry_completion_type~%geometry_msgs/PoseStamped pose_regionframe_region~%geometry_msgs/PoseStamped pose_regionframe_trainhead~%trajectory_msgs/JointTrajectoryPoint[]                          correction_joint~%string                      region_frame_path~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/PoseArray~%# An array of poses with a header for global reference.~%~%Header header~%~%Pose[] poses~%~%================================================================================~%MSG: dg_msgs/CorrectionPoint~%string number                                   # 设备组编号~%geometry_msgs/PoseStamped pose                  # 相机目标点的pose~%float32 offset                                  # 升降柱伸缩量~%string custom_message~%================================================================================~%MSG: dg_msgs/CropBox~%float32[] center_~%float32[] R_euler~%float32[] extent_~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TeachDataInfoArray>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'TeachData) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TeachDataInfoArray>))
  "Converts a ROS message object to a list"
  (cl:list 'TeachDataInfoArray
    (cl:cons ':TeachData (TeachData msg))
))

; Auto-generated. Do not edit!


(cl:in-package dg_msgs-msg)


;//! \htmlinclude EquipmentGroup.msg.html

(cl:defclass <EquipmentGroup> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (number
    :reader number
    :initarg :number
    :type cl:string
    :initform "")
   (slide_table
    :reader slide_table
    :initarg :slide_table
    :type dg_msgs-msg:SlideTableInfo
    :initform (cl:make-instance 'dg_msgs-msg:SlideTableInfo))
   (lifting_column
    :reader lifting_column
    :initarg :lifting_column
    :type dg_msgs-msg:LiftingColumnInfo
    :initform (cl:make-instance 'dg_msgs-msg:LiftingColumnInfo))
   (robot_arm
    :reader robot_arm
    :initarg :robot_arm
    :type dg_msgs-msg:RobotArmInfo
    :initform (cl:make-instance 'dg_msgs-msg:RobotArmInfo))
   (cameras
    :reader cameras
    :initarg :cameras
    :type (cl:vector dg_msgs-msg:CameraInfo)
   :initform (cl:make-array 0 :element-type 'dg_msgs-msg:CameraInfo :initial-element (cl:make-instance 'dg_msgs-msg:CameraInfo))))
)

(cl:defclass EquipmentGroup (<EquipmentGroup>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EquipmentGroup>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EquipmentGroup)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-msg:<EquipmentGroup> is deprecated: use dg_msgs-msg:EquipmentGroup instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <EquipmentGroup>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:name-val is deprecated.  Use dg_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'number-val :lambda-list '(m))
(cl:defmethod number-val ((m <EquipmentGroup>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:number-val is deprecated.  Use dg_msgs-msg:number instead.")
  (number m))

(cl:ensure-generic-function 'slide_table-val :lambda-list '(m))
(cl:defmethod slide_table-val ((m <EquipmentGroup>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:slide_table-val is deprecated.  Use dg_msgs-msg:slide_table instead.")
  (slide_table m))

(cl:ensure-generic-function 'lifting_column-val :lambda-list '(m))
(cl:defmethod lifting_column-val ((m <EquipmentGroup>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:lifting_column-val is deprecated.  Use dg_msgs-msg:lifting_column instead.")
  (lifting_column m))

(cl:ensure-generic-function 'robot_arm-val :lambda-list '(m))
(cl:defmethod robot_arm-val ((m <EquipmentGroup>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:robot_arm-val is deprecated.  Use dg_msgs-msg:robot_arm instead.")
  (robot_arm m))

(cl:ensure-generic-function 'cameras-val :lambda-list '(m))
(cl:defmethod cameras-val ((m <EquipmentGroup>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:cameras-val is deprecated.  Use dg_msgs-msg:cameras instead.")
  (cameras m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EquipmentGroup>) ostream)
  "Serializes a message object of type '<EquipmentGroup>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'number))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'number))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'slide_table) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lifting_column) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'robot_arm) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cameras))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'cameras))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EquipmentGroup>) istream)
  "Deserializes a message object of type '<EquipmentGroup>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'number) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'number) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'slide_table) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lifting_column) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'robot_arm) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cameras) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cameras)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'dg_msgs-msg:CameraInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EquipmentGroup>)))
  "Returns string type for a message object of type '<EquipmentGroup>"
  "dg_msgs/EquipmentGroup")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EquipmentGroup)))
  "Returns string type for a message object of type 'EquipmentGroup"
  "dg_msgs/EquipmentGroup")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EquipmentGroup>)))
  "Returns md5sum for a message object of type '<EquipmentGroup>"
  "3f0794ee84d32d51d621caef93d18cf5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EquipmentGroup)))
  "Returns md5sum for a message object of type 'EquipmentGroup"
  "3f0794ee84d32d51d621caef93d18cf5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EquipmentGroup>)))
  "Returns full string definition for message of type '<EquipmentGroup>"
  (cl:format cl:nil "string name             # 设备组名称~%string number           # 设备组编号~%SlideTableInfo slide_table~%LiftingColumnInfo lifting_column~%RobotArmInfo robot_arm~%CameraInfo[] cameras~%~%================================================================================~%MSG: dg_msgs/SlideTableInfo~%EquipmentCommon equipment~%string number           # 设备组编号~%~%================================================================================~%MSG: dg_msgs/EquipmentCommon~%int32 equipment_id~%string equipment_name~%bool connected~%uint64 connected_time~%string model~%string manufacturer~%~%================================================================================~%MSG: dg_msgs/LiftingColumnInfo~%EquipmentCommon equipment~%string number           # 设备组编号~%~%================================================================================~%MSG: dg_msgs/RobotArmInfo~%EquipmentCommon equipment~%string number           # 设备组编号~%int32 state~%bool enabled            # 机械臂是否使能标志~%bool protective_stop    # 机械臂是否检测到碰撞~%bool emergency_stop     # 机械臂是否急停~%bool drag_status        # 机械臂是否处于拖拽状态~%bool recording          # 机械臂是否处于录制状态~%bool moving_stop        # 机械臂是否处于运动状态~%float64 speed_ratio     # 机械臂当前速度~%bool error_status       # 机械臂是否处于报错状态~%string[] error_msgs     # 机械臂的错误信息反馈~%string payload          # 自定义信息，用于存放不同型号机械臂信息~%================================================================================~%MSG: dg_msgs/CameraInfo~%EquipmentCommon equipment~%string number           # 设备组编号~%string sn_number~%int32 type~%float32[] intrinsics~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EquipmentGroup)))
  "Returns full string definition for message of type 'EquipmentGroup"
  (cl:format cl:nil "string name             # 设备组名称~%string number           # 设备组编号~%SlideTableInfo slide_table~%LiftingColumnInfo lifting_column~%RobotArmInfo robot_arm~%CameraInfo[] cameras~%~%================================================================================~%MSG: dg_msgs/SlideTableInfo~%EquipmentCommon equipment~%string number           # 设备组编号~%~%================================================================================~%MSG: dg_msgs/EquipmentCommon~%int32 equipment_id~%string equipment_name~%bool connected~%uint64 connected_time~%string model~%string manufacturer~%~%================================================================================~%MSG: dg_msgs/LiftingColumnInfo~%EquipmentCommon equipment~%string number           # 设备组编号~%~%================================================================================~%MSG: dg_msgs/RobotArmInfo~%EquipmentCommon equipment~%string number           # 设备组编号~%int32 state~%bool enabled            # 机械臂是否使能标志~%bool protective_stop    # 机械臂是否检测到碰撞~%bool emergency_stop     # 机械臂是否急停~%bool drag_status        # 机械臂是否处于拖拽状态~%bool recording          # 机械臂是否处于录制状态~%bool moving_stop        # 机械臂是否处于运动状态~%float64 speed_ratio     # 机械臂当前速度~%bool error_status       # 机械臂是否处于报错状态~%string[] error_msgs     # 机械臂的错误信息反馈~%string payload          # 自定义信息，用于存放不同型号机械臂信息~%================================================================================~%MSG: dg_msgs/CameraInfo~%EquipmentCommon equipment~%string number           # 设备组编号~%string sn_number~%int32 type~%float32[] intrinsics~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EquipmentGroup>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'number))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'slide_table))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lifting_column))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'robot_arm))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cameras) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EquipmentGroup>))
  "Converts a ROS message object to a list"
  (cl:list 'EquipmentGroup
    (cl:cons ':name (name msg))
    (cl:cons ':number (number msg))
    (cl:cons ':slide_table (slide_table msg))
    (cl:cons ':lifting_column (lifting_column msg))
    (cl:cons ':robot_arm (robot_arm msg))
    (cl:cons ':cameras (cameras msg))
))

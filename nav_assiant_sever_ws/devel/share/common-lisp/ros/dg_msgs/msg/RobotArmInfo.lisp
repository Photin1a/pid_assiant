; Auto-generated. Do not edit!


(cl:in-package dg_msgs-msg)


;//! \htmlinclude RobotArmInfo.msg.html

(cl:defclass <RobotArmInfo> (roslisp-msg-protocol:ros-message)
  ((equipment
    :reader equipment
    :initarg :equipment
    :type dg_msgs-msg:EquipmentCommon
    :initform (cl:make-instance 'dg_msgs-msg:EquipmentCommon))
   (number
    :reader number
    :initarg :number
    :type cl:string
    :initform "")
   (state
    :reader state
    :initarg :state
    :type cl:integer
    :initform 0)
   (enabled
    :reader enabled
    :initarg :enabled
    :type cl:boolean
    :initform cl:nil)
   (protective_stop
    :reader protective_stop
    :initarg :protective_stop
    :type cl:boolean
    :initform cl:nil)
   (emergency_stop
    :reader emergency_stop
    :initarg :emergency_stop
    :type cl:boolean
    :initform cl:nil)
   (drag_status
    :reader drag_status
    :initarg :drag_status
    :type cl:boolean
    :initform cl:nil)
   (recording
    :reader recording
    :initarg :recording
    :type cl:boolean
    :initform cl:nil)
   (moving_stop
    :reader moving_stop
    :initarg :moving_stop
    :type cl:boolean
    :initform cl:nil)
   (speed_ratio
    :reader speed_ratio
    :initarg :speed_ratio
    :type cl:float
    :initform 0.0)
   (error_status
    :reader error_status
    :initarg :error_status
    :type cl:boolean
    :initform cl:nil)
   (error_msgs
    :reader error_msgs
    :initarg :error_msgs
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (payload
    :reader payload
    :initarg :payload
    :type cl:string
    :initform ""))
)

(cl:defclass RobotArmInfo (<RobotArmInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotArmInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotArmInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-msg:<RobotArmInfo> is deprecated: use dg_msgs-msg:RobotArmInfo instead.")))

(cl:ensure-generic-function 'equipment-val :lambda-list '(m))
(cl:defmethod equipment-val ((m <RobotArmInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:equipment-val is deprecated.  Use dg_msgs-msg:equipment instead.")
  (equipment m))

(cl:ensure-generic-function 'number-val :lambda-list '(m))
(cl:defmethod number-val ((m <RobotArmInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:number-val is deprecated.  Use dg_msgs-msg:number instead.")
  (number m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <RobotArmInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:state-val is deprecated.  Use dg_msgs-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'enabled-val :lambda-list '(m))
(cl:defmethod enabled-val ((m <RobotArmInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:enabled-val is deprecated.  Use dg_msgs-msg:enabled instead.")
  (enabled m))

(cl:ensure-generic-function 'protective_stop-val :lambda-list '(m))
(cl:defmethod protective_stop-val ((m <RobotArmInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:protective_stop-val is deprecated.  Use dg_msgs-msg:protective_stop instead.")
  (protective_stop m))

(cl:ensure-generic-function 'emergency_stop-val :lambda-list '(m))
(cl:defmethod emergency_stop-val ((m <RobotArmInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:emergency_stop-val is deprecated.  Use dg_msgs-msg:emergency_stop instead.")
  (emergency_stop m))

(cl:ensure-generic-function 'drag_status-val :lambda-list '(m))
(cl:defmethod drag_status-val ((m <RobotArmInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:drag_status-val is deprecated.  Use dg_msgs-msg:drag_status instead.")
  (drag_status m))

(cl:ensure-generic-function 'recording-val :lambda-list '(m))
(cl:defmethod recording-val ((m <RobotArmInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:recording-val is deprecated.  Use dg_msgs-msg:recording instead.")
  (recording m))

(cl:ensure-generic-function 'moving_stop-val :lambda-list '(m))
(cl:defmethod moving_stop-val ((m <RobotArmInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:moving_stop-val is deprecated.  Use dg_msgs-msg:moving_stop instead.")
  (moving_stop m))

(cl:ensure-generic-function 'speed_ratio-val :lambda-list '(m))
(cl:defmethod speed_ratio-val ((m <RobotArmInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:speed_ratio-val is deprecated.  Use dg_msgs-msg:speed_ratio instead.")
  (speed_ratio m))

(cl:ensure-generic-function 'error_status-val :lambda-list '(m))
(cl:defmethod error_status-val ((m <RobotArmInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:error_status-val is deprecated.  Use dg_msgs-msg:error_status instead.")
  (error_status m))

(cl:ensure-generic-function 'error_msgs-val :lambda-list '(m))
(cl:defmethod error_msgs-val ((m <RobotArmInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:error_msgs-val is deprecated.  Use dg_msgs-msg:error_msgs instead.")
  (error_msgs m))

(cl:ensure-generic-function 'payload-val :lambda-list '(m))
(cl:defmethod payload-val ((m <RobotArmInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:payload-val is deprecated.  Use dg_msgs-msg:payload instead.")
  (payload m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotArmInfo>) ostream)
  "Serializes a message object of type '<RobotArmInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'equipment) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'number))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'number))
  (cl:let* ((signed (cl:slot-value msg 'state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enabled) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'protective_stop) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'emergency_stop) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'drag_status) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'recording) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'moving_stop) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'speed_ratio))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'error_status) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'error_msgs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'error_msgs))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'payload))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'payload))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotArmInfo>) istream)
  "Deserializes a message object of type '<RobotArmInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'equipment) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'number) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'number) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'enabled) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'protective_stop) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'emergency_stop) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'drag_status) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'recording) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'moving_stop) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed_ratio) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'error_status) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'error_msgs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'error_msgs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'payload) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'payload) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotArmInfo>)))
  "Returns string type for a message object of type '<RobotArmInfo>"
  "dg_msgs/RobotArmInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotArmInfo)))
  "Returns string type for a message object of type 'RobotArmInfo"
  "dg_msgs/RobotArmInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotArmInfo>)))
  "Returns md5sum for a message object of type '<RobotArmInfo>"
  "c14cafe5db166d12d88087baffc1cb1c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotArmInfo)))
  "Returns md5sum for a message object of type 'RobotArmInfo"
  "c14cafe5db166d12d88087baffc1cb1c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotArmInfo>)))
  "Returns full string definition for message of type '<RobotArmInfo>"
  (cl:format cl:nil "EquipmentCommon equipment~%string number           # 设备组编号~%int32 state~%bool enabled            # 机械臂是否使能标志~%bool protective_stop    # 机械臂是否检测到碰撞~%bool emergency_stop     # 机械臂是否急停~%bool drag_status        # 机械臂是否处于拖拽状态~%bool recording          # 机械臂是否处于录制状态~%bool moving_stop        # 机械臂是否处于运动状态~%float64 speed_ratio     # 机械臂当前速度~%bool error_status       # 机械臂是否处于报错状态~%string[] error_msgs     # 机械臂的错误信息反馈~%string payload          # 自定义信息，用于存放不同型号机械臂信息~%================================================================================~%MSG: dg_msgs/EquipmentCommon~%int32 equipment_id~%string equipment_name~%bool connected~%uint64 connected_time~%string model~%string manufacturer~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotArmInfo)))
  "Returns full string definition for message of type 'RobotArmInfo"
  (cl:format cl:nil "EquipmentCommon equipment~%string number           # 设备组编号~%int32 state~%bool enabled            # 机械臂是否使能标志~%bool protective_stop    # 机械臂是否检测到碰撞~%bool emergency_stop     # 机械臂是否急停~%bool drag_status        # 机械臂是否处于拖拽状态~%bool recording          # 机械臂是否处于录制状态~%bool moving_stop        # 机械臂是否处于运动状态~%float64 speed_ratio     # 机械臂当前速度~%bool error_status       # 机械臂是否处于报错状态~%string[] error_msgs     # 机械臂的错误信息反馈~%string payload          # 自定义信息，用于存放不同型号机械臂信息~%================================================================================~%MSG: dg_msgs/EquipmentCommon~%int32 equipment_id~%string equipment_name~%bool connected~%uint64 connected_time~%string model~%string manufacturer~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotArmInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'equipment))
     4 (cl:length (cl:slot-value msg 'number))
     4
     1
     1
     1
     1
     1
     1
     8
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'error_msgs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:length (cl:slot-value msg 'payload))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotArmInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotArmInfo
    (cl:cons ':equipment (equipment msg))
    (cl:cons ':number (number msg))
    (cl:cons ':state (state msg))
    (cl:cons ':enabled (enabled msg))
    (cl:cons ':protective_stop (protective_stop msg))
    (cl:cons ':emergency_stop (emergency_stop msg))
    (cl:cons ':drag_status (drag_status msg))
    (cl:cons ':recording (recording msg))
    (cl:cons ':moving_stop (moving_stop msg))
    (cl:cons ':speed_ratio (speed_ratio msg))
    (cl:cons ':error_status (error_status msg))
    (cl:cons ':error_msgs (error_msgs msg))
    (cl:cons ':payload (payload msg))
))

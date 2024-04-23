; Auto-generated. Do not edit!


(cl:in-package dg_msgs-msg)


;//! \htmlinclude TeachDataInfo.msg.html

(cl:defclass <TeachDataInfo> (roslisp-msg-protocol:ros-message)
  ((pose_stop_trainhead
    :reader pose_stop_trainhead
    :initarg :pose_stop_trainhead
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (pose_stop_region
    :reader pose_stop_region
    :initarg :pose_stop_region
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (model_type
    :reader model_type
    :initarg :model_type
    :type cl:integer
    :initform 0)
   (model_path
    :reader model_path
    :initarg :model_path
    :type cl:string
    :initform "")
   (camera_region
    :reader camera_region
    :initarg :camera_region
    :type geometry_msgs-msg:PoseArray
    :initform (cl:make-instance 'geometry_msgs-msg:PoseArray))
   (region_type
    :reader region_type
    :initarg :region_type
    :type cl:integer
    :initform 0)
   (matrix_region_init
    :reader matrix_region_init
    :initarg :matrix_region_init
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (matrix_region_trainhead
    :reader matrix_region_trainhead
    :initarg :matrix_region_trainhead
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (reg_type
    :reader reg_type
    :initarg :reg_type
    :type cl:integer
    :initform 0)
   (lidar_topic
    :reader lidar_topic
    :initarg :lidar_topic
    :type cl:string
    :initform "")
   (correction_point
    :reader correction_point
    :initarg :correction_point
    :type dg_msgs-msg:CorrectionPoint
    :initform (cl:make-instance 'dg_msgs-msg:CorrectionPoint))
   (box_target
    :reader box_target
    :initarg :box_target
    :type dg_msgs-msg:CropBox
    :initform (cl:make-instance 'dg_msgs-msg:CropBox))
   (box_source
    :reader box_source
    :initarg :box_source
    :type dg_msgs-msg:CropBox
    :initform (cl:make-instance 'dg_msgs-msg:CropBox))
   (cruising_route_type
    :reader cruising_route_type
    :initarg :cruising_route_type
    :type cl:integer
    :initform 0)
   (geometry_completion_type
    :reader geometry_completion_type
    :initarg :geometry_completion_type
    :type cl:integer
    :initform 0)
   (pose_regionframe_region
    :reader pose_regionframe_region
    :initarg :pose_regionframe_region
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (pose_regionframe_trainhead
    :reader pose_regionframe_trainhead
    :initarg :pose_regionframe_trainhead
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (correction_joint
    :reader correction_joint
    :initarg :correction_joint
    :type (cl:vector trajectory_msgs-msg:JointTrajectoryPoint)
   :initform (cl:make-array 0 :element-type 'trajectory_msgs-msg:JointTrajectoryPoint :initial-element (cl:make-instance 'trajectory_msgs-msg:JointTrajectoryPoint)))
   (region_frame_path
    :reader region_frame_path
    :initarg :region_frame_path
    :type cl:string
    :initform ""))
)

(cl:defclass TeachDataInfo (<TeachDataInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TeachDataInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TeachDataInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-msg:<TeachDataInfo> is deprecated: use dg_msgs-msg:TeachDataInfo instead.")))

(cl:ensure-generic-function 'pose_stop_trainhead-val :lambda-list '(m))
(cl:defmethod pose_stop_trainhead-val ((m <TeachDataInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:pose_stop_trainhead-val is deprecated.  Use dg_msgs-msg:pose_stop_trainhead instead.")
  (pose_stop_trainhead m))

(cl:ensure-generic-function 'pose_stop_region-val :lambda-list '(m))
(cl:defmethod pose_stop_region-val ((m <TeachDataInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:pose_stop_region-val is deprecated.  Use dg_msgs-msg:pose_stop_region instead.")
  (pose_stop_region m))

(cl:ensure-generic-function 'model_type-val :lambda-list '(m))
(cl:defmethod model_type-val ((m <TeachDataInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:model_type-val is deprecated.  Use dg_msgs-msg:model_type instead.")
  (model_type m))

(cl:ensure-generic-function 'model_path-val :lambda-list '(m))
(cl:defmethod model_path-val ((m <TeachDataInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:model_path-val is deprecated.  Use dg_msgs-msg:model_path instead.")
  (model_path m))

(cl:ensure-generic-function 'camera_region-val :lambda-list '(m))
(cl:defmethod camera_region-val ((m <TeachDataInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:camera_region-val is deprecated.  Use dg_msgs-msg:camera_region instead.")
  (camera_region m))

(cl:ensure-generic-function 'region_type-val :lambda-list '(m))
(cl:defmethod region_type-val ((m <TeachDataInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:region_type-val is deprecated.  Use dg_msgs-msg:region_type instead.")
  (region_type m))

(cl:ensure-generic-function 'matrix_region_init-val :lambda-list '(m))
(cl:defmethod matrix_region_init-val ((m <TeachDataInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:matrix_region_init-val is deprecated.  Use dg_msgs-msg:matrix_region_init instead.")
  (matrix_region_init m))

(cl:ensure-generic-function 'matrix_region_trainhead-val :lambda-list '(m))
(cl:defmethod matrix_region_trainhead-val ((m <TeachDataInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:matrix_region_trainhead-val is deprecated.  Use dg_msgs-msg:matrix_region_trainhead instead.")
  (matrix_region_trainhead m))

(cl:ensure-generic-function 'reg_type-val :lambda-list '(m))
(cl:defmethod reg_type-val ((m <TeachDataInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:reg_type-val is deprecated.  Use dg_msgs-msg:reg_type instead.")
  (reg_type m))

(cl:ensure-generic-function 'lidar_topic-val :lambda-list '(m))
(cl:defmethod lidar_topic-val ((m <TeachDataInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:lidar_topic-val is deprecated.  Use dg_msgs-msg:lidar_topic instead.")
  (lidar_topic m))

(cl:ensure-generic-function 'correction_point-val :lambda-list '(m))
(cl:defmethod correction_point-val ((m <TeachDataInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:correction_point-val is deprecated.  Use dg_msgs-msg:correction_point instead.")
  (correction_point m))

(cl:ensure-generic-function 'box_target-val :lambda-list '(m))
(cl:defmethod box_target-val ((m <TeachDataInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:box_target-val is deprecated.  Use dg_msgs-msg:box_target instead.")
  (box_target m))

(cl:ensure-generic-function 'box_source-val :lambda-list '(m))
(cl:defmethod box_source-val ((m <TeachDataInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:box_source-val is deprecated.  Use dg_msgs-msg:box_source instead.")
  (box_source m))

(cl:ensure-generic-function 'cruising_route_type-val :lambda-list '(m))
(cl:defmethod cruising_route_type-val ((m <TeachDataInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:cruising_route_type-val is deprecated.  Use dg_msgs-msg:cruising_route_type instead.")
  (cruising_route_type m))

(cl:ensure-generic-function 'geometry_completion_type-val :lambda-list '(m))
(cl:defmethod geometry_completion_type-val ((m <TeachDataInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:geometry_completion_type-val is deprecated.  Use dg_msgs-msg:geometry_completion_type instead.")
  (geometry_completion_type m))

(cl:ensure-generic-function 'pose_regionframe_region-val :lambda-list '(m))
(cl:defmethod pose_regionframe_region-val ((m <TeachDataInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:pose_regionframe_region-val is deprecated.  Use dg_msgs-msg:pose_regionframe_region instead.")
  (pose_regionframe_region m))

(cl:ensure-generic-function 'pose_regionframe_trainhead-val :lambda-list '(m))
(cl:defmethod pose_regionframe_trainhead-val ((m <TeachDataInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:pose_regionframe_trainhead-val is deprecated.  Use dg_msgs-msg:pose_regionframe_trainhead instead.")
  (pose_regionframe_trainhead m))

(cl:ensure-generic-function 'correction_joint-val :lambda-list '(m))
(cl:defmethod correction_joint-val ((m <TeachDataInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:correction_joint-val is deprecated.  Use dg_msgs-msg:correction_joint instead.")
  (correction_joint m))

(cl:ensure-generic-function 'region_frame_path-val :lambda-list '(m))
(cl:defmethod region_frame_path-val ((m <TeachDataInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:region_frame_path-val is deprecated.  Use dg_msgs-msg:region_frame_path instead.")
  (region_frame_path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TeachDataInfo>) ostream)
  "Serializes a message object of type '<TeachDataInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose_stop_trainhead) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose_stop_region) ostream)
  (cl:let* ((signed (cl:slot-value msg 'model_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'model_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'model_path))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'camera_region) ostream)
  (cl:let* ((signed (cl:slot-value msg 'region_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
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
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'matrix_region_trainhead))))
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
   (cl:slot-value msg 'matrix_region_trainhead))
  (cl:let* ((signed (cl:slot-value msg 'reg_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'lidar_topic))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'lidar_topic))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'correction_point) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'box_target) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'box_source) ostream)
  (cl:let* ((signed (cl:slot-value msg 'cruising_route_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'geometry_completion_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose_regionframe_region) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose_regionframe_trainhead) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'correction_joint))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'correction_joint))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'region_frame_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'region_frame_path))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TeachDataInfo>) istream)
  "Deserializes a message object of type '<TeachDataInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose_stop_trainhead) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose_stop_region) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'model_type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'model_path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'model_path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'camera_region) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'region_type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
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
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'matrix_region_trainhead) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'matrix_region_trainhead)))
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
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reg_type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lidar_topic) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'lidar_topic) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'correction_point) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'box_target) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'box_source) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cruising_route_type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'geometry_completion_type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose_regionframe_region) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose_regionframe_trainhead) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'correction_joint) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'correction_joint)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'trajectory_msgs-msg:JointTrajectoryPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'region_frame_path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'region_frame_path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TeachDataInfo>)))
  "Returns string type for a message object of type '<TeachDataInfo>"
  "dg_msgs/TeachDataInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TeachDataInfo)))
  "Returns string type for a message object of type 'TeachDataInfo"
  "dg_msgs/TeachDataInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TeachDataInfo>)))
  "Returns md5sum for a message object of type '<TeachDataInfo>"
  "59cc7fe46999dbd644086ba85abbce76")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TeachDataInfo)))
  "Returns md5sum for a message object of type 'TeachDataInfo"
  "59cc7fe46999dbd644086ba85abbce76")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TeachDataInfo>)))
  "Returns full string definition for message of type '<TeachDataInfo>"
  (cl:format cl:nil "geometry_msgs/PoseStamped pose_stop_trainhead~%geometry_msgs/PoseStamped pose_stop_region~%int32                     model_type~%string                    model_path~%geometry_msgs/PoseArray   camera_region~%int32                     region_type           # 区域类型，0直接复用，1镜像复用，2旋转180复用~%float64[]                 matrix_region_init~%float64[]                 matrix_region_trainhead~%int32                     reg_type              # 配准采集数据类型， 0为相机，1为雷达~%string                    lidar_topic~%CorrectionPoint           correction_point~%CropBox                   box_target~%CropBox                   box_source~%int32                     cruising_route_type~%int32                     geometry_completion_type~%geometry_msgs/PoseStamped pose_regionframe_region~%geometry_msgs/PoseStamped pose_regionframe_trainhead~%trajectory_msgs/JointTrajectoryPoint[]                          correction_joint~%string                      region_frame_path~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/PoseArray~%# An array of poses with a header for global reference.~%~%Header header~%~%Pose[] poses~%~%================================================================================~%MSG: dg_msgs/CorrectionPoint~%string number                                   # 设备组编号~%geometry_msgs/PoseStamped pose                  # 相机目标点的pose~%float32 offset                                  # 升降柱伸缩量~%string custom_message~%================================================================================~%MSG: dg_msgs/CropBox~%float32[] center_~%float32[] R_euler~%float32[] extent_~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TeachDataInfo)))
  "Returns full string definition for message of type 'TeachDataInfo"
  (cl:format cl:nil "geometry_msgs/PoseStamped pose_stop_trainhead~%geometry_msgs/PoseStamped pose_stop_region~%int32                     model_type~%string                    model_path~%geometry_msgs/PoseArray   camera_region~%int32                     region_type           # 区域类型，0直接复用，1镜像复用，2旋转180复用~%float64[]                 matrix_region_init~%float64[]                 matrix_region_trainhead~%int32                     reg_type              # 配准采集数据类型， 0为相机，1为雷达~%string                    lidar_topic~%CorrectionPoint           correction_point~%CropBox                   box_target~%CropBox                   box_source~%int32                     cruising_route_type~%int32                     geometry_completion_type~%geometry_msgs/PoseStamped pose_regionframe_region~%geometry_msgs/PoseStamped pose_regionframe_trainhead~%trajectory_msgs/JointTrajectoryPoint[]                          correction_joint~%string                      region_frame_path~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/PoseArray~%# An array of poses with a header for global reference.~%~%Header header~%~%Pose[] poses~%~%================================================================================~%MSG: dg_msgs/CorrectionPoint~%string number                                   # 设备组编号~%geometry_msgs/PoseStamped pose                  # 相机目标点的pose~%float32 offset                                  # 升降柱伸缩量~%string custom_message~%================================================================================~%MSG: dg_msgs/CropBox~%float32[] center_~%float32[] R_euler~%float32[] extent_~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TeachDataInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose_stop_trainhead))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose_stop_region))
     4
     4 (cl:length (cl:slot-value msg 'model_path))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'camera_region))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'matrix_region_init) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'matrix_region_trainhead) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4
     4 (cl:length (cl:slot-value msg 'lidar_topic))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'correction_point))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'box_target))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'box_source))
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose_regionframe_region))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose_regionframe_trainhead))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'correction_joint) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:length (cl:slot-value msg 'region_frame_path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TeachDataInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'TeachDataInfo
    (cl:cons ':pose_stop_trainhead (pose_stop_trainhead msg))
    (cl:cons ':pose_stop_region (pose_stop_region msg))
    (cl:cons ':model_type (model_type msg))
    (cl:cons ':model_path (model_path msg))
    (cl:cons ':camera_region (camera_region msg))
    (cl:cons ':region_type (region_type msg))
    (cl:cons ':matrix_region_init (matrix_region_init msg))
    (cl:cons ':matrix_region_trainhead (matrix_region_trainhead msg))
    (cl:cons ':reg_type (reg_type msg))
    (cl:cons ':lidar_topic (lidar_topic msg))
    (cl:cons ':correction_point (correction_point msg))
    (cl:cons ':box_target (box_target msg))
    (cl:cons ':box_source (box_source msg))
    (cl:cons ':cruising_route_type (cruising_route_type msg))
    (cl:cons ':geometry_completion_type (geometry_completion_type msg))
    (cl:cons ':pose_regionframe_region (pose_regionframe_region msg))
    (cl:cons ':pose_regionframe_trainhead (pose_regionframe_trainhead msg))
    (cl:cons ':correction_joint (correction_joint msg))
    (cl:cons ':region_frame_path (region_frame_path msg))
))

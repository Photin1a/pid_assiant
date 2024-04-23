; Auto-generated. Do not edit!


(cl:in-package dg_msgs-msg)


;//! \htmlinclude AcquisitionTaskGoal.msg.html

(cl:defclass <AcquisitionTaskGoal> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:string
    :initform "")
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (relative_pose
    :reader relative_pose
    :initarg :relative_pose
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
   (directory
    :reader directory
    :initarg :directory
    :type cl:string
    :initform "")
   (image_points
    :reader image_points
    :initarg :image_points
    :type (cl:vector dg_msgs-msg:PointSequence)
   :initform (cl:make-array 0 :element-type 'dg_msgs-msg:PointSequence :initial-element (cl:make-instance 'dg_msgs-msg:PointSequence)))
   (custom_message
    :reader custom_message
    :initarg :custom_message
    :type cl:string
    :initform "")
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
   (correction_joint
    :reader correction_joint
    :initarg :correction_joint
    :type dg_msgs-msg:CorrectionJoint
    :initform (cl:make-instance 'dg_msgs-msg:CorrectionJoint))
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
    :initform 0))
)

(cl:defclass AcquisitionTaskGoal (<AcquisitionTaskGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AcquisitionTaskGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AcquisitionTaskGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-msg:<AcquisitionTaskGoal> is deprecated: use dg_msgs-msg:AcquisitionTaskGoal instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <AcquisitionTaskGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:id-val is deprecated.  Use dg_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <AcquisitionTaskGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:pose-val is deprecated.  Use dg_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'relative_pose-val :lambda-list '(m))
(cl:defmethod relative_pose-val ((m <AcquisitionTaskGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:relative_pose-val is deprecated.  Use dg_msgs-msg:relative_pose instead.")
  (relative_pose m))

(cl:ensure-generic-function 'model_type-val :lambda-list '(m))
(cl:defmethod model_type-val ((m <AcquisitionTaskGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:model_type-val is deprecated.  Use dg_msgs-msg:model_type instead.")
  (model_type m))

(cl:ensure-generic-function 'model_path-val :lambda-list '(m))
(cl:defmethod model_path-val ((m <AcquisitionTaskGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:model_path-val is deprecated.  Use dg_msgs-msg:model_path instead.")
  (model_path m))

(cl:ensure-generic-function 'region_frame_path-val :lambda-list '(m))
(cl:defmethod region_frame_path-val ((m <AcquisitionTaskGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:region_frame_path-val is deprecated.  Use dg_msgs-msg:region_frame_path instead.")
  (region_frame_path m))

(cl:ensure-generic-function 'matrix_region_regionframe-val :lambda-list '(m))
(cl:defmethod matrix_region_regionframe-val ((m <AcquisitionTaskGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:matrix_region_regionframe-val is deprecated.  Use dg_msgs-msg:matrix_region_regionframe instead.")
  (matrix_region_regionframe m))

(cl:ensure-generic-function 'directory-val :lambda-list '(m))
(cl:defmethod directory-val ((m <AcquisitionTaskGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:directory-val is deprecated.  Use dg_msgs-msg:directory instead.")
  (directory m))

(cl:ensure-generic-function 'image_points-val :lambda-list '(m))
(cl:defmethod image_points-val ((m <AcquisitionTaskGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:image_points-val is deprecated.  Use dg_msgs-msg:image_points instead.")
  (image_points m))

(cl:ensure-generic-function 'custom_message-val :lambda-list '(m))
(cl:defmethod custom_message-val ((m <AcquisitionTaskGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:custom_message-val is deprecated.  Use dg_msgs-msg:custom_message instead.")
  (custom_message m))

(cl:ensure-generic-function 'region_type-val :lambda-list '(m))
(cl:defmethod region_type-val ((m <AcquisitionTaskGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:region_type-val is deprecated.  Use dg_msgs-msg:region_type instead.")
  (region_type m))

(cl:ensure-generic-function 'matrix_region_init-val :lambda-list '(m))
(cl:defmethod matrix_region_init-val ((m <AcquisitionTaskGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:matrix_region_init-val is deprecated.  Use dg_msgs-msg:matrix_region_init instead.")
  (matrix_region_init m))

(cl:ensure-generic-function 'matrix_region_trainhead-val :lambda-list '(m))
(cl:defmethod matrix_region_trainhead-val ((m <AcquisitionTaskGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:matrix_region_trainhead-val is deprecated.  Use dg_msgs-msg:matrix_region_trainhead instead.")
  (matrix_region_trainhead m))

(cl:ensure-generic-function 'reg_type-val :lambda-list '(m))
(cl:defmethod reg_type-val ((m <AcquisitionTaskGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:reg_type-val is deprecated.  Use dg_msgs-msg:reg_type instead.")
  (reg_type m))

(cl:ensure-generic-function 'lidar_topic-val :lambda-list '(m))
(cl:defmethod lidar_topic-val ((m <AcquisitionTaskGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:lidar_topic-val is deprecated.  Use dg_msgs-msg:lidar_topic instead.")
  (lidar_topic m))

(cl:ensure-generic-function 'correction_point-val :lambda-list '(m))
(cl:defmethod correction_point-val ((m <AcquisitionTaskGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:correction_point-val is deprecated.  Use dg_msgs-msg:correction_point instead.")
  (correction_point m))

(cl:ensure-generic-function 'correction_joint-val :lambda-list '(m))
(cl:defmethod correction_joint-val ((m <AcquisitionTaskGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:correction_joint-val is deprecated.  Use dg_msgs-msg:correction_joint instead.")
  (correction_joint m))

(cl:ensure-generic-function 'box_target-val :lambda-list '(m))
(cl:defmethod box_target-val ((m <AcquisitionTaskGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:box_target-val is deprecated.  Use dg_msgs-msg:box_target instead.")
  (box_target m))

(cl:ensure-generic-function 'box_source-val :lambda-list '(m))
(cl:defmethod box_source-val ((m <AcquisitionTaskGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:box_source-val is deprecated.  Use dg_msgs-msg:box_source instead.")
  (box_source m))

(cl:ensure-generic-function 'cruising_route_type-val :lambda-list '(m))
(cl:defmethod cruising_route_type-val ((m <AcquisitionTaskGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:cruising_route_type-val is deprecated.  Use dg_msgs-msg:cruising_route_type instead.")
  (cruising_route_type m))

(cl:ensure-generic-function 'geometry_completion_type-val :lambda-list '(m))
(cl:defmethod geometry_completion_type-val ((m <AcquisitionTaskGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:geometry_completion_type-val is deprecated.  Use dg_msgs-msg:geometry_completion_type instead.")
  (geometry_completion_type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AcquisitionTaskGoal>) ostream)
  "Serializes a message object of type '<AcquisitionTaskGoal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'relative_pose) ostream)
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'directory))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'directory))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'image_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'image_points))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'custom_message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'custom_message))
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
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'correction_joint) ostream)
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AcquisitionTaskGoal>) istream)
  "Deserializes a message object of type '<AcquisitionTaskGoal>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'relative_pose) istream)
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
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'directory) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'directory) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'custom_message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'custom_message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'correction_joint) istream)
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AcquisitionTaskGoal>)))
  "Returns string type for a message object of type '<AcquisitionTaskGoal>"
  "dg_msgs/AcquisitionTaskGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AcquisitionTaskGoal)))
  "Returns string type for a message object of type 'AcquisitionTaskGoal"
  "dg_msgs/AcquisitionTaskGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AcquisitionTaskGoal>)))
  "Returns md5sum for a message object of type '<AcquisitionTaskGoal>"
  "9424e9c1673e8caa2db13d0a787dd34b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AcquisitionTaskGoal)))
  "Returns md5sum for a message object of type 'AcquisitionTaskGoal"
  "9424e9c1673e8caa2db13d0a787dd34b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AcquisitionTaskGoal>)))
  "Returns full string definition for message of type '<AcquisitionTaskGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%string id~%geometry_msgs/PoseStamped pose                          # 停车点位置(相对于车头（train_head）坐标系下的位置关系)~%geometry_msgs/PoseStamped relative_pose                 # 停车点位置(相对于区域（region）坐标系下的位置关系)~%int32 model_type                                        # 模型类型（车头： 1，区域： 2）~%string model_path                                       # 车头、区域模型文件路径~%string region_frame_path                                # 区域配准帧文件路径~%float64[] matrix_region_regionframe                     # 区域到区域配准帧的配准结果~%~%string directory                                        # 图片存放目录~%PointSequence[] image_points                            # 像点~%string custom_message                                   # 自定义信息~%~%int32 region_type                                       # 区域类型，0直接复用，1镜像复用，2旋转180复用~%float64[] matrix_region_init                            # 区域初始矩阵，镜像复用和旋转复用，在进行配准时需要提前对区域进行镜像和旋转~%float64[] matrix_region_trainhead                       # 区域转换矩阵，区域在车头坐标系下的位置关系, 作为配准时的target的初始值~%int32 reg_type                                          # 配准采集数据类型， 0为相机，1为雷达~%string lidar_topic                                      # 雷达topic，用于确定使用哪个雷达采集数据~%CorrectionPoint correction_point                        # 纠偏点，配准采集选择相机，相机需要移动到correction_point里传进来的pose, pose是存储在区域坐标系下的，配合relative_pose使用~%CorrectionJoint correction_joint                        # 纠偏轨迹~%CropBox box_target                                      # 配准所需要的target框~%CropBox box_source                                      # 配准所需要的source框~%~%int32 cruising_route_type								# 0 坑道内巡检路线，1 车侧巡检路线~%int32 geometry_completion_type							# 几何体补全类型，0 柱体~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: dg_msgs/PointSequence~%string number      # 设备组编号~%ImagePoint[] points    # 机械臂拍照点位~%~%================================================================================~%MSG: dg_msgs/ImagePoint~%geometry_msgs/PoseStamped pose~%trajectory_msgs/JointTrajectoryPoint joint~%float32 offset      # 升降柱伸缩量~%string custom_message~%ImageGoal image_goal~%string point_file_name~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%================================================================================~%MSG: dg_msgs/ImageGoal~%string id          # ID~%string number     # 设备编号~%int32 types     # 拍照类型，灰度为`1`，彩色为`2`，深度为`4`，点云为`8`，多种类型时按位相与~%~%================================================================================~%MSG: dg_msgs/CorrectionPoint~%string number                                   # 设备组编号~%geometry_msgs/PoseStamped pose                  # 相机目标点的pose~%float32 offset                                  # 升降柱伸缩量~%string custom_message~%================================================================================~%MSG: dg_msgs/CorrectionJoint~%#纠偏轨迹~%string number       # 设备编码~%trajectory_msgs/JointTrajectoryPoint[] joints # 机械臂关节位置~%================================================================================~%MSG: dg_msgs/CropBox~%float32[] center_~%float32[] R_euler~%float32[] extent_~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AcquisitionTaskGoal)))
  "Returns full string definition for message of type 'AcquisitionTaskGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%string id~%geometry_msgs/PoseStamped pose                          # 停车点位置(相对于车头（train_head）坐标系下的位置关系)~%geometry_msgs/PoseStamped relative_pose                 # 停车点位置(相对于区域（region）坐标系下的位置关系)~%int32 model_type                                        # 模型类型（车头： 1，区域： 2）~%string model_path                                       # 车头、区域模型文件路径~%string region_frame_path                                # 区域配准帧文件路径~%float64[] matrix_region_regionframe                     # 区域到区域配准帧的配准结果~%~%string directory                                        # 图片存放目录~%PointSequence[] image_points                            # 像点~%string custom_message                                   # 自定义信息~%~%int32 region_type                                       # 区域类型，0直接复用，1镜像复用，2旋转180复用~%float64[] matrix_region_init                            # 区域初始矩阵，镜像复用和旋转复用，在进行配准时需要提前对区域进行镜像和旋转~%float64[] matrix_region_trainhead                       # 区域转换矩阵，区域在车头坐标系下的位置关系, 作为配准时的target的初始值~%int32 reg_type                                          # 配准采集数据类型， 0为相机，1为雷达~%string lidar_topic                                      # 雷达topic，用于确定使用哪个雷达采集数据~%CorrectionPoint correction_point                        # 纠偏点，配准采集选择相机，相机需要移动到correction_point里传进来的pose, pose是存储在区域坐标系下的，配合relative_pose使用~%CorrectionJoint correction_joint                        # 纠偏轨迹~%CropBox box_target                                      # 配准所需要的target框~%CropBox box_source                                      # 配准所需要的source框~%~%int32 cruising_route_type								# 0 坑道内巡检路线，1 车侧巡检路线~%int32 geometry_completion_type							# 几何体补全类型，0 柱体~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: dg_msgs/PointSequence~%string number      # 设备组编号~%ImagePoint[] points    # 机械臂拍照点位~%~%================================================================================~%MSG: dg_msgs/ImagePoint~%geometry_msgs/PoseStamped pose~%trajectory_msgs/JointTrajectoryPoint joint~%float32 offset      # 升降柱伸缩量~%string custom_message~%ImageGoal image_goal~%string point_file_name~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%================================================================================~%MSG: dg_msgs/ImageGoal~%string id          # ID~%string number     # 设备编号~%int32 types     # 拍照类型，灰度为`1`，彩色为`2`，深度为`4`，点云为`8`，多种类型时按位相与~%~%================================================================================~%MSG: dg_msgs/CorrectionPoint~%string number                                   # 设备组编号~%geometry_msgs/PoseStamped pose                  # 相机目标点的pose~%float32 offset                                  # 升降柱伸缩量~%string custom_message~%================================================================================~%MSG: dg_msgs/CorrectionJoint~%#纠偏轨迹~%string number       # 设备编码~%trajectory_msgs/JointTrajectoryPoint[] joints # 机械臂关节位置~%================================================================================~%MSG: dg_msgs/CropBox~%float32[] center_~%float32[] R_euler~%float32[] extent_~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AcquisitionTaskGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'relative_pose))
     4
     4 (cl:length (cl:slot-value msg 'model_path))
     4 (cl:length (cl:slot-value msg 'region_frame_path))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'matrix_region_regionframe) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:length (cl:slot-value msg 'directory))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'image_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:length (cl:slot-value msg 'custom_message))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'matrix_region_init) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'matrix_region_trainhead) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4
     4 (cl:length (cl:slot-value msg 'lidar_topic))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'correction_point))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'correction_joint))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'box_target))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'box_source))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AcquisitionTaskGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'AcquisitionTaskGoal
    (cl:cons ':id (id msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':relative_pose (relative_pose msg))
    (cl:cons ':model_type (model_type msg))
    (cl:cons ':model_path (model_path msg))
    (cl:cons ':region_frame_path (region_frame_path msg))
    (cl:cons ':matrix_region_regionframe (matrix_region_regionframe msg))
    (cl:cons ':directory (directory msg))
    (cl:cons ':image_points (image_points msg))
    (cl:cons ':custom_message (custom_message msg))
    (cl:cons ':region_type (region_type msg))
    (cl:cons ':matrix_region_init (matrix_region_init msg))
    (cl:cons ':matrix_region_trainhead (matrix_region_trainhead msg))
    (cl:cons ':reg_type (reg_type msg))
    (cl:cons ':lidar_topic (lidar_topic msg))
    (cl:cons ':correction_point (correction_point msg))
    (cl:cons ':correction_joint (correction_joint msg))
    (cl:cons ':box_target (box_target msg))
    (cl:cons ':box_source (box_source msg))
    (cl:cons ':cruising_route_type (cruising_route_type msg))
    (cl:cons ':geometry_completion_type (geometry_completion_type msg))
))

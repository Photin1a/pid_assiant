; Auto-generated. Do not edit!


(cl:in-package dg_msgs-msg)


;//! \htmlinclude CorrectionJoint.msg.html

(cl:defclass <CorrectionJoint> (roslisp-msg-protocol:ros-message)
  ((number
    :reader number
    :initarg :number
    :type cl:string
    :initform "")
   (joints
    :reader joints
    :initarg :joints
    :type (cl:vector trajectory_msgs-msg:JointTrajectoryPoint)
   :initform (cl:make-array 0 :element-type 'trajectory_msgs-msg:JointTrajectoryPoint :initial-element (cl:make-instance 'trajectory_msgs-msg:JointTrajectoryPoint))))
)

(cl:defclass CorrectionJoint (<CorrectionJoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CorrectionJoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CorrectionJoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-msg:<CorrectionJoint> is deprecated: use dg_msgs-msg:CorrectionJoint instead.")))

(cl:ensure-generic-function 'number-val :lambda-list '(m))
(cl:defmethod number-val ((m <CorrectionJoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:number-val is deprecated.  Use dg_msgs-msg:number instead.")
  (number m))

(cl:ensure-generic-function 'joints-val :lambda-list '(m))
(cl:defmethod joints-val ((m <CorrectionJoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:joints-val is deprecated.  Use dg_msgs-msg:joints instead.")
  (joints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CorrectionJoint>) ostream)
  "Serializes a message object of type '<CorrectionJoint>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'number))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'number))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'joints))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CorrectionJoint>) istream)
  "Deserializes a message object of type '<CorrectionJoint>"
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
  (cl:setf (cl:slot-value msg 'joints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'trajectory_msgs-msg:JointTrajectoryPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CorrectionJoint>)))
  "Returns string type for a message object of type '<CorrectionJoint>"
  "dg_msgs/CorrectionJoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CorrectionJoint)))
  "Returns string type for a message object of type 'CorrectionJoint"
  "dg_msgs/CorrectionJoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CorrectionJoint>)))
  "Returns md5sum for a message object of type '<CorrectionJoint>"
  "84713a8da3c3c07def323d8336d70de0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CorrectionJoint)))
  "Returns md5sum for a message object of type 'CorrectionJoint"
  "84713a8da3c3c07def323d8336d70de0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CorrectionJoint>)))
  "Returns full string definition for message of type '<CorrectionJoint>"
  (cl:format cl:nil "#纠偏轨迹~%string number       # 设备编码~%trajectory_msgs/JointTrajectoryPoint[] joints # 机械臂关节位置~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CorrectionJoint)))
  "Returns full string definition for message of type 'CorrectionJoint"
  (cl:format cl:nil "#纠偏轨迹~%string number       # 设备编码~%trajectory_msgs/JointTrajectoryPoint[] joints # 机械臂关节位置~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CorrectionJoint>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'number))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CorrectionJoint>))
  "Converts a ROS message object to a list"
  (cl:list 'CorrectionJoint
    (cl:cons ':number (number msg))
    (cl:cons ':joints (joints msg))
))

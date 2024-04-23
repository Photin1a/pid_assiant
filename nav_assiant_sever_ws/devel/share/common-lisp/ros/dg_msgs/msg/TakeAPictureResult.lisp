; Auto-generated. Do not edit!


(cl:in-package dg_msgs-msg)


;//! \htmlinclude TakeAPictureResult.msg.html

(cl:defclass <TakeAPictureResult> (roslisp-msg-protocol:ros-message)
  ((pointCloud
    :reader pointCloud
    :initarg :pointCloud
    :type cl:string
    :initform "")
   (rgb
    :reader rgb
    :initarg :rgb
    :type cl:string
    :initform "")
   (depth
    :reader depth
    :initarg :depth
    :type cl:string
    :initform "")
   (state_info
    :reader state_info
    :initarg :state_info
    :type dg_msgs-msg:UniversalStateInfo
    :initform (cl:make-instance 'dg_msgs-msg:UniversalStateInfo)))
)

(cl:defclass TakeAPictureResult (<TakeAPictureResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TakeAPictureResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TakeAPictureResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-msg:<TakeAPictureResult> is deprecated: use dg_msgs-msg:TakeAPictureResult instead.")))

(cl:ensure-generic-function 'pointCloud-val :lambda-list '(m))
(cl:defmethod pointCloud-val ((m <TakeAPictureResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:pointCloud-val is deprecated.  Use dg_msgs-msg:pointCloud instead.")
  (pointCloud m))

(cl:ensure-generic-function 'rgb-val :lambda-list '(m))
(cl:defmethod rgb-val ((m <TakeAPictureResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:rgb-val is deprecated.  Use dg_msgs-msg:rgb instead.")
  (rgb m))

(cl:ensure-generic-function 'depth-val :lambda-list '(m))
(cl:defmethod depth-val ((m <TakeAPictureResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:depth-val is deprecated.  Use dg_msgs-msg:depth instead.")
  (depth m))

(cl:ensure-generic-function 'state_info-val :lambda-list '(m))
(cl:defmethod state_info-val ((m <TakeAPictureResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:state_info-val is deprecated.  Use dg_msgs-msg:state_info instead.")
  (state_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TakeAPictureResult>) ostream)
  "Serializes a message object of type '<TakeAPictureResult>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'pointCloud))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'pointCloud))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'rgb))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'rgb))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'depth))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'depth))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state_info) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TakeAPictureResult>) istream)
  "Deserializes a message object of type '<TakeAPictureResult>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pointCloud) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'pointCloud) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rgb) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'rgb) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'depth) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'depth) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state_info) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TakeAPictureResult>)))
  "Returns string type for a message object of type '<TakeAPictureResult>"
  "dg_msgs/TakeAPictureResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TakeAPictureResult)))
  "Returns string type for a message object of type 'TakeAPictureResult"
  "dg_msgs/TakeAPictureResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TakeAPictureResult>)))
  "Returns md5sum for a message object of type '<TakeAPictureResult>"
  "43a9f96505994e95f9f117bf4737a0c7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TakeAPictureResult)))
  "Returns md5sum for a message object of type 'TakeAPictureResult"
  "43a9f96505994e95f9f117bf4737a0c7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TakeAPictureResult>)))
  "Returns full string definition for message of type '<TakeAPictureResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result definition~%string pointCloud~%string rgb~%string depth~%UniversalStateInfo  state_info~%  ~%# 0 表示成功；~%# error: 1 表示点云存储失败~%#        2 表示rgb图像存储失败~%#        3 表示深度图存储失败~%~%================================================================================~%MSG: dg_msgs/UniversalStateInfo~%int32 state_index   # 状态索引值：统一0是正常，其他数字自定义~%string node_name    # 当前节点名~%string state_msgs   # 附加信息，相当于additional_msgs~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TakeAPictureResult)))
  "Returns full string definition for message of type 'TakeAPictureResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result definition~%string pointCloud~%string rgb~%string depth~%UniversalStateInfo  state_info~%  ~%# 0 表示成功；~%# error: 1 表示点云存储失败~%#        2 表示rgb图像存储失败~%#        3 表示深度图存储失败~%~%================================================================================~%MSG: dg_msgs/UniversalStateInfo~%int32 state_index   # 状态索引值：统一0是正常，其他数字自定义~%string node_name    # 当前节点名~%string state_msgs   # 附加信息，相当于additional_msgs~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TakeAPictureResult>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'pointCloud))
     4 (cl:length (cl:slot-value msg 'rgb))
     4 (cl:length (cl:slot-value msg 'depth))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TakeAPictureResult>))
  "Converts a ROS message object to a list"
  (cl:list 'TakeAPictureResult
    (cl:cons ':pointCloud (pointCloud msg))
    (cl:cons ':rgb (rgb msg))
    (cl:cons ':depth (depth msg))
    (cl:cons ':state_info (state_info msg))
))

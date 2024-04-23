; Auto-generated. Do not edit!


(cl:in-package dg_msgs-msg)


;//! \htmlinclude ImageResult.msg.html

(cl:defclass <ImageResult> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:string
    :initform "")
   (result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0)
   (gray
    :reader gray
    :initarg :gray
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
   (point_cloud
    :reader point_cloud
    :initarg :point_cloud
    :type cl:string
    :initform "")
   (intrinsic
    :reader intrinsic
    :initarg :intrinsic
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass ImageResult (<ImageResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ImageResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ImageResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-msg:<ImageResult> is deprecated: use dg_msgs-msg:ImageResult instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <ImageResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:id-val is deprecated.  Use dg_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <ImageResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:result-val is deprecated.  Use dg_msgs-msg:result instead.")
  (result m))

(cl:ensure-generic-function 'gray-val :lambda-list '(m))
(cl:defmethod gray-val ((m <ImageResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:gray-val is deprecated.  Use dg_msgs-msg:gray instead.")
  (gray m))

(cl:ensure-generic-function 'rgb-val :lambda-list '(m))
(cl:defmethod rgb-val ((m <ImageResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:rgb-val is deprecated.  Use dg_msgs-msg:rgb instead.")
  (rgb m))

(cl:ensure-generic-function 'depth-val :lambda-list '(m))
(cl:defmethod depth-val ((m <ImageResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:depth-val is deprecated.  Use dg_msgs-msg:depth instead.")
  (depth m))

(cl:ensure-generic-function 'point_cloud-val :lambda-list '(m))
(cl:defmethod point_cloud-val ((m <ImageResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:point_cloud-val is deprecated.  Use dg_msgs-msg:point_cloud instead.")
  (point_cloud m))

(cl:ensure-generic-function 'intrinsic-val :lambda-list '(m))
(cl:defmethod intrinsic-val ((m <ImageResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:intrinsic-val is deprecated.  Use dg_msgs-msg:intrinsic instead.")
  (intrinsic m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ImageResult>) ostream)
  "Serializes a message object of type '<ImageResult>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'gray))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'gray))
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'point_cloud))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'point_cloud))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'intrinsic))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'intrinsic))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ImageResult>) istream)
  "Deserializes a message object of type '<ImageResult>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gray) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'gray) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'point_cloud) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'point_cloud) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'intrinsic) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'intrinsic)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ImageResult>)))
  "Returns string type for a message object of type '<ImageResult>"
  "dg_msgs/ImageResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ImageResult)))
  "Returns string type for a message object of type 'ImageResult"
  "dg_msgs/ImageResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ImageResult>)))
  "Returns md5sum for a message object of type '<ImageResult>"
  "929c9d255c2b3abf0da93c2483ac7bec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ImageResult)))
  "Returns md5sum for a message object of type 'ImageResult"
  "929c9d255c2b3abf0da93c2483ac7bec")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ImageResult>)))
  "Returns full string definition for message of type '<ImageResult>"
  (cl:format cl:nil "string id~%int32 result        # 拍照结果 0: 成功  非0：失败~%string gray         # 灰度图路径~%string rgb          # 彩色图路径~%string depth        # 深度图路径~%string point_cloud  # 点云路径~%float32[] intrinsic # 相机内参~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ImageResult)))
  "Returns full string definition for message of type 'ImageResult"
  (cl:format cl:nil "string id~%int32 result        # 拍照结果 0: 成功  非0：失败~%string gray         # 灰度图路径~%string rgb          # 彩色图路径~%string depth        # 深度图路径~%string point_cloud  # 点云路径~%float32[] intrinsic # 相机内参~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ImageResult>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'id))
     4
     4 (cl:length (cl:slot-value msg 'gray))
     4 (cl:length (cl:slot-value msg 'rgb))
     4 (cl:length (cl:slot-value msg 'depth))
     4 (cl:length (cl:slot-value msg 'point_cloud))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'intrinsic) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ImageResult>))
  "Converts a ROS message object to a list"
  (cl:list 'ImageResult
    (cl:cons ':id (id msg))
    (cl:cons ':result (result msg))
    (cl:cons ':gray (gray msg))
    (cl:cons ':rgb (rgb msg))
    (cl:cons ':depth (depth msg))
    (cl:cons ':point_cloud (point_cloud msg))
    (cl:cons ':intrinsic (intrinsic msg))
))

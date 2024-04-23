; Auto-generated. Do not edit!


(cl:in-package dg_msgs-msg)


;//! \htmlinclude CropBox.msg.html

(cl:defclass <CropBox> (roslisp-msg-protocol:ros-message)
  ((center_
    :reader center_
    :initarg :center_
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (R_euler
    :reader R_euler
    :initarg :R_euler
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (extent_
    :reader extent_
    :initarg :extent_
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass CropBox (<CropBox>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CropBox>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CropBox)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-msg:<CropBox> is deprecated: use dg_msgs-msg:CropBox instead.")))

(cl:ensure-generic-function 'center_-val :lambda-list '(m))
(cl:defmethod center_-val ((m <CropBox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:center_-val is deprecated.  Use dg_msgs-msg:center_ instead.")
  (center_ m))

(cl:ensure-generic-function 'R_euler-val :lambda-list '(m))
(cl:defmethod R_euler-val ((m <CropBox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:R_euler-val is deprecated.  Use dg_msgs-msg:R_euler instead.")
  (R_euler m))

(cl:ensure-generic-function 'extent_-val :lambda-list '(m))
(cl:defmethod extent_-val ((m <CropBox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:extent_-val is deprecated.  Use dg_msgs-msg:extent_ instead.")
  (extent_ m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CropBox>) ostream)
  "Serializes a message object of type '<CropBox>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'center_))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'center_))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'R_euler))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'R_euler))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'extent_))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'extent_))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CropBox>) istream)
  "Deserializes a message object of type '<CropBox>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'center_) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'center_)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'R_euler) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'R_euler)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'extent_) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'extent_)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CropBox>)))
  "Returns string type for a message object of type '<CropBox>"
  "dg_msgs/CropBox")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CropBox)))
  "Returns string type for a message object of type 'CropBox"
  "dg_msgs/CropBox")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CropBox>)))
  "Returns md5sum for a message object of type '<CropBox>"
  "42dde1f55fee23ccce2a80f909dd54cf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CropBox)))
  "Returns md5sum for a message object of type 'CropBox"
  "42dde1f55fee23ccce2a80f909dd54cf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CropBox>)))
  "Returns full string definition for message of type '<CropBox>"
  (cl:format cl:nil "float32[] center_~%float32[] R_euler~%float32[] extent_~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CropBox)))
  "Returns full string definition for message of type 'CropBox"
  (cl:format cl:nil "float32[] center_~%float32[] R_euler~%float32[] extent_~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CropBox>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'center_) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'R_euler) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'extent_) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CropBox>))
  "Converts a ROS message object to a list"
  (cl:list 'CropBox
    (cl:cons ':center_ (center_ msg))
    (cl:cons ':R_euler (R_euler msg))
    (cl:cons ':extent_ (extent_ msg))
))

; Auto-generated. Do not edit!


(cl:in-package dg_msgs-msg)


;//! \htmlinclude AcquisitionTaskResult.msg.html

(cl:defclass <AcquisitionTaskResult> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:string
    :initform "")
   (results
    :reader results
    :initarg :results
    :type (cl:vector dg_msgs-msg:ImageResult)
   :initform (cl:make-array 0 :element-type 'dg_msgs-msg:ImageResult :initial-element (cl:make-instance 'dg_msgs-msg:ImageResult)))
   (err_msg
    :reader err_msg
    :initarg :err_msg
    :type cl:string
    :initform ""))
)

(cl:defclass AcquisitionTaskResult (<AcquisitionTaskResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AcquisitionTaskResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AcquisitionTaskResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-msg:<AcquisitionTaskResult> is deprecated: use dg_msgs-msg:AcquisitionTaskResult instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <AcquisitionTaskResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:id-val is deprecated.  Use dg_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'results-val :lambda-list '(m))
(cl:defmethod results-val ((m <AcquisitionTaskResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:results-val is deprecated.  Use dg_msgs-msg:results instead.")
  (results m))

(cl:ensure-generic-function 'err_msg-val :lambda-list '(m))
(cl:defmethod err_msg-val ((m <AcquisitionTaskResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:err_msg-val is deprecated.  Use dg_msgs-msg:err_msg instead.")
  (err_msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AcquisitionTaskResult>) ostream)
  "Serializes a message object of type '<AcquisitionTaskResult>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'results))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'results))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'err_msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'err_msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AcquisitionTaskResult>) istream)
  "Deserializes a message object of type '<AcquisitionTaskResult>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'results) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'results)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'dg_msgs-msg:ImageResult))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'err_msg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'err_msg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AcquisitionTaskResult>)))
  "Returns string type for a message object of type '<AcquisitionTaskResult>"
  "dg_msgs/AcquisitionTaskResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AcquisitionTaskResult)))
  "Returns string type for a message object of type 'AcquisitionTaskResult"
  "dg_msgs/AcquisitionTaskResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AcquisitionTaskResult>)))
  "Returns md5sum for a message object of type '<AcquisitionTaskResult>"
  "0f410bb1b8bcf6c3bbe6b9383417671f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AcquisitionTaskResult)))
  "Returns md5sum for a message object of type 'AcquisitionTaskResult"
  "0f410bb1b8bcf6c3bbe6b9383417671f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AcquisitionTaskResult>)))
  "Returns full string definition for message of type '<AcquisitionTaskResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result definition~%string id~%ImageResult[] results~%string err_msg~%~%================================================================================~%MSG: dg_msgs/ImageResult~%string id~%int32 result        # 拍照结果 0: 成功  非0：失败~%string gray         # 灰度图路径~%string rgb          # 彩色图路径~%string depth        # 深度图路径~%string point_cloud  # 点云路径~%float32[] intrinsic # 相机内参~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AcquisitionTaskResult)))
  "Returns full string definition for message of type 'AcquisitionTaskResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result definition~%string id~%ImageResult[] results~%string err_msg~%~%================================================================================~%MSG: dg_msgs/ImageResult~%string id~%int32 result        # 拍照结果 0: 成功  非0：失败~%string gray         # 灰度图路径~%string rgb          # 彩色图路径~%string depth        # 深度图路径~%string point_cloud  # 点云路径~%float32[] intrinsic # 相机内参~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AcquisitionTaskResult>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'id))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'results) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:length (cl:slot-value msg 'err_msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AcquisitionTaskResult>))
  "Converts a ROS message object to a list"
  (cl:list 'AcquisitionTaskResult
    (cl:cons ':id (id msg))
    (cl:cons ':results (results msg))
    (cl:cons ':err_msg (err_msg msg))
))

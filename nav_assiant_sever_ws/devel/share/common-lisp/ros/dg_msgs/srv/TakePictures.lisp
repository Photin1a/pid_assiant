; Auto-generated. Do not edit!


(cl:in-package dg_msgs-srv)


;//! \htmlinclude TakePictures-request.msg.html

(cl:defclass <TakePictures-request> (roslisp-msg-protocol:ros-message)
  ((goal
    :reader goal
    :initarg :goal
    :type dg_msgs-msg:ImageGoal
    :initform (cl:make-instance 'dg_msgs-msg:ImageGoal))
   (directory
    :reader directory
    :initarg :directory
    :type cl:string
    :initform ""))
)

(cl:defclass TakePictures-request (<TakePictures-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TakePictures-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TakePictures-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<TakePictures-request> is deprecated: use dg_msgs-srv:TakePictures-request instead.")))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <TakePictures-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:goal-val is deprecated.  Use dg_msgs-srv:goal instead.")
  (goal m))

(cl:ensure-generic-function 'directory-val :lambda-list '(m))
(cl:defmethod directory-val ((m <TakePictures-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:directory-val is deprecated.  Use dg_msgs-srv:directory instead.")
  (directory m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TakePictures-request>) ostream)
  "Serializes a message object of type '<TakePictures-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'directory))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'directory))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TakePictures-request>) istream)
  "Deserializes a message object of type '<TakePictures-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'directory) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'directory) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TakePictures-request>)))
  "Returns string type for a service object of type '<TakePictures-request>"
  "dg_msgs/TakePicturesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TakePictures-request)))
  "Returns string type for a service object of type 'TakePictures-request"
  "dg_msgs/TakePicturesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TakePictures-request>)))
  "Returns md5sum for a message object of type '<TakePictures-request>"
  "d49927ea178ba001349d7f69d4338561")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TakePictures-request)))
  "Returns md5sum for a message object of type 'TakePictures-request"
  "d49927ea178ba001349d7f69d4338561")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TakePictures-request>)))
  "Returns full string definition for message of type '<TakePictures-request>"
  (cl:format cl:nil "ImageGoal goal~%string directory        # 图片存放目录~%~%================================================================================~%MSG: dg_msgs/ImageGoal~%string id          # ID~%string number     # 设备编号~%int32 types     # 拍照类型，灰度为`1`，彩色为`2`，深度为`4`，点云为`8`，多种类型时按位相与~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TakePictures-request)))
  "Returns full string definition for message of type 'TakePictures-request"
  (cl:format cl:nil "ImageGoal goal~%string directory        # 图片存放目录~%~%================================================================================~%MSG: dg_msgs/ImageGoal~%string id          # ID~%string number     # 设备编号~%int32 types     # 拍照类型，灰度为`1`，彩色为`2`，深度为`4`，点云为`8`，多种类型时按位相与~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TakePictures-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
     4 (cl:length (cl:slot-value msg 'directory))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TakePictures-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TakePictures-request
    (cl:cons ':goal (goal msg))
    (cl:cons ':directory (directory msg))
))
;//! \htmlinclude TakePictures-response.msg.html

(cl:defclass <TakePictures-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type dg_msgs-msg:ImageResult
    :initform (cl:make-instance 'dg_msgs-msg:ImageResult)))
)

(cl:defclass TakePictures-response (<TakePictures-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TakePictures-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TakePictures-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<TakePictures-response> is deprecated: use dg_msgs-srv:TakePictures-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <TakePictures-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:result-val is deprecated.  Use dg_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TakePictures-response>) ostream)
  "Serializes a message object of type '<TakePictures-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'result) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TakePictures-response>) istream)
  "Deserializes a message object of type '<TakePictures-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'result) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TakePictures-response>)))
  "Returns string type for a service object of type '<TakePictures-response>"
  "dg_msgs/TakePicturesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TakePictures-response)))
  "Returns string type for a service object of type 'TakePictures-response"
  "dg_msgs/TakePicturesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TakePictures-response>)))
  "Returns md5sum for a message object of type '<TakePictures-response>"
  "d49927ea178ba001349d7f69d4338561")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TakePictures-response)))
  "Returns md5sum for a message object of type 'TakePictures-response"
  "d49927ea178ba001349d7f69d4338561")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TakePictures-response>)))
  "Returns full string definition for message of type '<TakePictures-response>"
  (cl:format cl:nil "ImageResult result~%~%~%================================================================================~%MSG: dg_msgs/ImageResult~%string id~%int32 result        # 拍照结果 0: 成功  非0：失败~%string gray         # 灰度图路径~%string rgb          # 彩色图路径~%string depth        # 深度图路径~%string point_cloud  # 点云路径~%float32[] intrinsic # 相机内参~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TakePictures-response)))
  "Returns full string definition for message of type 'TakePictures-response"
  (cl:format cl:nil "ImageResult result~%~%~%================================================================================~%MSG: dg_msgs/ImageResult~%string id~%int32 result        # 拍照结果 0: 成功  非0：失败~%string gray         # 灰度图路径~%string rgb          # 彩色图路径~%string depth        # 深度图路径~%string point_cloud  # 点云路径~%float32[] intrinsic # 相机内参~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TakePictures-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TakePictures-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TakePictures-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TakePictures)))
  'TakePictures-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TakePictures)))
  'TakePictures-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TakePictures)))
  "Returns string type for a service object of type '<TakePictures>"
  "dg_msgs/TakePictures")
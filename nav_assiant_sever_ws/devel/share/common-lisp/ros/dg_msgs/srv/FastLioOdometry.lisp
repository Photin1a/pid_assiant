; Auto-generated. Do not edit!


(cl:in-package dg_msgs-srv)


;//! \htmlinclude FastLioOdometry-request.msg.html

(cl:defclass <FastLioOdometry-request> (roslisp-msg-protocol:ros-message)
  ((use_odometry
    :reader use_odometry
    :initarg :use_odometry
    :type cl:boolean
    :initform cl:nil)
   (topic_lidar
    :reader topic_lidar
    :initarg :topic_lidar
    :type cl:string
    :initform ""))
)

(cl:defclass FastLioOdometry-request (<FastLioOdometry-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FastLioOdometry-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FastLioOdometry-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<FastLioOdometry-request> is deprecated: use dg_msgs-srv:FastLioOdometry-request instead.")))

(cl:ensure-generic-function 'use_odometry-val :lambda-list '(m))
(cl:defmethod use_odometry-val ((m <FastLioOdometry-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:use_odometry-val is deprecated.  Use dg_msgs-srv:use_odometry instead.")
  (use_odometry m))

(cl:ensure-generic-function 'topic_lidar-val :lambda-list '(m))
(cl:defmethod topic_lidar-val ((m <FastLioOdometry-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:topic_lidar-val is deprecated.  Use dg_msgs-srv:topic_lidar instead.")
  (topic_lidar m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FastLioOdometry-request>) ostream)
  "Serializes a message object of type '<FastLioOdometry-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'use_odometry) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'topic_lidar))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'topic_lidar))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FastLioOdometry-request>) istream)
  "Deserializes a message object of type '<FastLioOdometry-request>"
    (cl:setf (cl:slot-value msg 'use_odometry) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'topic_lidar) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'topic_lidar) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FastLioOdometry-request>)))
  "Returns string type for a service object of type '<FastLioOdometry-request>"
  "dg_msgs/FastLioOdometryRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FastLioOdometry-request)))
  "Returns string type for a service object of type 'FastLioOdometry-request"
  "dg_msgs/FastLioOdometryRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FastLioOdometry-request>)))
  "Returns md5sum for a message object of type '<FastLioOdometry-request>"
  "f2ec15a71932af1d5083f00b9a5a2788")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FastLioOdometry-request)))
  "Returns md5sum for a message object of type 'FastLioOdometry-request"
  "f2ec15a71932af1d5083f00b9a5a2788")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FastLioOdometry-request>)))
  "Returns full string definition for message of type '<FastLioOdometry-request>"
  (cl:format cl:nil "bool use_odometry~%string topic_lidar~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FastLioOdometry-request)))
  "Returns full string definition for message of type 'FastLioOdometry-request"
  (cl:format cl:nil "bool use_odometry~%string topic_lidar~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FastLioOdometry-request>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'topic_lidar))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FastLioOdometry-request>))
  "Converts a ROS message object to a list"
  (cl:list 'FastLioOdometry-request
    (cl:cons ':use_odometry (use_odometry msg))
    (cl:cons ':topic_lidar (topic_lidar msg))
))
;//! \htmlinclude FastLioOdometry-response.msg.html

(cl:defclass <FastLioOdometry-response> (roslisp-msg-protocol:ros-message)
  ((state_info
    :reader state_info
    :initarg :state_info
    :type dg_msgs-msg:UniversalStateInfo
    :initform (cl:make-instance 'dg_msgs-msg:UniversalStateInfo)))
)

(cl:defclass FastLioOdometry-response (<FastLioOdometry-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FastLioOdometry-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FastLioOdometry-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<FastLioOdometry-response> is deprecated: use dg_msgs-srv:FastLioOdometry-response instead.")))

(cl:ensure-generic-function 'state_info-val :lambda-list '(m))
(cl:defmethod state_info-val ((m <FastLioOdometry-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:state_info-val is deprecated.  Use dg_msgs-srv:state_info instead.")
  (state_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FastLioOdometry-response>) ostream)
  "Serializes a message object of type '<FastLioOdometry-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state_info) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FastLioOdometry-response>) istream)
  "Deserializes a message object of type '<FastLioOdometry-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state_info) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FastLioOdometry-response>)))
  "Returns string type for a service object of type '<FastLioOdometry-response>"
  "dg_msgs/FastLioOdometryResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FastLioOdometry-response)))
  "Returns string type for a service object of type 'FastLioOdometry-response"
  "dg_msgs/FastLioOdometryResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FastLioOdometry-response>)))
  "Returns md5sum for a message object of type '<FastLioOdometry-response>"
  "f2ec15a71932af1d5083f00b9a5a2788")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FastLioOdometry-response)))
  "Returns md5sum for a message object of type 'FastLioOdometry-response"
  "f2ec15a71932af1d5083f00b9a5a2788")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FastLioOdometry-response>)))
  "Returns full string definition for message of type '<FastLioOdometry-response>"
  (cl:format cl:nil "~%UniversalStateInfo  state_info~%~%~%~%================================================================================~%MSG: dg_msgs/UniversalStateInfo~%int32 state_index   # 状态索引值：统一0是正常，其他数字自定义~%string node_name    # 当前节点名~%string state_msgs   # 附加信息，相当于additional_msgs~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FastLioOdometry-response)))
  "Returns full string definition for message of type 'FastLioOdometry-response"
  (cl:format cl:nil "~%UniversalStateInfo  state_info~%~%~%~%================================================================================~%MSG: dg_msgs/UniversalStateInfo~%int32 state_index   # 状态索引值：统一0是正常，其他数字自定义~%string node_name    # 当前节点名~%string state_msgs   # 附加信息，相当于additional_msgs~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FastLioOdometry-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FastLioOdometry-response>))
  "Converts a ROS message object to a list"
  (cl:list 'FastLioOdometry-response
    (cl:cons ':state_info (state_info msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'FastLioOdometry)))
  'FastLioOdometry-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'FastLioOdometry)))
  'FastLioOdometry-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FastLioOdometry)))
  "Returns string type for a service object of type '<FastLioOdometry>"
  "dg_msgs/FastLioOdometry")
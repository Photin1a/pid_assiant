; Auto-generated. Do not edit!


(cl:in-package dg_msgs-srv)


;//! \htmlinclude GetSetLightBarColor-request.msg.html

(cl:defclass <GetSetLightBarColor-request> (roslisp-msg-protocol:ros-message)
  ((ligth_bar_color
    :reader ligth_bar_color
    :initarg :ligth_bar_color
    :type cl:string
    :initform ""))
)

(cl:defclass GetSetLightBarColor-request (<GetSetLightBarColor-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetSetLightBarColor-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetSetLightBarColor-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<GetSetLightBarColor-request> is deprecated: use dg_msgs-srv:GetSetLightBarColor-request instead.")))

(cl:ensure-generic-function 'ligth_bar_color-val :lambda-list '(m))
(cl:defmethod ligth_bar_color-val ((m <GetSetLightBarColor-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:ligth_bar_color-val is deprecated.  Use dg_msgs-srv:ligth_bar_color instead.")
  (ligth_bar_color m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetSetLightBarColor-request>) ostream)
  "Serializes a message object of type '<GetSetLightBarColor-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ligth_bar_color))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ligth_bar_color))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetSetLightBarColor-request>) istream)
  "Deserializes a message object of type '<GetSetLightBarColor-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ligth_bar_color) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ligth_bar_color) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetSetLightBarColor-request>)))
  "Returns string type for a service object of type '<GetSetLightBarColor-request>"
  "dg_msgs/GetSetLightBarColorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSetLightBarColor-request)))
  "Returns string type for a service object of type 'GetSetLightBarColor-request"
  "dg_msgs/GetSetLightBarColorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetSetLightBarColor-request>)))
  "Returns md5sum for a message object of type '<GetSetLightBarColor-request>"
  "1a018bf81959926990f6f2e6ba2d8144")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetSetLightBarColor-request)))
  "Returns md5sum for a message object of type 'GetSetLightBarColor-request"
  "1a018bf81959926990f6f2e6ba2d8144")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetSetLightBarColor-request>)))
  "Returns full string definition for message of type '<GetSetLightBarColor-request>"
  (cl:format cl:nil "# 获取/设置灯带颜色的服务~%string ligth_bar_color          # 灯带颜色，如果是空字符串，则返回当前灯带颜色 ｜ 格式：color format 如：red flash 红灯闪烁, red form 红灯常亮，允许不区分大小写~%# 艾智威灯带支持的以下几种状态~%# none          无显示~%# green breath  绿色呼吸~%# green form    绿色常亮~%# left turn     左转~%# right turn    右转~%# blue flash    蓝色闪烁~%# red form      红色常亮~%# red flash     红色闪烁~%# yellow form   黄色常亮~%# yellow flash  黄色闪烁~%# white form    白色常亮~%# green flash   绿色闪烁~%# skyblue form  蓝色常亮~%# purple form   紫色闪烁~%# yellow breath 黄色呼吸~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetSetLightBarColor-request)))
  "Returns full string definition for message of type 'GetSetLightBarColor-request"
  (cl:format cl:nil "# 获取/设置灯带颜色的服务~%string ligth_bar_color          # 灯带颜色，如果是空字符串，则返回当前灯带颜色 ｜ 格式：color format 如：red flash 红灯闪烁, red form 红灯常亮，允许不区分大小写~%# 艾智威灯带支持的以下几种状态~%# none          无显示~%# green breath  绿色呼吸~%# green form    绿色常亮~%# left turn     左转~%# right turn    右转~%# blue flash    蓝色闪烁~%# red form      红色常亮~%# red flash     红色闪烁~%# yellow form   黄色常亮~%# yellow flash  黄色闪烁~%# white form    白色常亮~%# green flash   绿色闪烁~%# skyblue form  蓝色常亮~%# purple form   紫色闪烁~%# yellow breath 黄色呼吸~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetSetLightBarColor-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'ligth_bar_color))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetSetLightBarColor-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetSetLightBarColor-request
    (cl:cons ':ligth_bar_color (ligth_bar_color msg))
))
;//! \htmlinclude GetSetLightBarColor-response.msg.html

(cl:defclass <GetSetLightBarColor-response> (roslisp-msg-protocol:ros-message)
  ((current_light_bar_color
    :reader current_light_bar_color
    :initarg :current_light_bar_color
    :type cl:string
    :initform ""))
)

(cl:defclass GetSetLightBarColor-response (<GetSetLightBarColor-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetSetLightBarColor-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetSetLightBarColor-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<GetSetLightBarColor-response> is deprecated: use dg_msgs-srv:GetSetLightBarColor-response instead.")))

(cl:ensure-generic-function 'current_light_bar_color-val :lambda-list '(m))
(cl:defmethod current_light_bar_color-val ((m <GetSetLightBarColor-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:current_light_bar_color-val is deprecated.  Use dg_msgs-srv:current_light_bar_color instead.")
  (current_light_bar_color m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetSetLightBarColor-response>) ostream)
  "Serializes a message object of type '<GetSetLightBarColor-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'current_light_bar_color))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'current_light_bar_color))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetSetLightBarColor-response>) istream)
  "Deserializes a message object of type '<GetSetLightBarColor-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current_light_bar_color) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'current_light_bar_color) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetSetLightBarColor-response>)))
  "Returns string type for a service object of type '<GetSetLightBarColor-response>"
  "dg_msgs/GetSetLightBarColorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSetLightBarColor-response)))
  "Returns string type for a service object of type 'GetSetLightBarColor-response"
  "dg_msgs/GetSetLightBarColorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetSetLightBarColor-response>)))
  "Returns md5sum for a message object of type '<GetSetLightBarColor-response>"
  "1a018bf81959926990f6f2e6ba2d8144")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetSetLightBarColor-response)))
  "Returns md5sum for a message object of type 'GetSetLightBarColor-response"
  "1a018bf81959926990f6f2e6ba2d8144")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetSetLightBarColor-response>)))
  "Returns full string definition for message of type '<GetSetLightBarColor-response>"
  (cl:format cl:nil "string current_light_bar_color  # 当前灯带颜色~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetSetLightBarColor-response)))
  "Returns full string definition for message of type 'GetSetLightBarColor-response"
  (cl:format cl:nil "string current_light_bar_color  # 当前灯带颜色~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetSetLightBarColor-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'current_light_bar_color))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetSetLightBarColor-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetSetLightBarColor-response
    (cl:cons ':current_light_bar_color (current_light_bar_color msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetSetLightBarColor)))
  'GetSetLightBarColor-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetSetLightBarColor)))
  'GetSetLightBarColor-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSetLightBarColor)))
  "Returns string type for a service object of type '<GetSetLightBarColor>"
  "dg_msgs/GetSetLightBarColor")
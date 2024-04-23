; Auto-generated. Do not edit!


(cl:in-package dg_msgs-srv)


;//! \htmlinclude SoundAudioControl-request.msg.html

(cl:defclass <SoundAudioControl-request> (roslisp-msg-protocol:ros-message)
  ((audio_name
    :reader audio_name
    :initarg :audio_name
    :type cl:string
    :initform "")
   (play_count
    :reader play_count
    :initarg :play_count
    :type cl:integer
    :initform 0)
   (volume
    :reader volume
    :initarg :volume
    :type cl:integer
    :initform 0)
   (cancle_play
    :reader cancle_play
    :initarg :cancle_play
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SoundAudioControl-request (<SoundAudioControl-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SoundAudioControl-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SoundAudioControl-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<SoundAudioControl-request> is deprecated: use dg_msgs-srv:SoundAudioControl-request instead.")))

(cl:ensure-generic-function 'audio_name-val :lambda-list '(m))
(cl:defmethod audio_name-val ((m <SoundAudioControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:audio_name-val is deprecated.  Use dg_msgs-srv:audio_name instead.")
  (audio_name m))

(cl:ensure-generic-function 'play_count-val :lambda-list '(m))
(cl:defmethod play_count-val ((m <SoundAudioControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:play_count-val is deprecated.  Use dg_msgs-srv:play_count instead.")
  (play_count m))

(cl:ensure-generic-function 'volume-val :lambda-list '(m))
(cl:defmethod volume-val ((m <SoundAudioControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:volume-val is deprecated.  Use dg_msgs-srv:volume instead.")
  (volume m))

(cl:ensure-generic-function 'cancle_play-val :lambda-list '(m))
(cl:defmethod cancle_play-val ((m <SoundAudioControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:cancle_play-val is deprecated.  Use dg_msgs-srv:cancle_play instead.")
  (cancle_play m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SoundAudioControl-request>) ostream)
  "Serializes a message object of type '<SoundAudioControl-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'audio_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'audio_name))
  (cl:let* ((signed (cl:slot-value msg 'play_count)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'volume)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'cancle_play) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SoundAudioControl-request>) istream)
  "Deserializes a message object of type '<SoundAudioControl-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'audio_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'audio_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'play_count) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'volume) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'cancle_play) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SoundAudioControl-request>)))
  "Returns string type for a service object of type '<SoundAudioControl-request>"
  "dg_msgs/SoundAudioControlRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SoundAudioControl-request)))
  "Returns string type for a service object of type 'SoundAudioControl-request"
  "dg_msgs/SoundAudioControlRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SoundAudioControl-request>)))
  "Returns md5sum for a message object of type '<SoundAudioControl-request>"
  "274ab99c5d36f88cae47c4b4e730d64c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SoundAudioControl-request)))
  "Returns md5sum for a message object of type 'SoundAudioControl-request"
  "274ab99c5d36f88cae47c4b4e730d64c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SoundAudioControl-request>)))
  "Returns full string definition for message of type '<SoundAudioControl-request>"
  (cl:format cl:nil "# 控制音响的服务~%string audio_name       # 音频名    ~%int32 play_count        # 播放次数              -1 无限循环播放; 0 默认播放一次; 1 播放一次~%int32 volume            # 音量大小              [0,100] ~%bool cancle_play        # 是否终止播放当前音频    true/false~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SoundAudioControl-request)))
  "Returns full string definition for message of type 'SoundAudioControl-request"
  (cl:format cl:nil "# 控制音响的服务~%string audio_name       # 音频名    ~%int32 play_count        # 播放次数              -1 无限循环播放; 0 默认播放一次; 1 播放一次~%int32 volume            # 音量大小              [0,100] ~%bool cancle_play        # 是否终止播放当前音频    true/false~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SoundAudioControl-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'audio_name))
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SoundAudioControl-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SoundAudioControl-request
    (cl:cons ':audio_name (audio_name msg))
    (cl:cons ':play_count (play_count msg))
    (cl:cons ':volume (volume msg))
    (cl:cons ':cancle_play (cancle_play msg))
))
;//! \htmlinclude SoundAudioControl-response.msg.html

(cl:defclass <SoundAudioControl-response> (roslisp-msg-protocol:ros-message)
  ((is_played
    :reader is_played
    :initarg :is_played
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SoundAudioControl-response (<SoundAudioControl-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SoundAudioControl-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SoundAudioControl-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<SoundAudioControl-response> is deprecated: use dg_msgs-srv:SoundAudioControl-response instead.")))

(cl:ensure-generic-function 'is_played-val :lambda-list '(m))
(cl:defmethod is_played-val ((m <SoundAudioControl-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:is_played-val is deprecated.  Use dg_msgs-srv:is_played instead.")
  (is_played m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SoundAudioControl-response>) ostream)
  "Serializes a message object of type '<SoundAudioControl-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_played) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SoundAudioControl-response>) istream)
  "Deserializes a message object of type '<SoundAudioControl-response>"
    (cl:setf (cl:slot-value msg 'is_played) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SoundAudioControl-response>)))
  "Returns string type for a service object of type '<SoundAudioControl-response>"
  "dg_msgs/SoundAudioControlResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SoundAudioControl-response)))
  "Returns string type for a service object of type 'SoundAudioControl-response"
  "dg_msgs/SoundAudioControlResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SoundAudioControl-response>)))
  "Returns md5sum for a message object of type '<SoundAudioControl-response>"
  "274ab99c5d36f88cae47c4b4e730d64c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SoundAudioControl-response)))
  "Returns md5sum for a message object of type 'SoundAudioControl-response"
  "274ab99c5d36f88cae47c4b4e730d64c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SoundAudioControl-response>)))
  "Returns full string definition for message of type '<SoundAudioControl-response>"
  (cl:format cl:nil "bool is_played          # 播放成功              true/false~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SoundAudioControl-response)))
  "Returns full string definition for message of type 'SoundAudioControl-response"
  (cl:format cl:nil "bool is_played          # 播放成功              true/false~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SoundAudioControl-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SoundAudioControl-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SoundAudioControl-response
    (cl:cons ':is_played (is_played msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SoundAudioControl)))
  'SoundAudioControl-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SoundAudioControl)))
  'SoundAudioControl-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SoundAudioControl)))
  "Returns string type for a service object of type '<SoundAudioControl>"
  "dg_msgs/SoundAudioControl")
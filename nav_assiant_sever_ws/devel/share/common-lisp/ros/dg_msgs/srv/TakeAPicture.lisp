; Auto-generated. Do not edit!


(cl:in-package dg_msgs-srv)


;//! \htmlinclude TakeAPicture-request.msg.html

(cl:defclass <TakeAPicture-request> (roslisp-msg-protocol:ros-message)
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
   (selection
    :reader selection
    :initarg :selection
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil))
   (image_type
    :reader image_type
    :initarg :image_type
    :type cl:integer
    :initform 0))
)

(cl:defclass TakeAPicture-request (<TakeAPicture-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TakeAPicture-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TakeAPicture-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<TakeAPicture-request> is deprecated: use dg_msgs-srv:TakeAPicture-request instead.")))

(cl:ensure-generic-function 'pointCloud-val :lambda-list '(m))
(cl:defmethod pointCloud-val ((m <TakeAPicture-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:pointCloud-val is deprecated.  Use dg_msgs-srv:pointCloud instead.")
  (pointCloud m))

(cl:ensure-generic-function 'rgb-val :lambda-list '(m))
(cl:defmethod rgb-val ((m <TakeAPicture-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:rgb-val is deprecated.  Use dg_msgs-srv:rgb instead.")
  (rgb m))

(cl:ensure-generic-function 'depth-val :lambda-list '(m))
(cl:defmethod depth-val ((m <TakeAPicture-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:depth-val is deprecated.  Use dg_msgs-srv:depth instead.")
  (depth m))

(cl:ensure-generic-function 'selection-val :lambda-list '(m))
(cl:defmethod selection-val ((m <TakeAPicture-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:selection-val is deprecated.  Use dg_msgs-srv:selection instead.")
  (selection m))

(cl:ensure-generic-function 'image_type-val :lambda-list '(m))
(cl:defmethod image_type-val ((m <TakeAPicture-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:image_type-val is deprecated.  Use dg_msgs-srv:image_type instead.")
  (image_type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TakeAPicture-request>) ostream)
  "Serializes a message object of type '<TakeAPicture-request>"
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
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'selection))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'selection))
  (cl:let* ((signed (cl:slot-value msg 'image_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TakeAPicture-request>) istream)
  "Deserializes a message object of type '<TakeAPicture-request>"
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
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'selection) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'selection)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'image_type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TakeAPicture-request>)))
  "Returns string type for a service object of type '<TakeAPicture-request>"
  "dg_msgs/TakeAPictureRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TakeAPicture-request)))
  "Returns string type for a service object of type 'TakeAPicture-request"
  "dg_msgs/TakeAPictureRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TakeAPicture-request>)))
  "Returns md5sum for a message object of type '<TakeAPicture-request>"
  "7b55008856d595d72ce46bf9f46f37fd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TakeAPicture-request)))
  "Returns md5sum for a message object of type 'TakeAPicture-request"
  "7b55008856d595d72ce46bf9f46f37fd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TakeAPicture-request>)))
  "Returns full string definition for message of type '<TakeAPicture-request>"
  (cl:format cl:nil "#goal definition~%string pointCloud   # 点云存储路径~%string rgb          # RGB 图像存储路径~%string depth        # 深度图存储路径~%bool[] selection    # 按照pointCloud, rgb, depth顺序输入是否需要对应的数据~%int32  image_type   # 对图像处理类型，0-正常，1-镜像~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TakeAPicture-request)))
  "Returns full string definition for message of type 'TakeAPicture-request"
  (cl:format cl:nil "#goal definition~%string pointCloud   # 点云存储路径~%string rgb          # RGB 图像存储路径~%string depth        # 深度图存储路径~%bool[] selection    # 按照pointCloud, rgb, depth顺序输入是否需要对应的数据~%int32  image_type   # 对图像处理类型，0-正常，1-镜像~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TakeAPicture-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'pointCloud))
     4 (cl:length (cl:slot-value msg 'rgb))
     4 (cl:length (cl:slot-value msg 'depth))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'selection) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TakeAPicture-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TakeAPicture-request
    (cl:cons ':pointCloud (pointCloud msg))
    (cl:cons ':rgb (rgb msg))
    (cl:cons ':depth (depth msg))
    (cl:cons ':selection (selection msg))
    (cl:cons ':image_type (image_type msg))
))
;//! \htmlinclude TakeAPicture-response.msg.html

(cl:defclass <TakeAPicture-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass TakeAPicture-response (<TakeAPicture-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TakeAPicture-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TakeAPicture-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<TakeAPicture-response> is deprecated: use dg_msgs-srv:TakeAPicture-response instead.")))

(cl:ensure-generic-function 'pointCloud-val :lambda-list '(m))
(cl:defmethod pointCloud-val ((m <TakeAPicture-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:pointCloud-val is deprecated.  Use dg_msgs-srv:pointCloud instead.")
  (pointCloud m))

(cl:ensure-generic-function 'rgb-val :lambda-list '(m))
(cl:defmethod rgb-val ((m <TakeAPicture-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:rgb-val is deprecated.  Use dg_msgs-srv:rgb instead.")
  (rgb m))

(cl:ensure-generic-function 'depth-val :lambda-list '(m))
(cl:defmethod depth-val ((m <TakeAPicture-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:depth-val is deprecated.  Use dg_msgs-srv:depth instead.")
  (depth m))

(cl:ensure-generic-function 'state_info-val :lambda-list '(m))
(cl:defmethod state_info-val ((m <TakeAPicture-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:state_info-val is deprecated.  Use dg_msgs-srv:state_info instead.")
  (state_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TakeAPicture-response>) ostream)
  "Serializes a message object of type '<TakeAPicture-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TakeAPicture-response>) istream)
  "Deserializes a message object of type '<TakeAPicture-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TakeAPicture-response>)))
  "Returns string type for a service object of type '<TakeAPicture-response>"
  "dg_msgs/TakeAPictureResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TakeAPicture-response)))
  "Returns string type for a service object of type 'TakeAPicture-response"
  "dg_msgs/TakeAPictureResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TakeAPicture-response>)))
  "Returns md5sum for a message object of type '<TakeAPicture-response>"
  "7b55008856d595d72ce46bf9f46f37fd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TakeAPicture-response)))
  "Returns md5sum for a message object of type 'TakeAPicture-response"
  "7b55008856d595d72ce46bf9f46f37fd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TakeAPicture-response>)))
  "Returns full string definition for message of type '<TakeAPicture-response>"
  (cl:format cl:nil "#result definition~%string pointCloud~%string rgb~%string depth~%UniversalStateInfo  state_info~%  ~%# 0 表示成功；~%# error: 1 表示点云存储失败~%#        2 表示rgb图像存储失败~%#        3 表示深度图存储失败~%~%================================================================================~%MSG: dg_msgs/UniversalStateInfo~%int32 state_index   # 状态索引值：统一0是正常，其他数字自定义~%string node_name    # 当前节点名~%string state_msgs   # 附加信息，相当于additional_msgs~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TakeAPicture-response)))
  "Returns full string definition for message of type 'TakeAPicture-response"
  (cl:format cl:nil "#result definition~%string pointCloud~%string rgb~%string depth~%UniversalStateInfo  state_info~%  ~%# 0 表示成功；~%# error: 1 表示点云存储失败~%#        2 表示rgb图像存储失败~%#        3 表示深度图存储失败~%~%================================================================================~%MSG: dg_msgs/UniversalStateInfo~%int32 state_index   # 状态索引值：统一0是正常，其他数字自定义~%string node_name    # 当前节点名~%string state_msgs   # 附加信息，相当于additional_msgs~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TakeAPicture-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'pointCloud))
     4 (cl:length (cl:slot-value msg 'rgb))
     4 (cl:length (cl:slot-value msg 'depth))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TakeAPicture-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TakeAPicture-response
    (cl:cons ':pointCloud (pointCloud msg))
    (cl:cons ':rgb (rgb msg))
    (cl:cons ':depth (depth msg))
    (cl:cons ':state_info (state_info msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TakeAPicture)))
  'TakeAPicture-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TakeAPicture)))
  'TakeAPicture-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TakeAPicture)))
  "Returns string type for a service object of type '<TakeAPicture>"
  "dg_msgs/TakeAPicture")
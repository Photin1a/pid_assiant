; Auto-generated. Do not edit!


(cl:in-package dg_msgs-msg)


;//! \htmlinclude TakeAPictureGoal.msg.html

(cl:defclass <TakeAPictureGoal> (roslisp-msg-protocol:ros-message)
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
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil)))
)

(cl:defclass TakeAPictureGoal (<TakeAPictureGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TakeAPictureGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TakeAPictureGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-msg:<TakeAPictureGoal> is deprecated: use dg_msgs-msg:TakeAPictureGoal instead.")))

(cl:ensure-generic-function 'pointCloud-val :lambda-list '(m))
(cl:defmethod pointCloud-val ((m <TakeAPictureGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:pointCloud-val is deprecated.  Use dg_msgs-msg:pointCloud instead.")
  (pointCloud m))

(cl:ensure-generic-function 'rgb-val :lambda-list '(m))
(cl:defmethod rgb-val ((m <TakeAPictureGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:rgb-val is deprecated.  Use dg_msgs-msg:rgb instead.")
  (rgb m))

(cl:ensure-generic-function 'depth-val :lambda-list '(m))
(cl:defmethod depth-val ((m <TakeAPictureGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:depth-val is deprecated.  Use dg_msgs-msg:depth instead.")
  (depth m))

(cl:ensure-generic-function 'selection-val :lambda-list '(m))
(cl:defmethod selection-val ((m <TakeAPictureGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:selection-val is deprecated.  Use dg_msgs-msg:selection instead.")
  (selection m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TakeAPictureGoal>) ostream)
  "Serializes a message object of type '<TakeAPictureGoal>"
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TakeAPictureGoal>) istream)
  "Deserializes a message object of type '<TakeAPictureGoal>"
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TakeAPictureGoal>)))
  "Returns string type for a message object of type '<TakeAPictureGoal>"
  "dg_msgs/TakeAPictureGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TakeAPictureGoal)))
  "Returns string type for a message object of type 'TakeAPictureGoal"
  "dg_msgs/TakeAPictureGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TakeAPictureGoal>)))
  "Returns md5sum for a message object of type '<TakeAPictureGoal>"
  "75a53d3d7dbe18c657bd2eb4588e1483")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TakeAPictureGoal)))
  "Returns md5sum for a message object of type 'TakeAPictureGoal"
  "75a53d3d7dbe18c657bd2eb4588e1483")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TakeAPictureGoal>)))
  "Returns full string definition for message of type '<TakeAPictureGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%string pointCloud~%string rgb~%string depth~%bool[] selection #按照pointCloud, rgb, depth顺序输入是否需要对应的数据~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TakeAPictureGoal)))
  "Returns full string definition for message of type 'TakeAPictureGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%string pointCloud~%string rgb~%string depth~%bool[] selection #按照pointCloud, rgb, depth顺序输入是否需要对应的数据~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TakeAPictureGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'pointCloud))
     4 (cl:length (cl:slot-value msg 'rgb))
     4 (cl:length (cl:slot-value msg 'depth))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'selection) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TakeAPictureGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'TakeAPictureGoal
    (cl:cons ':pointCloud (pointCloud msg))
    (cl:cons ':rgb (rgb msg))
    (cl:cons ':depth (depth msg))
    (cl:cons ':selection (selection msg))
))

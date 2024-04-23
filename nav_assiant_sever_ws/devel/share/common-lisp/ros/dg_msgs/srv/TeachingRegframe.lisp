; Auto-generated. Do not edit!


(cl:in-package dg_msgs-srv)


;//! \htmlinclude TeachingRegframe-request.msg.html

(cl:defclass <TeachingRegframe-request> (roslisp-msg-protocol:ros-message)
  ((update_head2F
    :reader update_head2F
    :initarg :update_head2F
    :type cl:boolean
    :initform cl:nil)
   (pcd_regframe_path
    :reader pcd_regframe_path
    :initarg :pcd_regframe_path
    :type cl:string
    :initform "")
   (json_save_path
    :reader json_save_path
    :initarg :json_save_path
    :type cl:string
    :initform "")
   (region_name
    :reader region_name
    :initarg :region_name
    :type cl:string
    :initform "")
   (lidar_topic
    :reader lidar_topic
    :initarg :lidar_topic
    :type cl:string
    :initform ""))
)

(cl:defclass TeachingRegframe-request (<TeachingRegframe-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TeachingRegframe-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TeachingRegframe-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<TeachingRegframe-request> is deprecated: use dg_msgs-srv:TeachingRegframe-request instead.")))

(cl:ensure-generic-function 'update_head2F-val :lambda-list '(m))
(cl:defmethod update_head2F-val ((m <TeachingRegframe-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:update_head2F-val is deprecated.  Use dg_msgs-srv:update_head2F instead.")
  (update_head2F m))

(cl:ensure-generic-function 'pcd_regframe_path-val :lambda-list '(m))
(cl:defmethod pcd_regframe_path-val ((m <TeachingRegframe-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:pcd_regframe_path-val is deprecated.  Use dg_msgs-srv:pcd_regframe_path instead.")
  (pcd_regframe_path m))

(cl:ensure-generic-function 'json_save_path-val :lambda-list '(m))
(cl:defmethod json_save_path-val ((m <TeachingRegframe-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:json_save_path-val is deprecated.  Use dg_msgs-srv:json_save_path instead.")
  (json_save_path m))

(cl:ensure-generic-function 'region_name-val :lambda-list '(m))
(cl:defmethod region_name-val ((m <TeachingRegframe-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:region_name-val is deprecated.  Use dg_msgs-srv:region_name instead.")
  (region_name m))

(cl:ensure-generic-function 'lidar_topic-val :lambda-list '(m))
(cl:defmethod lidar_topic-val ((m <TeachingRegframe-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:lidar_topic-val is deprecated.  Use dg_msgs-srv:lidar_topic instead.")
  (lidar_topic m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TeachingRegframe-request>) ostream)
  "Serializes a message object of type '<TeachingRegframe-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'update_head2F) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'pcd_regframe_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'pcd_regframe_path))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'json_save_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'json_save_path))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'region_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'region_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'lidar_topic))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'lidar_topic))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TeachingRegframe-request>) istream)
  "Deserializes a message object of type '<TeachingRegframe-request>"
    (cl:setf (cl:slot-value msg 'update_head2F) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pcd_regframe_path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'pcd_regframe_path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'json_save_path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'json_save_path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'region_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'region_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lidar_topic) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'lidar_topic) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TeachingRegframe-request>)))
  "Returns string type for a service object of type '<TeachingRegframe-request>"
  "dg_msgs/TeachingRegframeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TeachingRegframe-request)))
  "Returns string type for a service object of type 'TeachingRegframe-request"
  "dg_msgs/TeachingRegframeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TeachingRegframe-request>)))
  "Returns md5sum for a message object of type '<TeachingRegframe-request>"
  "82733c39cc3dc283e1ac8112691de480")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TeachingRegframe-request)))
  "Returns md5sum for a message object of type 'TeachingRegframe-request"
  "82733c39cc3dc283e1ac8112691de480")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TeachingRegframe-request>)))
  "Returns full string definition for message of type '<TeachingRegframe-request>"
  (cl:format cl:nil "bool update_head2F~%string pcd_regframe_path~%string json_save_path~%string region_name~%string lidar_topic~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TeachingRegframe-request)))
  "Returns full string definition for message of type 'TeachingRegframe-request"
  (cl:format cl:nil "bool update_head2F~%string pcd_regframe_path~%string json_save_path~%string region_name~%string lidar_topic~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TeachingRegframe-request>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'pcd_regframe_path))
     4 (cl:length (cl:slot-value msg 'json_save_path))
     4 (cl:length (cl:slot-value msg 'region_name))
     4 (cl:length (cl:slot-value msg 'lidar_topic))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TeachingRegframe-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TeachingRegframe-request
    (cl:cons ':update_head2F (update_head2F msg))
    (cl:cons ':pcd_regframe_path (pcd_regframe_path msg))
    (cl:cons ':json_save_path (json_save_path msg))
    (cl:cons ':region_name (region_name msg))
    (cl:cons ':lidar_topic (lidar_topic msg))
))
;//! \htmlinclude TeachingRegframe-response.msg.html

(cl:defclass <TeachingRegframe-response> (roslisp-msg-protocol:ros-message)
  ((pcd_regframe_path
    :reader pcd_regframe_path
    :initarg :pcd_regframe_path
    :type cl:string
    :initform "")
   (pose_regframe2head
    :reader pose_regframe2head
    :initarg :pose_regframe2head
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (pose_head2F
    :reader pose_head2F
    :initarg :pose_head2F
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass TeachingRegframe-response (<TeachingRegframe-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TeachingRegframe-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TeachingRegframe-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<TeachingRegframe-response> is deprecated: use dg_msgs-srv:TeachingRegframe-response instead.")))

(cl:ensure-generic-function 'pcd_regframe_path-val :lambda-list '(m))
(cl:defmethod pcd_regframe_path-val ((m <TeachingRegframe-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:pcd_regframe_path-val is deprecated.  Use dg_msgs-srv:pcd_regframe_path instead.")
  (pcd_regframe_path m))

(cl:ensure-generic-function 'pose_regframe2head-val :lambda-list '(m))
(cl:defmethod pose_regframe2head-val ((m <TeachingRegframe-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:pose_regframe2head-val is deprecated.  Use dg_msgs-srv:pose_regframe2head instead.")
  (pose_regframe2head m))

(cl:ensure-generic-function 'pose_head2F-val :lambda-list '(m))
(cl:defmethod pose_head2F-val ((m <TeachingRegframe-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:pose_head2F-val is deprecated.  Use dg_msgs-srv:pose_head2F instead.")
  (pose_head2F m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TeachingRegframe-response>) ostream)
  "Serializes a message object of type '<TeachingRegframe-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'pcd_regframe_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'pcd_regframe_path))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose_regframe2head) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose_head2F) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TeachingRegframe-response>) istream)
  "Deserializes a message object of type '<TeachingRegframe-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pcd_regframe_path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'pcd_regframe_path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose_regframe2head) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose_head2F) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TeachingRegframe-response>)))
  "Returns string type for a service object of type '<TeachingRegframe-response>"
  "dg_msgs/TeachingRegframeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TeachingRegframe-response)))
  "Returns string type for a service object of type 'TeachingRegframe-response"
  "dg_msgs/TeachingRegframeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TeachingRegframe-response>)))
  "Returns md5sum for a message object of type '<TeachingRegframe-response>"
  "82733c39cc3dc283e1ac8112691de480")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TeachingRegframe-response)))
  "Returns md5sum for a message object of type 'TeachingRegframe-response"
  "82733c39cc3dc283e1ac8112691de480")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TeachingRegframe-response>)))
  "Returns full string definition for message of type '<TeachingRegframe-response>"
  (cl:format cl:nil "string pcd_regframe_path~%geometry_msgs/Pose pose_regframe2head~%geometry_msgs/Pose pose_head2F~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TeachingRegframe-response)))
  "Returns full string definition for message of type 'TeachingRegframe-response"
  (cl:format cl:nil "string pcd_regframe_path~%geometry_msgs/Pose pose_regframe2head~%geometry_msgs/Pose pose_head2F~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TeachingRegframe-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'pcd_regframe_path))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose_regframe2head))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose_head2F))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TeachingRegframe-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TeachingRegframe-response
    (cl:cons ':pcd_regframe_path (pcd_regframe_path msg))
    (cl:cons ':pose_regframe2head (pose_regframe2head msg))
    (cl:cons ':pose_head2F (pose_head2F msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TeachingRegframe)))
  'TeachingRegframe-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TeachingRegframe)))
  'TeachingRegframe-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TeachingRegframe)))
  "Returns string type for a service object of type '<TeachingRegframe>"
  "dg_msgs/TeachingRegframe")
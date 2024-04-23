;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::XGPillerCenter)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'XGPillerCenter (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::XGPILLERCENTER")
  (make-package "DG_MSGS::XGPILLERCENTER"))
(unless (find-package "DG_MSGS::XGPILLERCENTERREQUEST")
  (make-package "DG_MSGS::XGPILLERCENTERREQUEST"))
(unless (find-package "DG_MSGS::XGPILLERCENTERRESPONSE")
  (make-package "DG_MSGS::XGPILLERCENTERRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass dg_msgs::XGPillerCenterRequest
  :super ros::object
  :slots (_detect_dis ))

(defmethod dg_msgs::XGPillerCenterRequest
  (:init
   (&key
    ((:detect_dis __detect_dis) 0.0)
    )
   (send-super :init)
   (setq _detect_dis (float __detect_dis))
   self)
  (:detect_dis
   (&optional __detect_dis)
   (if __detect_dis (setq _detect_dis __detect_dis)) _detect_dis)
  (:serialization-length
   ()
   (+
    ;; float32 _detect_dis
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _detect_dis
       (sys::poke _detect_dis (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _detect_dis
     (setq _detect_dis (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dg_msgs::XGPillerCenterResponse
  :super ros::object
  :slots (_confidence _piller_stamped _state_info ))

(defmethod dg_msgs::XGPillerCenterResponse
  (:init
   (&key
    ((:confidence __confidence) 0.0)
    ((:piller_stamped __piller_stamped) (let (r) (dotimes (i 0) (push (instance geometry_msgs::TransformStamped :init) r)) r))
    ((:state_info __state_info) (instance dg_msgs::UniversalStateInfo :init))
    )
   (send-super :init)
   (setq _confidence (float __confidence))
   (setq _piller_stamped __piller_stamped)
   (setq _state_info __state_info)
   self)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:piller_stamped
   (&rest __piller_stamped)
   (if (keywordp (car __piller_stamped))
       (send* _piller_stamped __piller_stamped)
     (progn
       (if __piller_stamped (setq _piller_stamped (car __piller_stamped)))
       _piller_stamped)))
  (:state_info
   (&rest __state_info)
   (if (keywordp (car __state_info))
       (send* _state_info __state_info)
     (progn
       (if __state_info (setq _state_info (car __state_info)))
       _state_info)))
  (:serialization-length
   ()
   (+
    ;; float32 _confidence
    4
    ;; geometry_msgs/TransformStamped[] _piller_stamped
    (apply #'+ (send-all _piller_stamped :serialization-length)) 4
    ;; dg_msgs/UniversalStateInfo _state_info
    (send _state_info :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; geometry_msgs/TransformStamped[] _piller_stamped
     (write-long (length _piller_stamped) s)
     (dolist (elem _piller_stamped)
       (send elem :serialize s)
       )
     ;; dg_msgs/UniversalStateInfo _state_info
       (send _state_info :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _confidence
     (setq _confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; geometry_msgs/TransformStamped[] _piller_stamped
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _piller_stamped (let (r) (dotimes (i n) (push (instance geometry_msgs::TransformStamped :init) r)) r))
     (dolist (elem- _piller_stamped)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; dg_msgs/UniversalStateInfo _state_info
     (send _state_info :deserialize buf ptr-) (incf ptr- (send _state_info :serialization-length))
   ;;
   self)
  )

(defclass dg_msgs::XGPillerCenter
  :super ros::object
  :slots ())

(setf (get dg_msgs::XGPillerCenter :md5sum-) "44a8d4b0b3e7baca9bbc0e508470774d")
(setf (get dg_msgs::XGPillerCenter :datatype-) "dg_msgs/XGPillerCenter")
(setf (get dg_msgs::XGPillerCenter :request) dg_msgs::XGPillerCenterRequest)
(setf (get dg_msgs::XGPillerCenter :response) dg_msgs::XGPillerCenterResponse)

(defmethod dg_msgs::XGPillerCenterRequest
  (:response () (instance dg_msgs::XGPillerCenterResponse :init)))

(setf (get dg_msgs::XGPillerCenterRequest :md5sum-) "44a8d4b0b3e7baca9bbc0e508470774d")
(setf (get dg_msgs::XGPillerCenterRequest :datatype-) "dg_msgs/XGPillerCenterRequest")
(setf (get dg_msgs::XGPillerCenterRequest :definition-)
      "float32 detect_dis          # 距离motion_link的检测距离
---
float32 confidence          # 仙工底盘对当前位置的置信度
geometry_msgs/TransformStamped[] piller_stamped
UniversalStateInfo state_info

================================================================================
MSG: geometry_msgs/TransformStamped
# This expresses a transform from coordinate frame header.frame_id
# to the coordinate frame child_frame_id
#
# This message is mostly used by the 
# <a href=\"http://wiki.ros.org/tf\">tf</a> package. 
# See its documentation for more information.

Header header
string child_frame_id # the frame id of the child frame
Transform transform

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: dg_msgs/UniversalStateInfo
int32 state_index   # 状态索引值：统一0是正常，其他数字自定义
string node_name    # 当前节点名
")

(setf (get dg_msgs::XGPillerCenterResponse :md5sum-) "44a8d4b0b3e7baca9bbc0e508470774d")
(setf (get dg_msgs::XGPillerCenterResponse :datatype-) "dg_msgs/XGPillerCenterResponse")
(setf (get dg_msgs::XGPillerCenterResponse :definition-)
      "float32 detect_dis          # 距离motion_link的检测距离
---
float32 confidence          # 仙工底盘对当前位置的置信度
geometry_msgs/TransformStamped[] piller_stamped
UniversalStateInfo state_info

================================================================================
MSG: geometry_msgs/TransformStamped
# This expresses a transform from coordinate frame header.frame_id
# to the coordinate frame child_frame_id
#
# This message is mostly used by the 
# <a href=\"http://wiki.ros.org/tf\">tf</a> package. 
# See its documentation for more information.

Header header
string child_frame_id # the frame id of the child frame
Transform transform

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: dg_msgs/UniversalStateInfo
int32 state_index   # 状态索引值：统一0是正常，其他数字自定义
string node_name    # 当前节点名
")



(provide :dg_msgs/XGPillerCenter "44a8d4b0b3e7baca9bbc0e508470774d")



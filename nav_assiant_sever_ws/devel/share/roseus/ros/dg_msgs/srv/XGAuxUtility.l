;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::XGAuxUtility)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'XGAuxUtility (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::XGAUXUTILITY")
  (make-package "DG_MSGS::XGAUXUTILITY"))
(unless (find-package "DG_MSGS::XGAUXUTILITYREQUEST")
  (make-package "DG_MSGS::XGAUXUTILITYREQUEST"))
(unless (find-package "DG_MSGS::XGAUXUTILITYRESPONSE")
  (make-package "DG_MSGS::XGAUXUTILITYRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass dg_msgs::XGAuxUtilityRequest
  :super ros::object
  :slots (_reg_pose _teach_pose ))

(defmethod dg_msgs::XGAuxUtilityRequest
  (:init
   (&key
    ((:reg_pose __reg_pose) (instance geometry_msgs::PoseStamped :init))
    ((:teach_pose __teach_pose) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _reg_pose __reg_pose)
   (setq _teach_pose __teach_pose)
   self)
  (:reg_pose
   (&rest __reg_pose)
   (if (keywordp (car __reg_pose))
       (send* _reg_pose __reg_pose)
     (progn
       (if __reg_pose (setq _reg_pose (car __reg_pose)))
       _reg_pose)))
  (:teach_pose
   (&rest __teach_pose)
   (if (keywordp (car __teach_pose))
       (send* _teach_pose __teach_pose)
     (progn
       (if __teach_pose (setq _teach_pose (car __teach_pose)))
       _teach_pose)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped _reg_pose
    (send _reg_pose :serialization-length)
    ;; geometry_msgs/PoseStamped _teach_pose
    (send _teach_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _reg_pose
       (send _reg_pose :serialize s)
     ;; geometry_msgs/PoseStamped _teach_pose
       (send _teach_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _reg_pose
     (send _reg_pose :deserialize buf ptr-) (incf ptr- (send _reg_pose :serialization-length))
   ;; geometry_msgs/PoseStamped _teach_pose
     (send _teach_pose :deserialize buf ptr-) (incf ptr- (send _teach_pose :serialization-length))
   ;;
   self)
  )

(defclass dg_msgs::XGAuxUtilityResponse
  :super ros::object
  :slots (_state_info ))

(defmethod dg_msgs::XGAuxUtilityResponse
  (:init
   (&key
    ((:state_info __state_info) (instance dg_msgs::UniversalStateInfo :init))
    )
   (send-super :init)
   (setq _state_info __state_info)
   self)
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
    ;; dg_msgs/UniversalStateInfo _state_info
    (send _state_info :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; dg_msgs/UniversalStateInfo _state_info
       (send _state_info :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; dg_msgs/UniversalStateInfo _state_info
     (send _state_info :deserialize buf ptr-) (incf ptr- (send _state_info :serialization-length))
   ;;
   self)
  )

(defclass dg_msgs::XGAuxUtility
  :super ros::object
  :slots ())

(setf (get dg_msgs::XGAuxUtility :md5sum-) "8f88c347ee9cc9a18c8541916b5018b2")
(setf (get dg_msgs::XGAuxUtility :datatype-) "dg_msgs/XGAuxUtility")
(setf (get dg_msgs::XGAuxUtility :request) dg_msgs::XGAuxUtilityRequest)
(setf (get dg_msgs::XGAuxUtility :response) dg_msgs::XGAuxUtilityResponse)

(defmethod dg_msgs::XGAuxUtilityRequest
  (:response () (instance dg_msgs::XGAuxUtilityResponse :init)))

(setf (get dg_msgs::XGAuxUtilityRequest :md5sum-) "8f88c347ee9cc9a18c8541916b5018b2")
(setf (get dg_msgs::XGAuxUtilityRequest :datatype-) "dg_msgs/XGAuxUtilityRequest")
(setf (get dg_msgs::XGAuxUtilityRequest :definition-)
      "# 仙工底盘的辅助服务，用于中心节点和底盘之间交互媒介

# 内容一：用于转化的pose
geometry_msgs/PoseStamped reg_pose          # 配准结果pose，从中心节点处传入
geometry_msgs/PoseStamped teach_pose        # 当时示校时的pose，从中心节点传入 

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
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
---
UniversalStateInfo  state_info

================================================================================
MSG: dg_msgs/UniversalStateInfo
int32 state_index   # 状态索引值：统一0是正常，其他数字自定义
string node_name    # 当前节点名
")

(setf (get dg_msgs::XGAuxUtilityResponse :md5sum-) "8f88c347ee9cc9a18c8541916b5018b2")
(setf (get dg_msgs::XGAuxUtilityResponse :datatype-) "dg_msgs/XGAuxUtilityResponse")
(setf (get dg_msgs::XGAuxUtilityResponse :definition-)
      "# 仙工底盘的辅助服务，用于中心节点和底盘之间交互媒介

# 内容一：用于转化的pose
geometry_msgs/PoseStamped reg_pose          # 配准结果pose，从中心节点处传入
geometry_msgs/PoseStamped teach_pose        # 当时示校时的pose，从中心节点传入 

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
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
---
UniversalStateInfo  state_info

================================================================================
MSG: dg_msgs/UniversalStateInfo
int32 state_index   # 状态索引值：统一0是正常，其他数字自定义
string node_name    # 当前节点名
")



(provide :dg_msgs/XGAuxUtility "8f88c347ee9cc9a18c8541916b5018b2")



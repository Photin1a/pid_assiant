;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::GetBollardState)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'GetBollardState (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::GETBOLLARDSTATE")
  (make-package "DG_MSGS::GETBOLLARDSTATE"))
(unless (find-package "DG_MSGS::GETBOLLARDSTATEREQUEST")
  (make-package "DG_MSGS::GETBOLLARDSTATEREQUEST"))
(unless (find-package "DG_MSGS::GETBOLLARDSTATERESPONSE")
  (make-package "DG_MSGS::GETBOLLARDSTATERESPONSE"))

(in-package "ROS")





(defclass dg_msgs::GetBollardStateRequest
  :super ros::object
  :slots (_bollard_index ))

(defmethod dg_msgs::GetBollardStateRequest
  (:init
   (&key
    ((:bollard_index __bollard_index) 0)
    )
   (send-super :init)
   (setq _bollard_index (round __bollard_index))
   self)
  (:bollard_index
   (&optional __bollard_index)
   (if __bollard_index (setq _bollard_index __bollard_index)) _bollard_index)
  (:serialization-length
   ()
   (+
    ;; int32 _bollard_index
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _bollard_index
       (write-long _bollard_index s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _bollard_index
     (setq _bollard_index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dg_msgs::GetBollardStateResponse
  :super ros::object
  :slots (_bollard_state ))

(defmethod dg_msgs::GetBollardStateResponse
  (:init
   (&key
    ((:bollard_state __bollard_state) (instance dg_msgs::BollardState :init))
    )
   (send-super :init)
   (setq _bollard_state __bollard_state)
   self)
  (:bollard_state
   (&rest __bollard_state)
   (if (keywordp (car __bollard_state))
       (send* _bollard_state __bollard_state)
     (progn
       (if __bollard_state (setq _bollard_state (car __bollard_state)))
       _bollard_state)))
  (:serialization-length
   ()
   (+
    ;; dg_msgs/BollardState _bollard_state
    (send _bollard_state :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; dg_msgs/BollardState _bollard_state
       (send _bollard_state :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; dg_msgs/BollardState _bollard_state
     (send _bollard_state :deserialize buf ptr-) (incf ptr- (send _bollard_state :serialization-length))
   ;;
   self)
  )

(defclass dg_msgs::GetBollardState
  :super ros::object
  :slots ())

(setf (get dg_msgs::GetBollardState :md5sum-) "b8d36c8ac70f1a2e4bd8359afad61cf1")
(setf (get dg_msgs::GetBollardState :datatype-) "dg_msgs/GetBollardState")
(setf (get dg_msgs::GetBollardState :request) dg_msgs::GetBollardStateRequest)
(setf (get dg_msgs::GetBollardState :response) dg_msgs::GetBollardStateResponse)

(defmethod dg_msgs::GetBollardStateRequest
  (:response () (instance dg_msgs::GetBollardStateResponse :init)))

(setf (get dg_msgs::GetBollardStateRequest :md5sum-) "b8d36c8ac70f1a2e4bd8359afad61cf1")
(setf (get dg_msgs::GetBollardStateRequest :datatype-) "dg_msgs/GetBollardStateRequest")
(setf (get dg_msgs::GetBollardStateRequest :definition-)
      "# 获得升降柱状态
int32 bollard_index         # 升降柱编号
---
BollardState bollard_state  # 升降柱状态

================================================================================
MSG: dg_msgs/BollardState
# 升降柱状态信息
string number               # 设备组编号
string bollard_name         # 升降柱名
float32 absolute_height     # 升降柱绝对高度
float32 speed               # 升降柱速度
bool is_aviable             # 当前是否可用；急停被按下、当前处于自动、modbus指针没有成功建立
")

(setf (get dg_msgs::GetBollardStateResponse :md5sum-) "b8d36c8ac70f1a2e4bd8359afad61cf1")
(setf (get dg_msgs::GetBollardStateResponse :datatype-) "dg_msgs/GetBollardStateResponse")
(setf (get dg_msgs::GetBollardStateResponse :definition-)
      "# 获得升降柱状态
int32 bollard_index         # 升降柱编号
---
BollardState bollard_state  # 升降柱状态

================================================================================
MSG: dg_msgs/BollardState
# 升降柱状态信息
string number               # 设备组编号
string bollard_name         # 升降柱名
float32 absolute_height     # 升降柱绝对高度
float32 speed               # 升降柱速度
bool is_aviable             # 当前是否可用；急停被按下、当前处于自动、modbus指针没有成功建立
")



(provide :dg_msgs/GetBollardState "b8d36c8ac70f1a2e4bd8359afad61cf1")



;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::XGGoToElevator)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'XGGoToElevator (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::XGGOTOELEVATOR")
  (make-package "DG_MSGS::XGGOTOELEVATOR"))
(unless (find-package "DG_MSGS::XGGOTOELEVATORREQUEST")
  (make-package "DG_MSGS::XGGOTOELEVATORREQUEST"))
(unless (find-package "DG_MSGS::XGGOTOELEVATORRESPONSE")
  (make-package "DG_MSGS::XGGOTOELEVATORRESPONSE"))

(in-package "ROS")





(defclass dg_msgs::XGGoToElevatorRequest
  :super ros::object
  :slots (_enter_method ))

(defmethod dg_msgs::XGGoToElevatorRequest
  (:init
   (&key
    ((:enter_method __enter_method) "")
    )
   (send-super :init)
   (setq _enter_method (string __enter_method))
   self)
  (:enter_method
   (&optional __enter_method)
   (if __enter_method (setq _enter_method __enter_method)) _enter_method)
  (:serialization-length
   ()
   (+
    ;; string _enter_method
    4 (length _enter_method)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _enter_method
       (write-long (length _enter_method) s) (princ _enter_method s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _enter_method
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _enter_method (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass dg_msgs::XGGoToElevatorResponse
  :super ros::object
  :slots (_state_info ))

(defmethod dg_msgs::XGGoToElevatorResponse
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

(defclass dg_msgs::XGGoToElevator
  :super ros::object
  :slots ())

(setf (get dg_msgs::XGGoToElevator :md5sum-) "965d0474a6d7d045c4a405625226a152")
(setf (get dg_msgs::XGGoToElevator :datatype-) "dg_msgs/XGGoToElevator")
(setf (get dg_msgs::XGGoToElevator :request) dg_msgs::XGGoToElevatorRequest)
(setf (get dg_msgs::XGGoToElevator :response) dg_msgs::XGGoToElevatorResponse)

(defmethod dg_msgs::XGGoToElevatorRequest
  (:response () (instance dg_msgs::XGGoToElevatorResponse :init)))

(setf (get dg_msgs::XGGoToElevatorRequest :md5sum-) "965d0474a6d7d045c4a405625226a152")
(setf (get dg_msgs::XGGoToElevatorRequest :datatype-) "dg_msgs/XGGoToElevatorRequest")
(setf (get dg_msgs::XGGoToElevatorRequest :definition-)
      "# 变量说明
# enter_method 进入电梯的方式，从左侧进入、从右侧进入
string enter_method
---
UniversalStateInfo  state_info

================================================================================
MSG: dg_msgs/UniversalStateInfo
int32 state_index   # 状态索引值：统一0是正常，其他数字自定义
string node_name    # 当前节点名
")

(setf (get dg_msgs::XGGoToElevatorResponse :md5sum-) "965d0474a6d7d045c4a405625226a152")
(setf (get dg_msgs::XGGoToElevatorResponse :datatype-) "dg_msgs/XGGoToElevatorResponse")
(setf (get dg_msgs::XGGoToElevatorResponse :definition-)
      "# 变量说明
# enter_method 进入电梯的方式，从左侧进入、从右侧进入
string enter_method
---
UniversalStateInfo  state_info

================================================================================
MSG: dg_msgs/UniversalStateInfo
int32 state_index   # 状态索引值：统一0是正常，其他数字自定义
string node_name    # 当前节点名
")



(provide :dg_msgs/XGGoToElevator "965d0474a6d7d045c4a405625226a152")



;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::CarBasePauseRecovery)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'CarBasePauseRecovery (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::CARBASEPAUSERECOVERY")
  (make-package "DG_MSGS::CARBASEPAUSERECOVERY"))
(unless (find-package "DG_MSGS::CARBASEPAUSERECOVERYREQUEST")
  (make-package "DG_MSGS::CARBASEPAUSERECOVERYREQUEST"))
(unless (find-package "DG_MSGS::CARBASEPAUSERECOVERYRESPONSE")
  (make-package "DG_MSGS::CARBASEPAUSERECOVERYRESPONSE"))

(in-package "ROS")





(defclass dg_msgs::CarBasePauseRecoveryRequest
  :super ros::object
  :slots (_state_index ))

(defmethod dg_msgs::CarBasePauseRecoveryRequest
  (:init
   (&key
    ((:state_index __state_index) 0)
    )
   (send-super :init)
   (setq _state_index (round __state_index))
   self)
  (:state_index
   (&optional __state_index)
   (if __state_index (setq _state_index __state_index)) _state_index)
  (:serialization-length
   ()
   (+
    ;; int32 _state_index
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _state_index
       (write-long _state_index s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _state_index
     (setq _state_index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dg_msgs::CarBasePauseRecoveryResponse
  :super ros::object
  :slots (_state_info ))

(defmethod dg_msgs::CarBasePauseRecoveryResponse
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

(defclass dg_msgs::CarBasePauseRecovery
  :super ros::object
  :slots ())

(setf (get dg_msgs::CarBasePauseRecovery :md5sum-) "3ad2694b73fbad8069428f9f9462a738")
(setf (get dg_msgs::CarBasePauseRecovery :datatype-) "dg_msgs/CarBasePauseRecovery")
(setf (get dg_msgs::CarBasePauseRecovery :request) dg_msgs::CarBasePauseRecoveryRequest)
(setf (get dg_msgs::CarBasePauseRecovery :response) dg_msgs::CarBasePauseRecoveryResponse)

(defmethod dg_msgs::CarBasePauseRecoveryRequest
  (:response () (instance dg_msgs::CarBasePauseRecoveryResponse :init)))

(setf (get dg_msgs::CarBasePauseRecoveryRequest :md5sum-) "3ad2694b73fbad8069428f9f9462a738")
(setf (get dg_msgs::CarBasePauseRecoveryRequest :datatype-) "dg_msgs/CarBasePauseRecoveryRequest")
(setf (get dg_msgs::CarBasePauseRecoveryRequest :definition-)
      "int32 state_index    # pause(1), recovery(2), terminate(-1), do nothing(0)
---
UniversalStateInfo  state_info

================================================================================
MSG: dg_msgs/UniversalStateInfo
int32 state_index   # 状态索引值：统一0是正常，其他数字自定义
string node_name    # 当前节点名
")

(setf (get dg_msgs::CarBasePauseRecoveryResponse :md5sum-) "3ad2694b73fbad8069428f9f9462a738")
(setf (get dg_msgs::CarBasePauseRecoveryResponse :datatype-) "dg_msgs/CarBasePauseRecoveryResponse")
(setf (get dg_msgs::CarBasePauseRecoveryResponse :definition-)
      "int32 state_index    # pause(1), recovery(2), terminate(-1), do nothing(0)
---
UniversalStateInfo  state_info

================================================================================
MSG: dg_msgs/UniversalStateInfo
int32 state_index   # 状态索引值：统一0是正常，其他数字自定义
string node_name    # 当前节点名
")



(provide :dg_msgs/CarBasePauseRecovery "3ad2694b73fbad8069428f9f9462a738")



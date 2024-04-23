;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::TunnelModel)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'TunnelModel (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::TUNNELMODEL")
  (make-package "DG_MSGS::TUNNELMODEL"))
(unless (find-package "DG_MSGS::TUNNELMODELREQUEST")
  (make-package "DG_MSGS::TUNNELMODELREQUEST"))
(unless (find-package "DG_MSGS::TUNNELMODELRESPONSE")
  (make-package "DG_MSGS::TUNNELMODELRESPONSE"))

(in-package "ROS")





(defclass dg_msgs::TunnelModelRequest
  :super ros::object
  :slots (_topic_lidar _reset ))

(defmethod dg_msgs::TunnelModelRequest
  (:init
   (&key
    ((:topic_lidar __topic_lidar) "")
    ((:reset __reset) nil)
    )
   (send-super :init)
   (setq _topic_lidar (string __topic_lidar))
   (setq _reset __reset)
   self)
  (:topic_lidar
   (&optional __topic_lidar)
   (if __topic_lidar (setq _topic_lidar __topic_lidar)) _topic_lidar)
  (:reset
   (&optional __reset)
   (if __reset (setq _reset __reset)) _reset)
  (:serialization-length
   ()
   (+
    ;; string _topic_lidar
    4 (length _topic_lidar)
    ;; bool _reset
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _topic_lidar
       (write-long (length _topic_lidar) s) (princ _topic_lidar s)
     ;; bool _reset
       (if _reset (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _topic_lidar
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _topic_lidar (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _reset
     (setq _reset (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass dg_msgs::TunnelModelResponse
  :super ros::object
  :slots (_state_info ))

(defmethod dg_msgs::TunnelModelResponse
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

(defclass dg_msgs::TunnelModel
  :super ros::object
  :slots ())

(setf (get dg_msgs::TunnelModel :md5sum-) "8ba35436416732eff731a783354a9a3d")
(setf (get dg_msgs::TunnelModel :datatype-) "dg_msgs/TunnelModel")
(setf (get dg_msgs::TunnelModel :request) dg_msgs::TunnelModelRequest)
(setf (get dg_msgs::TunnelModel :response) dg_msgs::TunnelModelResponse)

(defmethod dg_msgs::TunnelModelRequest
  (:response () (instance dg_msgs::TunnelModelResponse :init)))

(setf (get dg_msgs::TunnelModelRequest :md5sum-) "8ba35436416732eff731a783354a9a3d")
(setf (get dg_msgs::TunnelModelRequest :datatype-) "dg_msgs/TunnelModelRequest")
(setf (get dg_msgs::TunnelModelRequest :definition-)
      "string topic_lidar
bool reset
---

UniversalStateInfo  state_info

================================================================================
MSG: dg_msgs/UniversalStateInfo
int32 state_index   # 状态索引值：统一0是正常，其他数字自定义
string node_name    # 当前节点名
")

(setf (get dg_msgs::TunnelModelResponse :md5sum-) "8ba35436416732eff731a783354a9a3d")
(setf (get dg_msgs::TunnelModelResponse :datatype-) "dg_msgs/TunnelModelResponse")
(setf (get dg_msgs::TunnelModelResponse :definition-)
      "string topic_lidar
bool reset
---

UniversalStateInfo  state_info

================================================================================
MSG: dg_msgs/UniversalStateInfo
int32 state_index   # 状态索引值：统一0是正常，其他数字自定义
string node_name    # 当前节点名
")



(provide :dg_msgs/TunnelModel "8ba35436416732eff731a783354a9a3d")



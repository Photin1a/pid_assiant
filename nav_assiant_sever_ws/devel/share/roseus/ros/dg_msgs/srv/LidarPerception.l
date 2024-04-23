;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::LidarPerception)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'LidarPerception (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::LIDARPERCEPTION")
  (make-package "DG_MSGS::LIDARPERCEPTION"))
(unless (find-package "DG_MSGS::LIDARPERCEPTIONREQUEST")
  (make-package "DG_MSGS::LIDARPERCEPTIONREQUEST"))
(unless (find-package "DG_MSGS::LIDARPERCEPTIONRESPONSE")
  (make-package "DG_MSGS::LIDARPERCEPTIONRESPONSE"))

(in-package "ROS")





(defclass dg_msgs::LidarPerceptionRequest
  :super ros::object
  :slots (_topic_lidar _reset ))

(defmethod dg_msgs::LidarPerceptionRequest
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

(defclass dg_msgs::LidarPerceptionResponse
  :super ros::object
  :slots (_state_info ))

(defmethod dg_msgs::LidarPerceptionResponse
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

(defclass dg_msgs::LidarPerception
  :super ros::object
  :slots ())

(setf (get dg_msgs::LidarPerception :md5sum-) "8ba35436416732eff731a783354a9a3d")
(setf (get dg_msgs::LidarPerception :datatype-) "dg_msgs/LidarPerception")
(setf (get dg_msgs::LidarPerception :request) dg_msgs::LidarPerceptionRequest)
(setf (get dg_msgs::LidarPerception :response) dg_msgs::LidarPerceptionResponse)

(defmethod dg_msgs::LidarPerceptionRequest
  (:response () (instance dg_msgs::LidarPerceptionResponse :init)))

(setf (get dg_msgs::LidarPerceptionRequest :md5sum-) "8ba35436416732eff731a783354a9a3d")
(setf (get dg_msgs::LidarPerceptionRequest :datatype-) "dg_msgs/LidarPerceptionRequest")
(setf (get dg_msgs::LidarPerceptionRequest :definition-)
      "string topic_lidar
bool reset
---

UniversalStateInfo  state_info

================================================================================
MSG: dg_msgs/UniversalStateInfo
int32 state_index   # 状态索引值：统一0是正常，其他数字自定义
string node_name    # 当前节点名
")

(setf (get dg_msgs::LidarPerceptionResponse :md5sum-) "8ba35436416732eff731a783354a9a3d")
(setf (get dg_msgs::LidarPerceptionResponse :datatype-) "dg_msgs/LidarPerceptionResponse")
(setf (get dg_msgs::LidarPerceptionResponse :definition-)
      "string topic_lidar
bool reset
---

UniversalStateInfo  state_info

================================================================================
MSG: dg_msgs/UniversalStateInfo
int32 state_index   # 状态索引值：统一0是正常，其他数字自定义
string node_name    # 当前节点名
")



(provide :dg_msgs/LidarPerception "8ba35436416732eff731a783354a9a3d")



;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::FastLioOdometry)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'FastLioOdometry (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::FASTLIOODOMETRY")
  (make-package "DG_MSGS::FASTLIOODOMETRY"))
(unless (find-package "DG_MSGS::FASTLIOODOMETRYREQUEST")
  (make-package "DG_MSGS::FASTLIOODOMETRYREQUEST"))
(unless (find-package "DG_MSGS::FASTLIOODOMETRYRESPONSE")
  (make-package "DG_MSGS::FASTLIOODOMETRYRESPONSE"))

(in-package "ROS")





(defclass dg_msgs::FastLioOdometryRequest
  :super ros::object
  :slots (_use_odometry _topic_lidar ))

(defmethod dg_msgs::FastLioOdometryRequest
  (:init
   (&key
    ((:use_odometry __use_odometry) nil)
    ((:topic_lidar __topic_lidar) "")
    )
   (send-super :init)
   (setq _use_odometry __use_odometry)
   (setq _topic_lidar (string __topic_lidar))
   self)
  (:use_odometry
   (&optional __use_odometry)
   (if __use_odometry (setq _use_odometry __use_odometry)) _use_odometry)
  (:topic_lidar
   (&optional __topic_lidar)
   (if __topic_lidar (setq _topic_lidar __topic_lidar)) _topic_lidar)
  (:serialization-length
   ()
   (+
    ;; bool _use_odometry
    1
    ;; string _topic_lidar
    4 (length _topic_lidar)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _use_odometry
       (if _use_odometry (write-byte -1 s) (write-byte 0 s))
     ;; string _topic_lidar
       (write-long (length _topic_lidar) s) (princ _topic_lidar s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _use_odometry
     (setq _use_odometry (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _topic_lidar
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _topic_lidar (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass dg_msgs::FastLioOdometryResponse
  :super ros::object
  :slots (_state_info ))

(defmethod dg_msgs::FastLioOdometryResponse
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

(defclass dg_msgs::FastLioOdometry
  :super ros::object
  :slots ())

(setf (get dg_msgs::FastLioOdometry :md5sum-) "f2ec15a71932af1d5083f00b9a5a2788")
(setf (get dg_msgs::FastLioOdometry :datatype-) "dg_msgs/FastLioOdometry")
(setf (get dg_msgs::FastLioOdometry :request) dg_msgs::FastLioOdometryRequest)
(setf (get dg_msgs::FastLioOdometry :response) dg_msgs::FastLioOdometryResponse)

(defmethod dg_msgs::FastLioOdometryRequest
  (:response () (instance dg_msgs::FastLioOdometryResponse :init)))

(setf (get dg_msgs::FastLioOdometryRequest :md5sum-) "f2ec15a71932af1d5083f00b9a5a2788")
(setf (get dg_msgs::FastLioOdometryRequest :datatype-) "dg_msgs/FastLioOdometryRequest")
(setf (get dg_msgs::FastLioOdometryRequest :definition-)
      "bool use_odometry
string topic_lidar
---

UniversalStateInfo  state_info



================================================================================
MSG: dg_msgs/UniversalStateInfo
int32 state_index   # 状态索引值：统一0是正常，其他数字自定义
string node_name    # 当前节点名
")

(setf (get dg_msgs::FastLioOdometryResponse :md5sum-) "f2ec15a71932af1d5083f00b9a5a2788")
(setf (get dg_msgs::FastLioOdometryResponse :datatype-) "dg_msgs/FastLioOdometryResponse")
(setf (get dg_msgs::FastLioOdometryResponse :definition-)
      "bool use_odometry
string topic_lidar
---

UniversalStateInfo  state_info



================================================================================
MSG: dg_msgs/UniversalStateInfo
int32 state_index   # 状态索引值：统一0是正常，其他数字自定义
string node_name    # 当前节点名
")



(provide :dg_msgs/FastLioOdometry "f2ec15a71932af1d5083f00b9a5a2788")



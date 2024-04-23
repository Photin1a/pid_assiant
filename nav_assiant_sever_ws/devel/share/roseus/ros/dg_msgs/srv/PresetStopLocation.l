;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::PresetStopLocation)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'PresetStopLocation (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::PRESETSTOPLOCATION")
  (make-package "DG_MSGS::PRESETSTOPLOCATION"))
(unless (find-package "DG_MSGS::PRESETSTOPLOCATIONREQUEST")
  (make-package "DG_MSGS::PRESETSTOPLOCATIONREQUEST"))
(unless (find-package "DG_MSGS::PRESETSTOPLOCATIONRESPONSE")
  (make-package "DG_MSGS::PRESETSTOPLOCATIONRESPONSE"))

(in-package "ROS")





(defclass dg_msgs::PresetStopLocationRequest
  :super ros::object
  :slots (_lidar_topic _model_path _model_id _stop_id ))

(defmethod dg_msgs::PresetStopLocationRequest
  (:init
   (&key
    ((:lidar_topic __lidar_topic) "")
    ((:model_path __model_path) "")
    ((:model_id __model_id) 0)
    ((:stop_id __stop_id) 0)
    )
   (send-super :init)
   (setq _lidar_topic (string __lidar_topic))
   (setq _model_path (string __model_path))
   (setq _model_id (round __model_id))
   (setq _stop_id (round __stop_id))
   self)
  (:lidar_topic
   (&optional __lidar_topic)
   (if __lidar_topic (setq _lidar_topic __lidar_topic)) _lidar_topic)
  (:model_path
   (&optional __model_path)
   (if __model_path (setq _model_path __model_path)) _model_path)
  (:model_id
   (&optional __model_id)
   (if __model_id (setq _model_id __model_id)) _model_id)
  (:stop_id
   (&optional __stop_id)
   (if __stop_id (setq _stop_id __stop_id)) _stop_id)
  (:serialization-length
   ()
   (+
    ;; string _lidar_topic
    4 (length _lidar_topic)
    ;; string _model_path
    4 (length _model_path)
    ;; int32 _model_id
    4
    ;; int32 _stop_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _lidar_topic
       (write-long (length _lidar_topic) s) (princ _lidar_topic s)
     ;; string _model_path
       (write-long (length _model_path) s) (princ _model_path s)
     ;; int32 _model_id
       (write-long _model_id s)
     ;; int32 _stop_id
       (write-long _stop_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _lidar_topic
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _lidar_topic (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _model_path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _model_path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _model_id
     (setq _model_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _stop_id
     (setq _stop_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dg_msgs::PresetStopLocationResponse
  :super ros::object
  :slots (_result ))

(defmethod dg_msgs::PresetStopLocationResponse
  (:init
   (&key
    ((:result __result) 0)
    )
   (send-super :init)
   (setq _result (round __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dg_msgs::PresetStopLocation
  :super ros::object
  :slots ())

(setf (get dg_msgs::PresetStopLocation :md5sum-) "507416a4bd780b18fe799266d3f8145e")
(setf (get dg_msgs::PresetStopLocation :datatype-) "dg_msgs/PresetStopLocation")
(setf (get dg_msgs::PresetStopLocation :request) dg_msgs::PresetStopLocationRequest)
(setf (get dg_msgs::PresetStopLocation :response) dg_msgs::PresetStopLocationResponse)

(defmethod dg_msgs::PresetStopLocationRequest
  (:response () (instance dg_msgs::PresetStopLocationResponse :init)))

(setf (get dg_msgs::PresetStopLocationRequest :md5sum-) "507416a4bd780b18fe799266d3f8145e")
(setf (get dg_msgs::PresetStopLocationRequest :datatype-) "dg_msgs/PresetStopLocationRequest")
(setf (get dg_msgs::PresetStopLocationRequest :definition-)
      "# 预置停车点位置，此时并不能获取准确的停车点位置，需离线处理后上传
string lidar_topic      # 雷达标识
string model_path       # 模型路径
int32 model_id          # 模型ID
int32 stop_id           # 停车点ID
---
int32 result        # 0: 成功  非0：失败


# 离线调整输出结果
# Pose robotPose
# CropBox box
# int32 model_id
# int32 stop_id
")

(setf (get dg_msgs::PresetStopLocationResponse :md5sum-) "507416a4bd780b18fe799266d3f8145e")
(setf (get dg_msgs::PresetStopLocationResponse :datatype-) "dg_msgs/PresetStopLocationResponse")
(setf (get dg_msgs::PresetStopLocationResponse :definition-)
      "# 预置停车点位置，此时并不能获取准确的停车点位置，需离线处理后上传
string lidar_topic      # 雷达标识
string model_path       # 模型路径
int32 model_id          # 模型ID
int32 stop_id           # 停车点ID
---
int32 result        # 0: 成功  非0：失败


# 离线调整输出结果
# Pose robotPose
# CropBox box
# int32 model_id
# int32 stop_id
")



(provide :dg_msgs/PresetStopLocation "507416a4bd780b18fe799266d3f8145e")



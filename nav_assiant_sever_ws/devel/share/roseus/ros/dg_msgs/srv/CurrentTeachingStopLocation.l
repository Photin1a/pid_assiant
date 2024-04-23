;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::CurrentTeachingStopLocation)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'CurrentTeachingStopLocation (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::CURRENTTEACHINGSTOPLOCATION")
  (make-package "DG_MSGS::CURRENTTEACHINGSTOPLOCATION"))
(unless (find-package "DG_MSGS::CURRENTTEACHINGSTOPLOCATIONREQUEST")
  (make-package "DG_MSGS::CURRENTTEACHINGSTOPLOCATIONREQUEST"))
(unless (find-package "DG_MSGS::CURRENTTEACHINGSTOPLOCATIONRESPONSE")
  (make-package "DG_MSGS::CURRENTTEACHINGSTOPLOCATIONRESPONSE"))

(in-package "ROS")





(defclass dg_msgs::CurrentTeachingStopLocationRequest
  :super ros::object
  :slots (_sensor_type _sensor_id _directory ))

(defmethod dg_msgs::CurrentTeachingStopLocationRequest
  (:init
   (&key
    ((:sensor_type __sensor_type) "")
    ((:sensor_id __sensor_id) "")
    ((:directory __directory) "")
    )
   (send-super :init)
   (setq _sensor_type (string __sensor_type))
   (setq _sensor_id (string __sensor_id))
   (setq _directory (string __directory))
   self)
  (:sensor_type
   (&optional __sensor_type)
   (if __sensor_type (setq _sensor_type __sensor_type)) _sensor_type)
  (:sensor_id
   (&optional __sensor_id)
   (if __sensor_id (setq _sensor_id __sensor_id)) _sensor_id)
  (:directory
   (&optional __directory)
   (if __directory (setq _directory __directory)) _directory)
  (:serialization-length
   ()
   (+
    ;; string _sensor_type
    4 (length _sensor_type)
    ;; string _sensor_id
    4 (length _sensor_id)
    ;; string _directory
    4 (length _directory)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _sensor_type
       (write-long (length _sensor_type) s) (princ _sensor_type s)
     ;; string _sensor_id
       (write-long (length _sensor_id) s) (princ _sensor_id s)
     ;; string _directory
       (write-long (length _directory) s) (princ _directory s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _sensor_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _sensor_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _sensor_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _sensor_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _directory
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _directory (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass dg_msgs::CurrentTeachingStopLocationResponse
  :super ros::object
  :slots (_result _data_file_path ))

(defmethod dg_msgs::CurrentTeachingStopLocationResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:data_file_path __data_file_path) "")
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _data_file_path (string __data_file_path))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:data_file_path
   (&optional __data_file_path)
   (if __data_file_path (setq _data_file_path __data_file_path)) _data_file_path)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ;; string _data_file_path
    4 (length _data_file_path)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;; string _data_file_path
       (write-long (length _data_file_path) s) (princ _data_file_path s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _data_file_path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data_file_path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass dg_msgs::CurrentTeachingStopLocation
  :super ros::object
  :slots ())

(setf (get dg_msgs::CurrentTeachingStopLocation :md5sum-) "974b4b79110aabe8a799f45ec4442dc5")
(setf (get dg_msgs::CurrentTeachingStopLocation :datatype-) "dg_msgs/CurrentTeachingStopLocation")
(setf (get dg_msgs::CurrentTeachingStopLocation :request) dg_msgs::CurrentTeachingStopLocationRequest)
(setf (get dg_msgs::CurrentTeachingStopLocation :response) dg_msgs::CurrentTeachingStopLocationResponse)

(defmethod dg_msgs::CurrentTeachingStopLocationRequest
  (:response () (instance dg_msgs::CurrentTeachingStopLocationResponse :init)))

(setf (get dg_msgs::CurrentTeachingStopLocationRequest :md5sum-) "974b4b79110aabe8a799f45ec4442dc5")
(setf (get dg_msgs::CurrentTeachingStopLocationRequest :datatype-) "dg_msgs/CurrentTeachingStopLocationRequest")
(setf (get dg_msgs::CurrentTeachingStopLocationRequest :definition-)
      "# 示教停车点（采集点）    base_link
string sensor_type         # 雷达（lidar）、精扫相机（camera）
string sensor_id           # 雷达topic  相机分组编号
string directory           # 数据存放目录
---
int32 result             # 0: 成功  非0：失败
string data_file_path    # 采集数据存放路径
")

(setf (get dg_msgs::CurrentTeachingStopLocationResponse :md5sum-) "974b4b79110aabe8a799f45ec4442dc5")
(setf (get dg_msgs::CurrentTeachingStopLocationResponse :datatype-) "dg_msgs/CurrentTeachingStopLocationResponse")
(setf (get dg_msgs::CurrentTeachingStopLocationResponse :definition-)
      "# 示教停车点（采集点）    base_link
string sensor_type         # 雷达（lidar）、精扫相机（camera）
string sensor_id           # 雷达topic  相机分组编号
string directory           # 数据存放目录
---
int32 result             # 0: 成功  非0：失败
string data_file_path    # 采集数据存放路径
")



(provide :dg_msgs/CurrentTeachingStopLocation "974b4b79110aabe8a799f45ec4442dc5")



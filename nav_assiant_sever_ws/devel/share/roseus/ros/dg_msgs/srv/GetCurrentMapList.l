;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::GetCurrentMapList)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'GetCurrentMapList (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::GETCURRENTMAPLIST")
  (make-package "DG_MSGS::GETCURRENTMAPLIST"))
(unless (find-package "DG_MSGS::GETCURRENTMAPLISTREQUEST")
  (make-package "DG_MSGS::GETCURRENTMAPLISTREQUEST"))
(unless (find-package "DG_MSGS::GETCURRENTMAPLISTRESPONSE")
  (make-package "DG_MSGS::GETCURRENTMAPLISTRESPONSE"))

(in-package "ROS")





(defclass dg_msgs::GetCurrentMapListRequest
  :super ros::object
  :slots ())

(defmethod dg_msgs::GetCurrentMapListRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass dg_msgs::GetCurrentMapListResponse
  :super ros::object
  :slots (_result _err_msg _map_names _current_map_name ))

(defmethod dg_msgs::GetCurrentMapListResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:err_msg __err_msg) "")
    ((:map_names __map_names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:current_map_name __current_map_name) "")
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _err_msg (string __err_msg))
   (setq _map_names __map_names)
   (setq _current_map_name (string __current_map_name))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:err_msg
   (&optional __err_msg)
   (if __err_msg (setq _err_msg __err_msg)) _err_msg)
  (:map_names
   (&optional __map_names)
   (if __map_names (setq _map_names __map_names)) _map_names)
  (:current_map_name
   (&optional __current_map_name)
   (if __current_map_name (setq _current_map_name __current_map_name)) _current_map_name)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ;; string _err_msg
    4 (length _err_msg)
    ;; string[] _map_names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _map_names)) 4
    ;; string _current_map_name
    4 (length _current_map_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;; string _err_msg
       (write-long (length _err_msg) s) (princ _err_msg s)
     ;; string[] _map_names
     (write-long (length _map_names) s)
     (dolist (elem _map_names)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string _current_map_name
       (write-long (length _current_map_name) s) (princ _current_map_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _err_msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _err_msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _map_names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _map_names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _map_names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string _current_map_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _current_map_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass dg_msgs::GetCurrentMapList
  :super ros::object
  :slots ())

(setf (get dg_msgs::GetCurrentMapList :md5sum-) "fc0b5e17cf98696526984caa6b27f884")
(setf (get dg_msgs::GetCurrentMapList :datatype-) "dg_msgs/GetCurrentMapList")
(setf (get dg_msgs::GetCurrentMapList :request) dg_msgs::GetCurrentMapListRequest)
(setf (get dg_msgs::GetCurrentMapList :response) dg_msgs::GetCurrentMapListResponse)

(defmethod dg_msgs::GetCurrentMapListRequest
  (:response () (instance dg_msgs::GetCurrentMapListResponse :init)))

(setf (get dg_msgs::GetCurrentMapListRequest :md5sum-) "fc0b5e17cf98696526984caa6b27f884")
(setf (get dg_msgs::GetCurrentMapListRequest :datatype-) "dg_msgs/GetCurrentMapListRequest")
(setf (get dg_msgs::GetCurrentMapListRequest :definition-)
      "# 获取当前地图列表 service name = /get_current_map_list
---
int32 result                # 0: 成功；非0: 失败
string err_msg              # 错误信息
string[] map_names          # 所有地图列表
string current_map_name     # 当前地图名称
")

(setf (get dg_msgs::GetCurrentMapListResponse :md5sum-) "fc0b5e17cf98696526984caa6b27f884")
(setf (get dg_msgs::GetCurrentMapListResponse :datatype-) "dg_msgs/GetCurrentMapListResponse")
(setf (get dg_msgs::GetCurrentMapListResponse :definition-)
      "# 获取当前地图列表 service name = /get_current_map_list
---
int32 result                # 0: 成功；非0: 失败
string err_msg              # 错误信息
string[] map_names          # 所有地图列表
string current_map_name     # 当前地图名称
")



(provide :dg_msgs/GetCurrentMapList "fc0b5e17cf98696526984caa6b27f884")



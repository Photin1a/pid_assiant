;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::SwitchMap)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'SwitchMap (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::SWITCHMAP")
  (make-package "DG_MSGS::SWITCHMAP"))
(unless (find-package "DG_MSGS::SWITCHMAPREQUEST")
  (make-package "DG_MSGS::SWITCHMAPREQUEST"))
(unless (find-package "DG_MSGS::SWITCHMAPRESPONSE")
  (make-package "DG_MSGS::SWITCHMAPRESPONSE"))

(in-package "ROS")





(defclass dg_msgs::SwitchMapRequest
  :super ros::object
  :slots (_map_name ))

(defmethod dg_msgs::SwitchMapRequest
  (:init
   (&key
    ((:map_name __map_name) "")
    )
   (send-super :init)
   (setq _map_name (string __map_name))
   self)
  (:map_name
   (&optional __map_name)
   (if __map_name (setq _map_name __map_name)) _map_name)
  (:serialization-length
   ()
   (+
    ;; string _map_name
    4 (length _map_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _map_name
       (write-long (length _map_name) s) (princ _map_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _map_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass dg_msgs::SwitchMapResponse
  :super ros::object
  :slots (_result _err_msg ))

(defmethod dg_msgs::SwitchMapResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:err_msg __err_msg) "")
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _err_msg (string __err_msg))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:err_msg
   (&optional __err_msg)
   (if __err_msg (setq _err_msg __err_msg)) _err_msg)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ;; string _err_msg
    4 (length _err_msg)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;; string _err_msg
       (write-long (length _err_msg) s) (princ _err_msg s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _err_msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _err_msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass dg_msgs::SwitchMap
  :super ros::object
  :slots ())

(setf (get dg_msgs::SwitchMap :md5sum-) "7e4b71db1cbc0faaf16cd62f4aa73ce0")
(setf (get dg_msgs::SwitchMap :datatype-) "dg_msgs/SwitchMap")
(setf (get dg_msgs::SwitchMap :request) dg_msgs::SwitchMapRequest)
(setf (get dg_msgs::SwitchMap :response) dg_msgs::SwitchMapResponse)

(defmethod dg_msgs::SwitchMapRequest
  (:response () (instance dg_msgs::SwitchMapResponse :init)))

(setf (get dg_msgs::SwitchMapRequest :md5sum-) "7e4b71db1cbc0faaf16cd62f4aa73ce0")
(setf (get dg_msgs::SwitchMapRequest :datatype-) "dg_msgs/SwitchMapRequest")
(setf (get dg_msgs::SwitchMapRequest :definition-)
      "# 切换地图 service name = /switch_map
string map_name             # 要切换的题图名称
---
int32 result                # 0: 成功；非0: 失败
string err_msg              # 错误信息
")

(setf (get dg_msgs::SwitchMapResponse :md5sum-) "7e4b71db1cbc0faaf16cd62f4aa73ce0")
(setf (get dg_msgs::SwitchMapResponse :datatype-) "dg_msgs/SwitchMapResponse")
(setf (get dg_msgs::SwitchMapResponse :definition-)
      "# 切换地图 service name = /switch_map
string map_name             # 要切换的题图名称
---
int32 result                # 0: 成功；非0: 失败
string err_msg              # 错误信息
")



(provide :dg_msgs/SwitchMap "7e4b71db1cbc0faaf16cd62f4aa73ce0")



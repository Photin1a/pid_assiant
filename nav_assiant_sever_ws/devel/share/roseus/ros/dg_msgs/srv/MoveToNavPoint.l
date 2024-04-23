;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::MoveToNavPoint)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'MoveToNavPoint (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::MOVETONAVPOINT")
  (make-package "DG_MSGS::MOVETONAVPOINT"))
(unless (find-package "DG_MSGS::MOVETONAVPOINTREQUEST")
  (make-package "DG_MSGS::MOVETONAVPOINTREQUEST"))
(unless (find-package "DG_MSGS::MOVETONAVPOINTRESPONSE")
  (make-package "DG_MSGS::MOVETONAVPOINTRESPONSE"))

(in-package "ROS")





(defclass dg_msgs::MoveToNavPointRequest
  :super ros::object
  :slots (_distance _check_state ))

(defmethod dg_msgs::MoveToNavPointRequest
  (:init
   (&key
    ((:distance __distance) 0.0)
    ((:check_state __check_state) nil)
    )
   (send-super :init)
   (setq _distance (float __distance))
   (setq _check_state __check_state)
   self)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:check_state
   (&optional __check_state)
   (if __check_state (setq _check_state __check_state)) _check_state)
  (:serialization-length
   ()
   (+
    ;; float32 _distance
    4
    ;; bool _check_state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _check_state
       (if _check_state (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _distance
     (setq _distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _check_state
     (setq _check_state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass dg_msgs::MoveToNavPointResponse
  :super ros::object
  :slots (_result _error_msgs ))

(defmethod dg_msgs::MoveToNavPointResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:error_msgs __error_msgs) "")
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _error_msgs (string __error_msgs))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:error_msgs
   (&optional __error_msgs)
   (if __error_msgs (setq _error_msgs __error_msgs)) _error_msgs)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ;; string _error_msgs
    4 (length _error_msgs)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;; string _error_msgs
       (write-long (length _error_msgs) s) (princ _error_msgs s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _error_msgs
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _error_msgs (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass dg_msgs::MoveToNavPoint
  :super ros::object
  :slots ())

(setf (get dg_msgs::MoveToNavPoint :md5sum-) "6cf0632649534b6bf5571e33bbfdeb01")
(setf (get dg_msgs::MoveToNavPoint :datatype-) "dg_msgs/MoveToNavPoint")
(setf (get dg_msgs::MoveToNavPoint :request) dg_msgs::MoveToNavPointRequest)
(setf (get dg_msgs::MoveToNavPoint :response) dg_msgs::MoveToNavPointResponse)

(defmethod dg_msgs::MoveToNavPointRequest
  (:response () (instance dg_msgs::MoveToNavPointResponse :init)))

(setf (get dg_msgs::MoveToNavPointRequest :md5sum-) "6cf0632649534b6bf5571e33bbfdeb01")
(setf (get dg_msgs::MoveToNavPointRequest :datatype-) "dg_msgs/MoveToNavPointRequest")
(setf (get dg_msgs::MoveToNavPointRequest :definition-)
      "float32 distance            # 站点导航模式下移动距离，> 0 向前，< 0 向后
bool check_state            # 是否要求机械臂必须要在home点：true底盘运动前机械臂必须要在home位，否则直接返回运动失败；false则不对机械臂进行检查，完全信任人工操作
---
int32 result                # 0: 成功  非0：失败
string error_msgs           # 错误信息
")

(setf (get dg_msgs::MoveToNavPointResponse :md5sum-) "6cf0632649534b6bf5571e33bbfdeb01")
(setf (get dg_msgs::MoveToNavPointResponse :datatype-) "dg_msgs/MoveToNavPointResponse")
(setf (get dg_msgs::MoveToNavPointResponse :definition-)
      "float32 distance            # 站点导航模式下移动距离，> 0 向前，< 0 向后
bool check_state            # 是否要求机械臂必须要在home点：true底盘运动前机械臂必须要在home位，否则直接返回运动失败；false则不对机械臂进行检查，完全信任人工操作
---
int32 result                # 0: 成功  非0：失败
string error_msgs           # 错误信息
")



(provide :dg_msgs/MoveToNavPoint "6cf0632649534b6bf5571e33bbfdeb01")



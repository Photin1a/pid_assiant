;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::UniversalStateInfo)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'UniversalStateInfo (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::UNIVERSALSTATEINFO")
  (make-package "DG_MSGS::UNIVERSALSTATEINFO"))

(in-package "ROS")
;;//! \htmlinclude UniversalStateInfo.msg.html


(defclass dg_msgs::UniversalStateInfo
  :super ros::object
  :slots (_state_index _node_name _state_msgs ))

(defmethod dg_msgs::UniversalStateInfo
  (:init
   (&key
    ((:state_index __state_index) 0)
    ((:node_name __node_name) "")
    ((:state_msgs __state_msgs) "")
    )
   (send-super :init)
   (setq _state_index (round __state_index))
   (setq _node_name (string __node_name))
   (setq _state_msgs (string __state_msgs))
   self)
  (:state_index
   (&optional __state_index)
   (if __state_index (setq _state_index __state_index)) _state_index)
  (:node_name
   (&optional __node_name)
   (if __node_name (setq _node_name __node_name)) _node_name)
  (:state_msgs
   (&optional __state_msgs)
   (if __state_msgs (setq _state_msgs __state_msgs)) _state_msgs)
  (:serialization-length
   ()
   (+
    ;; int32 _state_index
    4
    ;; string _node_name
    4 (length _node_name)
    ;; string _state_msgs
    4 (length _state_msgs)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _state_index
       (write-long _state_index s)
     ;; string _node_name
       (write-long (length _node_name) s) (princ _node_name s)
     ;; string _state_msgs
       (write-long (length _state_msgs) s) (princ _state_msgs s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _state_index
     (setq _state_index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _node_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _node_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _state_msgs
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _state_msgs (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get dg_msgs::UniversalStateInfo :md5sum-) "77e9811d2f2bef9dda3fcadf75d60619")
(setf (get dg_msgs::UniversalStateInfo :datatype-) "dg_msgs/UniversalStateInfo")
(setf (get dg_msgs::UniversalStateInfo :definition-)
      "int32 state_index   # 状态索引值：统一0是正常，其他数字自定义
string node_name    # 当前节点名
string state_msgs   # 附加信息，相当于additional_msgs
")



(provide :dg_msgs/UniversalStateInfo "77e9811d2f2bef9dda3fcadf75d60619")



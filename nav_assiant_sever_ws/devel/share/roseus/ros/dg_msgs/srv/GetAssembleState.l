;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::GetAssembleState)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'GetAssembleState (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::GETASSEMBLESTATE")
  (make-package "DG_MSGS::GETASSEMBLESTATE"))
(unless (find-package "DG_MSGS::GETASSEMBLESTATEREQUEST")
  (make-package "DG_MSGS::GETASSEMBLESTATEREQUEST"))
(unless (find-package "DG_MSGS::GETASSEMBLESTATERESPONSE")
  (make-package "DG_MSGS::GETASSEMBLESTATERESPONSE"))

(in-package "ROS")





(defclass dg_msgs::GetAssembleStateRequest
  :super ros::object
  :slots (_assemble_index ))

(defmethod dg_msgs::GetAssembleStateRequest
  (:init
   (&key
    ((:assemble_index __assemble_index) "")
    )
   (send-super :init)
   (setq _assemble_index (string __assemble_index))
   self)
  (:assemble_index
   (&optional __assemble_index)
   (if __assemble_index (setq _assemble_index __assemble_index)) _assemble_index)
  (:serialization-length
   ()
   (+
    ;; string _assemble_index
    4 (length _assemble_index)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _assemble_index
       (write-long (length _assemble_index) s) (princ _assemble_index s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _assemble_index
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _assemble_index (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass dg_msgs::GetAssembleStateResponse
  :super ros::object
  :slots (_state_ ))

(defmethod dg_msgs::GetAssembleStateResponse
  (:init
   (&key
    ((:state_ __state_) (instance dg_msgs::AssembleState :init))
    )
   (send-super :init)
   (setq _state_ __state_)
   self)
  (:state_
   (&rest __state_)
   (if (keywordp (car __state_))
       (send* _state_ __state_)
     (progn
       (if __state_ (setq _state_ (car __state_)))
       _state_)))
  (:serialization-length
   ()
   (+
    ;; dg_msgs/AssembleState _state_
    (send _state_ :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; dg_msgs/AssembleState _state_
       (send _state_ :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; dg_msgs/AssembleState _state_
     (send _state_ :deserialize buf ptr-) (incf ptr- (send _state_ :serialization-length))
   ;;
   self)
  )

(defclass dg_msgs::GetAssembleState
  :super ros::object
  :slots ())

(setf (get dg_msgs::GetAssembleState :md5sum-) "f047080dfaa590aae4f29539db7e0f2b")
(setf (get dg_msgs::GetAssembleState :datatype-) "dg_msgs/GetAssembleState")
(setf (get dg_msgs::GetAssembleState :request) dg_msgs::GetAssembleStateRequest)
(setf (get dg_msgs::GetAssembleState :response) dg_msgs::GetAssembleStateResponse)

(defmethod dg_msgs::GetAssembleStateRequest
  (:response () (instance dg_msgs::GetAssembleStateResponse :init)))

(setf (get dg_msgs::GetAssembleStateRequest :md5sum-) "f047080dfaa590aae4f29539db7e0f2b")
(setf (get dg_msgs::GetAssembleStateRequest :datatype-) "dg_msgs/GetAssembleStateRequest")
(setf (get dg_msgs::GetAssembleStateRequest :definition-)
      "# 获取上装体状态请求
string assemble_index
---
AssembleState state_

================================================================================
MSG: dg_msgs/AssembleState
# 上装箱体状态信息
bool is_emergency           # 是否是急停
bool is_auto                # 是否是自动档
bool is_rescue              # 是否是救援模式
")

(setf (get dg_msgs::GetAssembleStateResponse :md5sum-) "f047080dfaa590aae4f29539db7e0f2b")
(setf (get dg_msgs::GetAssembleStateResponse :datatype-) "dg_msgs/GetAssembleStateResponse")
(setf (get dg_msgs::GetAssembleStateResponse :definition-)
      "# 获取上装体状态请求
string assemble_index
---
AssembleState state_

================================================================================
MSG: dg_msgs/AssembleState
# 上装箱体状态信息
bool is_emergency           # 是否是急停
bool is_auto                # 是否是自动档
bool is_rescue              # 是否是救援模式
")



(provide :dg_msgs/GetAssembleState "f047080dfaa590aae4f29539db7e0f2b")



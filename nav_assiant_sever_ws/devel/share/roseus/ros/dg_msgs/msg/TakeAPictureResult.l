;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::TakeAPictureResult)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'TakeAPictureResult (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::TAKEAPICTURERESULT")
  (make-package "DG_MSGS::TAKEAPICTURERESULT"))

(in-package "ROS")
;;//! \htmlinclude TakeAPictureResult.msg.html


(defclass dg_msgs::TakeAPictureResult
  :super ros::object
  :slots (_pointCloud _rgb _depth _state_info ))

(defmethod dg_msgs::TakeAPictureResult
  (:init
   (&key
    ((:pointCloud __pointCloud) "")
    ((:rgb __rgb) "")
    ((:depth __depth) "")
    ((:state_info __state_info) (instance dg_msgs::UniversalStateInfo :init))
    )
   (send-super :init)
   (setq _pointCloud (string __pointCloud))
   (setq _rgb (string __rgb))
   (setq _depth (string __depth))
   (setq _state_info __state_info)
   self)
  (:pointCloud
   (&optional __pointCloud)
   (if __pointCloud (setq _pointCloud __pointCloud)) _pointCloud)
  (:rgb
   (&optional __rgb)
   (if __rgb (setq _rgb __rgb)) _rgb)
  (:depth
   (&optional __depth)
   (if __depth (setq _depth __depth)) _depth)
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
    ;; string _pointCloud
    4 (length _pointCloud)
    ;; string _rgb
    4 (length _rgb)
    ;; string _depth
    4 (length _depth)
    ;; dg_msgs/UniversalStateInfo _state_info
    (send _state_info :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _pointCloud
       (write-long (length _pointCloud) s) (princ _pointCloud s)
     ;; string _rgb
       (write-long (length _rgb) s) (princ _rgb s)
     ;; string _depth
       (write-long (length _depth) s) (princ _depth s)
     ;; dg_msgs/UniversalStateInfo _state_info
       (send _state_info :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _pointCloud
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _pointCloud (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _rgb
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _rgb (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _depth
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _depth (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; dg_msgs/UniversalStateInfo _state_info
     (send _state_info :deserialize buf ptr-) (incf ptr- (send _state_info :serialization-length))
   ;;
   self)
  )

(setf (get dg_msgs::TakeAPictureResult :md5sum-) "43a9f96505994e95f9f117bf4737a0c7")
(setf (get dg_msgs::TakeAPictureResult :datatype-) "dg_msgs/TakeAPictureResult")
(setf (get dg_msgs::TakeAPictureResult :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#result definition
string pointCloud
string rgb
string depth
UniversalStateInfo  state_info
  
# 0 表示成功；
# error: 1 表示点云存储失败
#        2 表示rgb图像存储失败
#        3 表示深度图存储失败

================================================================================
MSG: dg_msgs/UniversalStateInfo
int32 state_index   # 状态索引值：统一0是正常，其他数字自定义
string node_name    # 当前节点名
string state_msgs   # 附加信息，相当于additional_msgs
")



(provide :dg_msgs/TakeAPictureResult "43a9f96505994e95f9f117bf4737a0c7")



;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::AcquisitionTaskResult)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'AcquisitionTaskResult (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::ACQUISITIONTASKRESULT")
  (make-package "DG_MSGS::ACQUISITIONTASKRESULT"))

(in-package "ROS")
;;//! \htmlinclude AcquisitionTaskResult.msg.html


(defclass dg_msgs::AcquisitionTaskResult
  :super ros::object
  :slots (_id _results _err_msg ))

(defmethod dg_msgs::AcquisitionTaskResult
  (:init
   (&key
    ((:id __id) "")
    ((:results __results) (let (r) (dotimes (i 0) (push (instance dg_msgs::ImageResult :init) r)) r))
    ((:err_msg __err_msg) "")
    )
   (send-super :init)
   (setq _id (string __id))
   (setq _results __results)
   (setq _err_msg (string __err_msg))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:results
   (&rest __results)
   (if (keywordp (car __results))
       (send* _results __results)
     (progn
       (if __results (setq _results (car __results)))
       _results)))
  (:err_msg
   (&optional __err_msg)
   (if __err_msg (setq _err_msg __err_msg)) _err_msg)
  (:serialization-length
   ()
   (+
    ;; string _id
    4 (length _id)
    ;; dg_msgs/ImageResult[] _results
    (apply #'+ (send-all _results :serialization-length)) 4
    ;; string _err_msg
    4 (length _err_msg)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; dg_msgs/ImageResult[] _results
     (write-long (length _results) s)
     (dolist (elem _results)
       (send elem :serialize s)
       )
     ;; string _err_msg
       (write-long (length _err_msg) s) (princ _err_msg s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; dg_msgs/ImageResult[] _results
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _results (let (r) (dotimes (i n) (push (instance dg_msgs::ImageResult :init) r)) r))
     (dolist (elem- _results)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string _err_msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _err_msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get dg_msgs::AcquisitionTaskResult :md5sum-) "0f410bb1b8bcf6c3bbe6b9383417671f")
(setf (get dg_msgs::AcquisitionTaskResult :datatype-) "dg_msgs/AcquisitionTaskResult")
(setf (get dg_msgs::AcquisitionTaskResult :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#result definition
string id
ImageResult[] results
string err_msg

================================================================================
MSG: dg_msgs/ImageResult
string id
int32 result        # 拍照结果 0: 成功  非0：失败
string gray         # 灰度图路径
string rgb          # 彩色图路径
string depth        # 深度图路径
string point_cloud  # 点云路径
float32[] intrinsic # 相机内参
")



(provide :dg_msgs/AcquisitionTaskResult "0f410bb1b8bcf6c3bbe6b9383417671f")



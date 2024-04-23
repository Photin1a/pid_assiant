;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::ImageResult)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'ImageResult (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::IMAGERESULT")
  (make-package "DG_MSGS::IMAGERESULT"))

(in-package "ROS")
;;//! \htmlinclude ImageResult.msg.html


(defclass dg_msgs::ImageResult
  :super ros::object
  :slots (_id _result _gray _rgb _depth _point_cloud _intrinsic ))

(defmethod dg_msgs::ImageResult
  (:init
   (&key
    ((:id __id) "")
    ((:result __result) 0)
    ((:gray __gray) "")
    ((:rgb __rgb) "")
    ((:depth __depth) "")
    ((:point_cloud __point_cloud) "")
    ((:intrinsic __intrinsic) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _id (string __id))
   (setq _result (round __result))
   (setq _gray (string __gray))
   (setq _rgb (string __rgb))
   (setq _depth (string __depth))
   (setq _point_cloud (string __point_cloud))
   (setq _intrinsic __intrinsic)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:gray
   (&optional __gray)
   (if __gray (setq _gray __gray)) _gray)
  (:rgb
   (&optional __rgb)
   (if __rgb (setq _rgb __rgb)) _rgb)
  (:depth
   (&optional __depth)
   (if __depth (setq _depth __depth)) _depth)
  (:point_cloud
   (&optional __point_cloud)
   (if __point_cloud (setq _point_cloud __point_cloud)) _point_cloud)
  (:intrinsic
   (&optional __intrinsic)
   (if __intrinsic (setq _intrinsic __intrinsic)) _intrinsic)
  (:serialization-length
   ()
   (+
    ;; string _id
    4 (length _id)
    ;; int32 _result
    4
    ;; string _gray
    4 (length _gray)
    ;; string _rgb
    4 (length _rgb)
    ;; string _depth
    4 (length _depth)
    ;; string _point_cloud
    4 (length _point_cloud)
    ;; float32[] _intrinsic
    (* 4    (length _intrinsic)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; int32 _result
       (write-long _result s)
     ;; string _gray
       (write-long (length _gray) s) (princ _gray s)
     ;; string _rgb
       (write-long (length _rgb) s) (princ _rgb s)
     ;; string _depth
       (write-long (length _depth) s) (princ _depth s)
     ;; string _point_cloud
       (write-long (length _point_cloud) s) (princ _point_cloud s)
     ;; float32[] _intrinsic
     (write-long (length _intrinsic) s)
     (dotimes (i (length _intrinsic))
       (sys::poke (elt _intrinsic i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _gray
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _gray (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _rgb
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _rgb (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _depth
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _depth (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _point_cloud
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _point_cloud (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32[] _intrinsic
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _intrinsic (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _intrinsic i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get dg_msgs::ImageResult :md5sum-) "929c9d255c2b3abf0da93c2483ac7bec")
(setf (get dg_msgs::ImageResult :datatype-) "dg_msgs/ImageResult")
(setf (get dg_msgs::ImageResult :definition-)
      "string id
int32 result        # 拍照结果 0: 成功  非0：失败
string gray         # 灰度图路径
string rgb          # 彩色图路径
string depth        # 深度图路径
string point_cloud  # 点云路径
float32[] intrinsic # 相机内参
")



(provide :dg_msgs/ImageResult "929c9d255c2b3abf0da93c2483ac7bec")



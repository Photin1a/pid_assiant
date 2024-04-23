;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::TakePictures)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'TakePictures (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::TAKEPICTURES")
  (make-package "DG_MSGS::TAKEPICTURES"))
(unless (find-package "DG_MSGS::TAKEPICTURESREQUEST")
  (make-package "DG_MSGS::TAKEPICTURESREQUEST"))
(unless (find-package "DG_MSGS::TAKEPICTURESRESPONSE")
  (make-package "DG_MSGS::TAKEPICTURESRESPONSE"))

(in-package "ROS")





(defclass dg_msgs::TakePicturesRequest
  :super ros::object
  :slots (_goal _directory ))

(defmethod dg_msgs::TakePicturesRequest
  (:init
   (&key
    ((:goal __goal) (instance dg_msgs::ImageGoal :init))
    ((:directory __directory) "")
    )
   (send-super :init)
   (setq _goal __goal)
   (setq _directory (string __directory))
   self)
  (:goal
   (&rest __goal)
   (if (keywordp (car __goal))
       (send* _goal __goal)
     (progn
       (if __goal (setq _goal (car __goal)))
       _goal)))
  (:directory
   (&optional __directory)
   (if __directory (setq _directory __directory)) _directory)
  (:serialization-length
   ()
   (+
    ;; dg_msgs/ImageGoal _goal
    (send _goal :serialization-length)
    ;; string _directory
    4 (length _directory)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; dg_msgs/ImageGoal _goal
       (send _goal :serialize s)
     ;; string _directory
       (write-long (length _directory) s) (princ _directory s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; dg_msgs/ImageGoal _goal
     (send _goal :deserialize buf ptr-) (incf ptr- (send _goal :serialization-length))
   ;; string _directory
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _directory (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass dg_msgs::TakePicturesResponse
  :super ros::object
  :slots (_result ))

(defmethod dg_msgs::TakePicturesResponse
  (:init
   (&key
    ((:result __result) (instance dg_msgs::ImageResult :init))
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&rest __result)
   (if (keywordp (car __result))
       (send* _result __result)
     (progn
       (if __result (setq _result (car __result)))
       _result)))
  (:serialization-length
   ()
   (+
    ;; dg_msgs/ImageResult _result
    (send _result :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; dg_msgs/ImageResult _result
       (send _result :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; dg_msgs/ImageResult _result
     (send _result :deserialize buf ptr-) (incf ptr- (send _result :serialization-length))
   ;;
   self)
  )

(defclass dg_msgs::TakePictures
  :super ros::object
  :slots ())

(setf (get dg_msgs::TakePictures :md5sum-) "d49927ea178ba001349d7f69d4338561")
(setf (get dg_msgs::TakePictures :datatype-) "dg_msgs/TakePictures")
(setf (get dg_msgs::TakePictures :request) dg_msgs::TakePicturesRequest)
(setf (get dg_msgs::TakePictures :response) dg_msgs::TakePicturesResponse)

(defmethod dg_msgs::TakePicturesRequest
  (:response () (instance dg_msgs::TakePicturesResponse :init)))

(setf (get dg_msgs::TakePicturesRequest :md5sum-) "d49927ea178ba001349d7f69d4338561")
(setf (get dg_msgs::TakePicturesRequest :datatype-) "dg_msgs/TakePicturesRequest")
(setf (get dg_msgs::TakePicturesRequest :definition-)
      "ImageGoal goal
string directory        # 图片存放目录

================================================================================
MSG: dg_msgs/ImageGoal
string id          # ID
string number     # 设备编号
int32 types     # 拍照类型，灰度为`1`，彩色为`2`，深度为`4`，点云为`8`，多种类型时按位相与
---
ImageResult result


================================================================================
MSG: dg_msgs/ImageResult
string id
int32 result        # 拍照结果 0: 成功  非0：失败
string gray         # 灰度图路径
string rgb          # 彩色图路径
string depth        # 深度图路径
string point_cloud  # 点云路径
")

(setf (get dg_msgs::TakePicturesResponse :md5sum-) "d49927ea178ba001349d7f69d4338561")
(setf (get dg_msgs::TakePicturesResponse :datatype-) "dg_msgs/TakePicturesResponse")
(setf (get dg_msgs::TakePicturesResponse :definition-)
      "ImageGoal goal
string directory        # 图片存放目录

================================================================================
MSG: dg_msgs/ImageGoal
string id          # ID
string number     # 设备编号
int32 types     # 拍照类型，灰度为`1`，彩色为`2`，深度为`4`，点云为`8`，多种类型时按位相与
---
ImageResult result


================================================================================
MSG: dg_msgs/ImageResult
string id
int32 result        # 拍照结果 0: 成功  非0：失败
string gray         # 灰度图路径
string rgb          # 彩色图路径
string depth        # 深度图路径
string point_cloud  # 点云路径
")



(provide :dg_msgs/TakePictures "d49927ea178ba001349d7f69d4338561")



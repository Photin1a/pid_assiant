;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::TakeAPicture)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'TakeAPicture (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::TAKEAPICTURE")
  (make-package "DG_MSGS::TAKEAPICTURE"))
(unless (find-package "DG_MSGS::TAKEAPICTUREREQUEST")
  (make-package "DG_MSGS::TAKEAPICTUREREQUEST"))
(unless (find-package "DG_MSGS::TAKEAPICTURERESPONSE")
  (make-package "DG_MSGS::TAKEAPICTURERESPONSE"))

(in-package "ROS")





(defclass dg_msgs::TakeAPictureRequest
  :super ros::object
  :slots (_pointCloud _rgb _depth _selection _image_type ))

(defmethod dg_msgs::TakeAPictureRequest
  (:init
   (&key
    ((:pointCloud __pointCloud) "")
    ((:rgb __rgb) "")
    ((:depth __depth) "")
    ((:selection __selection) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:image_type __image_type) 0)
    )
   (send-super :init)
   (setq _pointCloud (string __pointCloud))
   (setq _rgb (string __rgb))
   (setq _depth (string __depth))
   (setq _selection __selection)
   (setq _image_type (round __image_type))
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
  (:selection
   (&optional __selection)
   (if __selection (setq _selection __selection)) _selection)
  (:image_type
   (&optional __image_type)
   (if __image_type (setq _image_type __image_type)) _image_type)
  (:serialization-length
   ()
   (+
    ;; string _pointCloud
    4 (length _pointCloud)
    ;; string _rgb
    4 (length _rgb)
    ;; string _depth
    4 (length _depth)
    ;; bool[] _selection
    (* 1    (length _selection)) 4
    ;; int32 _image_type
    4
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
     ;; bool[] _selection
     (write-long (length _selection) s)
     (dotimes (i (length _selection))
       (if (elt _selection i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; int32 _image_type
       (write-long _image_type s)
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
   ;; bool[] _selection
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _selection (make-list n))
     (dotimes (i n)
     (setf (elt _selection i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; int32 _image_type
     (setq _image_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dg_msgs::TakeAPictureResponse
  :super ros::object
  :slots (_pointCloud _rgb _depth _state_info ))

(defmethod dg_msgs::TakeAPictureResponse
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

(defclass dg_msgs::TakeAPicture
  :super ros::object
  :slots ())

(setf (get dg_msgs::TakeAPicture :md5sum-) "7b55008856d595d72ce46bf9f46f37fd")
(setf (get dg_msgs::TakeAPicture :datatype-) "dg_msgs/TakeAPicture")
(setf (get dg_msgs::TakeAPicture :request) dg_msgs::TakeAPictureRequest)
(setf (get dg_msgs::TakeAPicture :response) dg_msgs::TakeAPictureResponse)

(defmethod dg_msgs::TakeAPictureRequest
  (:response () (instance dg_msgs::TakeAPictureResponse :init)))

(setf (get dg_msgs::TakeAPictureRequest :md5sum-) "7b55008856d595d72ce46bf9f46f37fd")
(setf (get dg_msgs::TakeAPictureRequest :datatype-) "dg_msgs/TakeAPictureRequest")
(setf (get dg_msgs::TakeAPictureRequest :definition-)
      "#goal definition
string pointCloud   # 点云存储路径
string rgb          # RGB 图像存储路径
string depth        # 深度图存储路径
bool[] selection    # 按照pointCloud, rgb, depth顺序输入是否需要对应的数据
int32  image_type   # 对图像处理类型，0-正常，1-镜像
---
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
")

(setf (get dg_msgs::TakeAPictureResponse :md5sum-) "7b55008856d595d72ce46bf9f46f37fd")
(setf (get dg_msgs::TakeAPictureResponse :datatype-) "dg_msgs/TakeAPictureResponse")
(setf (get dg_msgs::TakeAPictureResponse :definition-)
      "#goal definition
string pointCloud   # 点云存储路径
string rgb          # RGB 图像存储路径
string depth        # 深度图存储路径
bool[] selection    # 按照pointCloud, rgb, depth顺序输入是否需要对应的数据
int32  image_type   # 对图像处理类型，0-正常，1-镜像
---
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
")



(provide :dg_msgs/TakeAPicture "7b55008856d595d72ce46bf9f46f37fd")



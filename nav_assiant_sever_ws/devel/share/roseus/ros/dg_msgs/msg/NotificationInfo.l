;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::NotificationInfo)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'NotificationInfo (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::NOTIFICATIONINFO")
  (make-package "DG_MSGS::NOTIFICATIONINFO"))

(in-package "ROS")
;;//! \htmlinclude NotificationInfo.msg.html


(defclass dg_msgs::NotificationInfo
  :super ros::object
  :slots (_type _level _title _message _data _datetime ))

(defmethod dg_msgs::NotificationInfo
  (:init
   (&key
    ((:type __type) 0)
    ((:level __level) "")
    ((:title __title) "")
    ((:message __message) "")
    ((:data __data) "")
    ((:datetime __datetime) 0)
    )
   (send-super :init)
   (setq _type (round __type))
   (setq _level (string __level))
   (setq _title (string __title))
   (setq _message (string __message))
   (setq _data (string __data))
   (setq _datetime (round __datetime))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:level
   (&optional __level)
   (if __level (setq _level __level)) _level)
  (:title
   (&optional __title)
   (if __title (setq _title __title)) _title)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:datetime
   (&optional __datetime)
   (if __datetime (setq _datetime __datetime)) _datetime)
  (:serialization-length
   ()
   (+
    ;; int32 _type
    4
    ;; string _level
    4 (length _level)
    ;; string _title
    4 (length _title)
    ;; string _message
    4 (length _message)
    ;; string _data
    4 (length _data)
    ;; uint64 _datetime
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _type
       (write-long _type s)
     ;; string _level
       (write-long (length _level) s) (princ _level s)
     ;; string _title
       (write-long (length _title) s) (princ _title s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;; uint64 _datetime
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _datetime (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _datetime) (= (length (_datetime . bv)) 2)) ;; bignum
              (write-long (ash (elt (_datetime . bv) 0) 0) s)
              (write-long (ash (elt (_datetime . bv) 1) -1) s))
             ((and (class _datetime) (= (length (_datetime . bv)) 1)) ;; big1
              (write-long (elt (_datetime . bv) 0) s)
              (write-long (if (>= _datetime 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _datetime s)(write-long (if (>= _datetime 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _type
     (setq _type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _level
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _level (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _title
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _title (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint64 _datetime
     
#+(or :alpha :irix6 :x86_64)
      (setf _datetime (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _datetime (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get dg_msgs::NotificationInfo :md5sum-) "e515c038beb10a6a0ef7c41f0cd3fe77")
(setf (get dg_msgs::NotificationInfo :datatype-) "dg_msgs/NotificationInfo")
(setf (get dg_msgs::NotificationInfo :definition-)
      "int32 type          # 类型编号，用于唯一区分每种通知
string level         # 等级，包含 verbose, normal, warning, critical
string title        # 标题
string message      # 通知文字描述
string data         # 通知数据，数据内容由通知类型决定，可能为json，base64等多种格式
uint64 datetime     # 时间
")



(provide :dg_msgs/NotificationInfo "e515c038beb10a6a0ef7c41f0cd3fe77")



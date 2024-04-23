;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::GetSetLightBarColor)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'GetSetLightBarColor (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::GETSETLIGHTBARCOLOR")
  (make-package "DG_MSGS::GETSETLIGHTBARCOLOR"))
(unless (find-package "DG_MSGS::GETSETLIGHTBARCOLORREQUEST")
  (make-package "DG_MSGS::GETSETLIGHTBARCOLORREQUEST"))
(unless (find-package "DG_MSGS::GETSETLIGHTBARCOLORRESPONSE")
  (make-package "DG_MSGS::GETSETLIGHTBARCOLORRESPONSE"))

(in-package "ROS")





(defclass dg_msgs::GetSetLightBarColorRequest
  :super ros::object
  :slots (_ligth_bar_color ))

(defmethod dg_msgs::GetSetLightBarColorRequest
  (:init
   (&key
    ((:ligth_bar_color __ligth_bar_color) "")
    )
   (send-super :init)
   (setq _ligth_bar_color (string __ligth_bar_color))
   self)
  (:ligth_bar_color
   (&optional __ligth_bar_color)
   (if __ligth_bar_color (setq _ligth_bar_color __ligth_bar_color)) _ligth_bar_color)
  (:serialization-length
   ()
   (+
    ;; string _ligth_bar_color
    4 (length _ligth_bar_color)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _ligth_bar_color
       (write-long (length _ligth_bar_color) s) (princ _ligth_bar_color s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _ligth_bar_color
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ligth_bar_color (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass dg_msgs::GetSetLightBarColorResponse
  :super ros::object
  :slots (_current_light_bar_color ))

(defmethod dg_msgs::GetSetLightBarColorResponse
  (:init
   (&key
    ((:current_light_bar_color __current_light_bar_color) "")
    )
   (send-super :init)
   (setq _current_light_bar_color (string __current_light_bar_color))
   self)
  (:current_light_bar_color
   (&optional __current_light_bar_color)
   (if __current_light_bar_color (setq _current_light_bar_color __current_light_bar_color)) _current_light_bar_color)
  (:serialization-length
   ()
   (+
    ;; string _current_light_bar_color
    4 (length _current_light_bar_color)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _current_light_bar_color
       (write-long (length _current_light_bar_color) s) (princ _current_light_bar_color s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _current_light_bar_color
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _current_light_bar_color (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass dg_msgs::GetSetLightBarColor
  :super ros::object
  :slots ())

(setf (get dg_msgs::GetSetLightBarColor :md5sum-) "1a018bf81959926990f6f2e6ba2d8144")
(setf (get dg_msgs::GetSetLightBarColor :datatype-) "dg_msgs/GetSetLightBarColor")
(setf (get dg_msgs::GetSetLightBarColor :request) dg_msgs::GetSetLightBarColorRequest)
(setf (get dg_msgs::GetSetLightBarColor :response) dg_msgs::GetSetLightBarColorResponse)

(defmethod dg_msgs::GetSetLightBarColorRequest
  (:response () (instance dg_msgs::GetSetLightBarColorResponse :init)))

(setf (get dg_msgs::GetSetLightBarColorRequest :md5sum-) "1a018bf81959926990f6f2e6ba2d8144")
(setf (get dg_msgs::GetSetLightBarColorRequest :datatype-) "dg_msgs/GetSetLightBarColorRequest")
(setf (get dg_msgs::GetSetLightBarColorRequest :definition-)
      "# 获取/设置灯带颜色的服务
string ligth_bar_color          # 灯带颜色，如果是空字符串，则返回当前灯带颜色 ｜ 格式：color format 如：red flash 红灯闪烁, red form 红灯常亮，允许不区分大小写
# 艾智威灯带支持的以下几种状态
# none          无显示
# green breath  绿色呼吸
# green form    绿色常亮
# left turn     左转
# right turn    右转
# blue flash    蓝色闪烁
# red form      红色常亮
# red flash     红色闪烁
# yellow form   黄色常亮
# yellow flash  黄色闪烁
# white form    白色常亮
# green flash   绿色闪烁
# skyblue form  蓝色常亮
# purple form   紫色闪烁
# yellow breath 黄色呼吸

---
string current_light_bar_color  # 当前灯带颜色
")

(setf (get dg_msgs::GetSetLightBarColorResponse :md5sum-) "1a018bf81959926990f6f2e6ba2d8144")
(setf (get dg_msgs::GetSetLightBarColorResponse :datatype-) "dg_msgs/GetSetLightBarColorResponse")
(setf (get dg_msgs::GetSetLightBarColorResponse :definition-)
      "# 获取/设置灯带颜色的服务
string ligth_bar_color          # 灯带颜色，如果是空字符串，则返回当前灯带颜色 ｜ 格式：color format 如：red flash 红灯闪烁, red form 红灯常亮，允许不区分大小写
# 艾智威灯带支持的以下几种状态
# none          无显示
# green breath  绿色呼吸
# green form    绿色常亮
# left turn     左转
# right turn    右转
# blue flash    蓝色闪烁
# red form      红色常亮
# red flash     红色闪烁
# yellow form   黄色常亮
# yellow flash  黄色闪烁
# white form    白色常亮
# green flash   绿色闪烁
# skyblue form  蓝色常亮
# purple form   紫色闪烁
# yellow breath 黄色呼吸

---
string current_light_bar_color  # 当前灯带颜色
")



(provide :dg_msgs/GetSetLightBarColor "1a018bf81959926990f6f2e6ba2d8144")



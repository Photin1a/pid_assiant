
(cl:in-package :asdf)

(defsystem "photinia_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "PIDParams_srv" :depends-on ("_package_PIDParams_srv"))
    (:file "_package_PIDParams_srv" :depends-on ("_package"))
  ))

(cl:in-package :asdf)

(defsystem "photinia_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "MoveToGoalAction" :depends-on ("_package_MoveToGoalAction"))
    (:file "_package_MoveToGoalAction" :depends-on ("_package"))
    (:file "MoveToGoalActionFeedback" :depends-on ("_package_MoveToGoalActionFeedback"))
    (:file "_package_MoveToGoalActionFeedback" :depends-on ("_package"))
    (:file "MoveToGoalActionGoal" :depends-on ("_package_MoveToGoalActionGoal"))
    (:file "_package_MoveToGoalActionGoal" :depends-on ("_package"))
    (:file "MoveToGoalActionResult" :depends-on ("_package_MoveToGoalActionResult"))
    (:file "_package_MoveToGoalActionResult" :depends-on ("_package"))
    (:file "MoveToGoalFeedback" :depends-on ("_package_MoveToGoalFeedback"))
    (:file "_package_MoveToGoalFeedback" :depends-on ("_package"))
    (:file "MoveToGoalGoal" :depends-on ("_package_MoveToGoalGoal"))
    (:file "_package_MoveToGoalGoal" :depends-on ("_package"))
    (:file "MoveToGoalResult" :depends-on ("_package_MoveToGoalResult"))
    (:file "_package_MoveToGoalResult" :depends-on ("_package"))
    (:file "PIDParams" :depends-on ("_package_PIDParams"))
    (:file "_package_PIDParams" :depends-on ("_package"))
  ))
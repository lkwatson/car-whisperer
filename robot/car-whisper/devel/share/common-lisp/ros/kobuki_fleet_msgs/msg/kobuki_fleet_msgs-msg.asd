
(cl:in-package :asdf)

(defsystem "kobuki_fleet_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "StateMachineStat" :depends-on ("_package_StateMachineStat"))
    (:file "_package_StateMachineStat" :depends-on ("_package"))
    (:file "Bidding" :depends-on ("_package_Bidding"))
    (:file "_package_Bidding" :depends-on ("_package"))
    (:file "HeartBeat" :depends-on ("_package_HeartBeat"))
    (:file "_package_HeartBeat" :depends-on ("_package"))
    (:file "LocationIdentifier" :depends-on ("_package_LocationIdentifier"))
    (:file "_package_LocationIdentifier" :depends-on ("_package"))
    (:file "SubTask" :depends-on ("_package_SubTask"))
    (:file "_package_SubTask" :depends-on ("_package"))
    (:file "NewTaskList" :depends-on ("_package_NewTaskList"))
    (:file "_package_NewTaskList" :depends-on ("_package"))
    (:file "Task" :depends-on ("_package_Task"))
    (:file "_package_Task" :depends-on ("_package"))
    (:file "SubTaskVector" :depends-on ("_package_SubTaskVector"))
    (:file "_package_SubTaskVector" :depends-on ("_package"))
    (:file "TaskList" :depends-on ("_package_TaskList"))
    (:file "_package_TaskList" :depends-on ("_package"))
    (:file "HeartBeatList" :depends-on ("_package_HeartBeatList"))
    (:file "_package_HeartBeatList" :depends-on ("_package"))
    (:file "ConnectionState" :depends-on ("_package_ConnectionState"))
    (:file "_package_ConnectionState" :depends-on ("_package"))
    (:file "NewTask" :depends-on ("_package_NewTask"))
    (:file "_package_NewTask" :depends-on ("_package"))
    (:file "ManagerTaskGoal" :depends-on ("_package_ManagerTaskGoal"))
    (:file "_package_ManagerTaskGoal" :depends-on ("_package"))
    (:file "ManagerTaskResult" :depends-on ("_package_ManagerTaskResult"))
    (:file "_package_ManagerTaskResult" :depends-on ("_package"))
    (:file "ManagerTaskAction" :depends-on ("_package_ManagerTaskAction"))
    (:file "_package_ManagerTaskAction" :depends-on ("_package"))
    (:file "ManagerTaskActionResult" :depends-on ("_package_ManagerTaskActionResult"))
    (:file "_package_ManagerTaskActionResult" :depends-on ("_package"))
    (:file "ManagerTaskActionGoal" :depends-on ("_package_ManagerTaskActionGoal"))
    (:file "_package_ManagerTaskActionGoal" :depends-on ("_package"))
    (:file "ManagerTaskActionFeedback" :depends-on ("_package_ManagerTaskActionFeedback"))
    (:file "_package_ManagerTaskActionFeedback" :depends-on ("_package"))
    (:file "ManagerTaskFeedback" :depends-on ("_package_ManagerTaskFeedback"))
    (:file "_package_ManagerTaskFeedback" :depends-on ("_package"))
  ))
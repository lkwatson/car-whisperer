
(cl:in-package :asdf)

(defsystem "kobuki_fleet_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :kobuki_fleet_msgs-msg
               :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "GetCurrentTask" :depends-on ("_package_GetCurrentTask"))
    (:file "_package_GetCurrentTask" :depends-on ("_package"))
    (:file "TaskStatus" :depends-on ("_package_TaskStatus"))
    (:file "_package_TaskStatus" :depends-on ("_package"))
    (:file "getInventoryData" :depends-on ("_package_getInventoryData"))
    (:file "_package_getInventoryData" :depends-on ("_package"))
    (:file "pop_subTaskVector" :depends-on ("_package_pop_subTaskVector"))
    (:file "_package_pop_subTaskVector" :depends-on ("_package"))
    (:file "CreateNewTask" :depends-on ("_package_CreateNewTask"))
    (:file "_package_CreateNewTask" :depends-on ("_package"))
    (:file "BiddingOffer" :depends-on ("_package_BiddingOffer"))
    (:file "_package_BiddingOffer" :depends-on ("_package"))
    (:file "getAllInventoryData" :depends-on ("_package_getAllInventoryData"))
    (:file "_package_getAllInventoryData" :depends-on ("_package"))
    (:file "setInventoryData" :depends-on ("_package_setInventoryData"))
    (:file "_package_setInventoryData" :depends-on ("_package"))
    (:file "AssignTask" :depends-on ("_package_AssignTask"))
    (:file "_package_AssignTask" :depends-on ("_package"))
  ))
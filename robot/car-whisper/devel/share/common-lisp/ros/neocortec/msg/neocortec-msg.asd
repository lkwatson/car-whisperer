
(cl:in-package :asdf)

(defsystem "neocortec-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "neocortecData" :depends-on ("_package_neocortecData"))
    (:file "_package_neocortecData" :depends-on ("_package"))
  ))
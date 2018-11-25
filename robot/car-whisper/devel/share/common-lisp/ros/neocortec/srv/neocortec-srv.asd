
(cl:in-package :asdf)

(defsystem "neocortec-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "neocortecSendData" :depends-on ("_package_neocortecSendData"))
    (:file "_package_neocortecSendData" :depends-on ("_package"))
  ))
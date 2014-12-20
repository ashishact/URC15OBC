
(cl:in-package :asdf)

(defsystem "urc15-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Navigation" :depends-on ("_package_Navigation"))
    (:file "_package_Navigation" :depends-on ("_package"))
    (:file "Arm" :depends-on ("_package_Arm"))
    (:file "_package_Arm" :depends-on ("_package"))
  ))
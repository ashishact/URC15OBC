
(cl:in-package :asdf)

(defsystem "urc15-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Comm_DataArray" :depends-on ("_package_Comm_DataArray"))
    (:file "_package_Comm_DataArray" :depends-on ("_package"))
  ))
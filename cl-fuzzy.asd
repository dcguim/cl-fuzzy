;;;; -*- Mode: Lisp; Syntax: ANSI-Common-Lisp; Base: 10 -*-

(defsystem cl-fuzzy
  :description "cl-fuzzy:implements a simple fuzzy logics system."
  :version "0.0.1"
  :author "Dan C. Guim <dcguim@gmail.com>"
  :components ((:file "packages")
	       (:file "fuzzy-set" :depends-on ("packages"))
               (:file "fuzzy" :depends-on ("fuzzy-set"))
               (:file "modifiers" :depends-on ("packages"))))
              

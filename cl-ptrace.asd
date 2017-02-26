;;;; -*- Mode: Lisp; Syntax: ANSI-Common-Lisp; Base: 10 -*-

(in-package :asdf-user)

(defsystem #:cl-ptrace
  :description "Common Lisp bindings to the `ptrace' Linux syscall, geared towards runtime 
process hacking through value injection"
  :version "0.1"
  :author "k-stz"
  ;; :licence "MIT" ;; TODO
  :depends-on (:cffi)
  :serial t	
  :components
  ((:file "cl-ptrace/package")
   (:file "cl-ptrace/cl-ptrace")
   (:file "cl-ptrace/proc-pid-dir")
   (:file "cl-ptrace/utils")
   ;; ":module" solves the "src in subdirectories" problem nicely!
   ;; TODO decide where to put things
   ;; (:module "1-chapter/"
   ;; 	    :components ((:file "hello-triangle")))

   ))

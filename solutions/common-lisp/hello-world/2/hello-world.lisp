(defpackage #:hello-world
  (:use #:common-lisp)
  (:export #:hello-world)
  (:nicknames #:hw))

(in-package #:hello-world)

(defun hello-world (&optional (name "World"))
  "Produce greeting using the standard, classic, algorithm."
  (format nil "Hello ~A!" name))
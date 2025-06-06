(defpackage #:hello-world
  (:use #:common-lisp)
  (:export #:hello)
  (:nicknames #:hw))

(in-package #:hello-world)

(defun hello (&optional (name "World"))
  "Produce greeting using the standard, classic, algorithm."
  (format nil "Hello, ~A!" name))

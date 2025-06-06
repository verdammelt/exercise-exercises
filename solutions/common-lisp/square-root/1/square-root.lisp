(defpackage :square-root
  (:use :cl)
  (:export :square-root))

(in-package :square-root)

(defun square-root (radicand)
  (loop for n from 1 upto (ceiling (/ radicand 2))
        when (= (* n n) radicand)
          return n))

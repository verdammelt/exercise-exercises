(defpackage :resistor-color
  (:use :cl)
  (:export :color-code
           :colors))

(in-package :resistor-color)

(defparameter *color-by-number*
  '(("black" . 0)
    ("brown" . 1)
    ("red" . 2)
    ("orange" . 3)
    ("yellow" . 4)
    ("green" . 5)
    ("blue" . 6)
    ("violet" . 7)
    ("grey" . 8)
    ("white" . 9)))


(defun color-code (color)
  (cdr (assoc color *color-by-number* :test #'string=)))

(defun colors ()
  (mapcar #'car *color-by-number*))

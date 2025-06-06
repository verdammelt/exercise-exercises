(defpackage :resistor-color-duo
  (:use :cl)
  (:export :value))

(in-package :resistor-color-duo)

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

(defun value (colors)
  (loop for d in (nreverse (mapcar #'color-code (subseq colors 0 2)))
        for idx from 0
        sum (* (expt 10 idx) d)))

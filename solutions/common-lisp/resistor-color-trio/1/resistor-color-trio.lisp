(defpackage :resistor-color-trio
  (:use :cl)
  (:export :label))

(in-package :resistor-color-trio)

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

(defun color-size (color)
  (format nil "~Aohms"
          (case (color-code color)
            (0 " ")
            (1 "0 ")
            (2 "00 ")
            (3 " kilo")
            (4 "0 kilo")
            (5 "00 kilo")
            (6 " mega")
            (7 "0 mega")
            (8 "00 mega")
            (9 " giga"))))

(defun value (colors)
  (loop for d in (nreverse (mapcar #'color-code (subseq colors 0 2)))
        for idx from 0
        sum (* (expt 10 idx) d)))

(defun label (colors)
  (let ((bands (subseq colors 0 2))
        (units (color-size (nth 2 colors))))
    (format nil "~D~A" (value bands) units)))

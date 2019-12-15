;;; testing.lisp
;;; by keer2345
;;;
;;; Introductory comments are preceded by ";;;"
;;; Function headers are preceded by ";;"
;;; Inline comments are introduced by ";"
;;;

;;
;; Triple the value of a number
;;

(defun triple (X)
  "Compute three times X." ;Inline comments can
  (* 3 X)) ; be place here

;;
;; Negate the sign of a number
;;

(defun negate (X)
  "Negate the value of X." ; This is a documention string.
  (- X))

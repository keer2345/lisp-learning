;;;
;;; solution1.lisp: Solution for selected exercises in LISP tutorial 1
;;; Philip W. L. Fong
;;; SFU CMPT 310 (2001-1)
;;;

;;
;; Control Structures: Recursions and Conditionals
;;

(defun triangular (N)
  "Compute the N'th triangular number."
  (if (= N 1)
      1
    (+ N (triangular (- N 1)))))

(defun power (B E)
  "Raise B to the E'th power."
  (if (zerop E)
      1
    (* B (power B (- E 1)))))

;;
;; Multiple Recursions
;;

(defun binomial (N R)
  "Computer binomial coefficient B(N,R)."
  (if (or (zerop R) (= N R))
      1
      (+ (binomial (- N 1) (- R 1))
	 (binomial (- N 1) R))))

;;
;; Programming with Lists
;;

(defun sum-list (L)
  (if (null L)
      0
      (+ (car L) (sum-list (cdr L)))))

;;
;; Example: nil
;;

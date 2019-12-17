;;;
;;; source1.lisp: Source code for LISP tutorial 1
;;; Philip W. L. Fong
;;; SFU CMPT 310 (2001-1)
;;;

;;
;; Defining Functions
;;
(defun my-double (X)
  "Compute two times X."
  (* 2 X))


;;
;; Editing, Loading and Compiling LISP Programs
;;

(defun triple (X)
  "Compute three times X."  
  (* 3 X))                  

(defun negate (X)
  "Negate the value of X."  
  (- X))                

;;
;; Control Structures: Recursions and Conditionals
;;

(defun factorial (N)
  "Compute the factorial of N."
  (if (= N 1)
      1
    (* N (factorial (- N 1)))))

;;
;; Multiple Recursions
;;

(defun fibonacci (N)
  "Compute the N'th Fibonacci number."
  (if (or (zerop N) (= N 1))
      1
    (+ (fibonacci (- N 1)) 
       (fibonacci (- N 2)))))

;;
;; Progromming with Lists
;;

(defun recursive-list-length (L)
  (if (null L)
      0
      (+ 1 (recursive-list-length (rest L)))))

;; Example: nth

(defun list-nth (N L)
  (if (null L)
      nil
      (if (zerop N)
	  (first L)
	  (list-nth (- N 1) (rest L)))))

;; Example: member
(defun list-member (e l)
  (if (null l)
      nil
      (if (equal e (car l))
	  t
	  (list-member e (cdr l)))))

;; Example: append
(defun list-append (l1 l2)
  (if (null l1)
      l2
      (cons (car l1) (list-append (rest l1) l2))))

(defun list-intersection (l1 l2)
  (cond
    ((null l1) nil)
    ((member (car l1) l2)
     (cons (car l1) (list-intersection (cdr l1) l2)))
    (t (list-intersection (cdr l1) l2))))

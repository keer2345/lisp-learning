(defun variable_arity (a &optional b &rest c)
  "This is a function which has variable arity"
  (message (concat "variable a is " a))
  (message (concat "variable b is " b))
  (if c (message "c is not an empty list") (message "c is an empty list")))

(message "run the fn with 1 variable")
(variable_arity "eh")

(message "run the fn with 2 variables")
(variable_arity "eh" "bee")

(message "run the fn with 3 variables")
(variable_arity "eh" "bee" "see")

(message "run the fn with 4 variables")
(variable_arity "eh" "bee" "see" "dee")

(message "run the fn with 5 variables")
(variable_arity "eh" "bee" "see" "dee" "eee")

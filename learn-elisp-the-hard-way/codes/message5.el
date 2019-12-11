(defun print_int (n)
  "This function prints a list of integers in reverse order"
  (message (number-to-string n))
  (if (= n 0) (message "That's all folks!") (print_int(- n 1))))

(print_int 6)

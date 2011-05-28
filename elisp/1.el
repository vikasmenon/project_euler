
(defun sum_all (x)
  (/ (* x (+ x 1)) 2))

(defun modular (x y)
  ( * y (sum_all (/ (- x 1) y))))

(defun awesome (x)
  (- (+ (modular x 3) (modular x 5)) (modular x 15)))


(awesome 1000)


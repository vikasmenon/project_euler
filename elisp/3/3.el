(defun primeFactorsUntil (x y w)
  ( if (or (= x 1 ) (null y) )
      w
    ( let ( (startY (car y)) )
       (if (= (mod x startY) 0)
	   ( let (( newStart (removeFactor x startY)))
	     (primeFactorsUntil newStart (filter (lambda (z) (and (/= (mod z startY) 0) (<= z newStart) ) ) y ) (cons startY w))
	     )
      ( primeFactorsUntil x (filter (lambda (z) (/= (mod z startY) 0) ) (cdr y) ) w )
      )
    )))

(defun removeFactor ( x y )
  (if (and (= (mod x y) 0) (/= x y))
      (removeFactor (/ x y) y)
    x) )

(defun euler3( x )
  (primeFactorsUntil x ( range 2 (+ (/ x 2) 1 ) ) '()  ) )

(defun filter (f x)
  (cond
   ((null x) x)
   (t (remove-if-not f x ))
  ) )

(defun range( start end )
  (loop for i from start below end collect i))

(euler3 600851475143)

(euler3 165)

;; found this implementation online
(defun get-factors (x)
  (defun get-factors-iter (y c)
    (cond
      ((= y 1) nil)
      ((eq (mod y c) 0) (cons c (get-factors-iter (/ y c) c)))
      (t (get-factors-iter y (+ c 2)))))
  (cond
    ((= x 1) nil)
    ((= 0 (mod x 2)) (cons 2 (get-factors (/ x 2))))
    (t (get-factors-iter x 3))))
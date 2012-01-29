(defun fib (y x)
  (cond
   ((and (null x) (< y 1) ) x)
   ((and (null x) (= y 1) ) '(1 1))
   ((and (null x) (= y 2) ) '(2 1 1))
   ((and (null x) (> y 2) ) (fib y '(2 1 1) ))
   ((>= (car x) y ) x )
   (t (fib y (cons (+ (car x) ( car (cdr x))) x ) ) )
   ))

(defun fibo (x)
  (fib x '()))


(defun factorial (x)
  (if (zerop x)
      1
    (* x (factorial (- x 1) ) ) ) )

(defun filter (f x)
  (cond
   ((null x) x)
   ((funcall f (car x) ) (cons (car x) (filter f (cdr x) ) ) )
   (t ( filter f (cdr x ) ) )
  ) )

(reduce '+ (filter (lambda (x) (= (mod x 2) 0)) (fibo 4000000)) )


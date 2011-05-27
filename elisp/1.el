
(def sum_all x (/ (* x x+1) 2))

(def modular x y ( y * sum_all((/ (- x 1) y))))

(def awesome x (- (+ (modular x 3) (modular x 5)) (modular x 15)))


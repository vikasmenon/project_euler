_fib :: (Num a, Ord a) => a -> [a] -> [a]
_fib y x
  | y < 1  = [ ]
  | y == 1 = [1,1]
  | y > 1 && x == [ ] = _fib y [1,1]
  | y > 1 && x /=[ ] = if y < ( (x !!  0) + ( x !! 1 ) )
                       then x
                       else _fib y ((( x !! 0) + (x !! 1)):x)

fib :: (Num a, Ord a) => a -> [a]
fib y = _fib y [ ]

euler3 :: Integer
euler3 = sum (filter even (fib 4000000) )
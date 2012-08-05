import Data.Numbers.Primes
import Data.List

amicablepairs num = [i | i <- [2..num], let j = d i, (d j ) == i && i /= j ]

d x = sum (divisors x) - x

divisors x = factory $ numpow $ group $ primeFactors x
             where numpow xs = [(f!!0, length f) | f <- xs ]

factory []             = [1]
factory ((num,pow):xs) = [ (num^i)*y | i<-[0..pow], y <- (factory xs)]

solve21 = sum $ amicablepairs 10000
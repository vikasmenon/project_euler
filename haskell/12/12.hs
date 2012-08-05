import Data.Numbers.Primes
import Data.List

numFactors x = product $ map (+1) $ map length $ group $ primeFactors x

triangleNums = [ n*(n+1) `div` 2 | n <- [1..] ]

solve12 input = [ x | x <- triangleNums, numFactors x > input ] !! 0
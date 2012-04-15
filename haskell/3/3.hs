erastothenesSieve :: (Integral a) => a -> [a]
erastothenesSieve x
  | x < 2  = [ ]
  | x == 2 = [2]
  | otherwise = _erastothenesSieve (filter odd ([3.. x])) [2]


_erastothenesSieve :: (Integral a) => [a] -> [a] -> [a]
_erastothenesSieve [] z = z
_erastothenesSieve (y:ys) z   = _erastothenesSieve [ x | x <- ys, (rem x y) /=0 ] (y:z)
--_erastothenesSieve (y:ys) z   = _erastothenesSieve (filter (\x -> (rem x y) /= 0 ) ys) (y:z)

primeFactors x = primeFactors' x 0
primeFactors' 0 _ = []
primeFactors' x i
	| (current*current > x) = [x]
	| x `divBy` current = current:primeFactors' (x `div` current) 0
	| otherwise = primeFactors' x (i+1)
		where
			current = primes!!i

--euler3Test :: [Integer]
--euler3Test = primeFactors 14

---------- Copied from rosettacode.org: http://rosettacode.org/wiki/Sieve_of_Eratosthenes#Haskell

primes :: [Integer]          --  unbounded merging idea due to Richard Bird
primes = 2 : g (fix g)       --  double staged production idea due to Melissa O'Neill
 where                      --  tree merging idea Dave Bayer / simplified formulation Will Ness
  g xs = 3 : gaps 5 (unionAll [[p*p, p*p+2*p..] | p <- xs])

fix g = xs where xs = g xs      -- global definition to prevent space leak

gaps k s@(x:xs) | k<x  = k:gaps (k+2) s      -- [k,k+2..]`minus`s, k<=x !
                | True =   gaps (k+2) xs

unionAll ((x:xs):t) = x : union xs (unionAll (pairs t))
  where
    pairs ((x:xs):ys:t) = (x : union xs ys) : pairs t

union a@(x:xs) b@(y:ys) = case compare x y of
         LT -> x : union  xs b
         EQ -> x : union  xs ys
         GT -> y : union  a  ys

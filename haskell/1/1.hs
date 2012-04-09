sum_all :: (Integral a) => a -> a
sum_all x = div (x * (x + 1))  2

modular :: (Integral a) => a -> a -> a
modular x y = y * (sum_all (div (x-1) y))

awesome :: (Integral a) => a -> a
awesome x = (modular x 3) + (modular x 5) - (modular x  15)

main :: IO ()
main = print (awesome 1000)

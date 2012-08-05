import Data.List

pytriples num = [(i,j,k) | i <-[1..num], j <- [i..num], k <-[j..num], i+j+k <= 1000, i^2 + j^2==k^2]

solve num = maximum [ (length xs, xs!!0) | xs <- group $ sort $ trisummer $ pytriples num]  

trisummer [] = []
trisummer ((x,y,z):xs) = x+y+z: trisummer xs

solve39 = snd $ solve 1000

sum_of_squares n = sum [ x^2 | x <- [1..n]]

square_of_sums n = sum [1..n] ^ 2

problem6 =  (square_of_sums 100) - (sum_of_squares 100)
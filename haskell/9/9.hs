
pythagorean_triplet_sum n = [ (a,b,c) | a <-[1..n], b<-[1..a],  c<-[1..b], c^2 + b^2 == a^2, a + b + c == n ]


problem9 = pythagorean_triplet_sum 1000
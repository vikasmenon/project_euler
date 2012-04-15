perimeter x = len [(a,b,c) | a<- [1..x], b<-[1..a], c<-[1..b], a+b+c=x, b^2+c^2=a^2]

soln = max [ (perimeter x, x) | x<-[1..1000]]



import math
strNums = (str(i)for i in xrange(3, 4000000))
f = lambda numStr:sum([math.factorial(int(x)) for x in numStr])
nums = [n for n in strNums if f(n) == int(n)]
print 145 + 40585





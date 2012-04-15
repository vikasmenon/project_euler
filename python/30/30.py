strNums = (str(i) for i in xrange(5000000))
f = lambda numStr: sum([int(s)**5 for s in numStr])
nums =  [n for n in strNums if f(n) == int(n)]
print sum([int(n) for n in nums[2:]])


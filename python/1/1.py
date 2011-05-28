
def sumer(k):
    return k * (k + 1) / 2

def awesome(num):
    k = num - 1
    return 3*sumer(k/3) + 5*sumer(k/5) - 15*sumer(k/15)

print "Sum is: ", sum([i for i in range(1,1000) if i%5==0 or i%3==0])
print "Awe sum: ", awesome(1000)

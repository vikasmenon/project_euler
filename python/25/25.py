import itertools as it
def fib():
    a, b =  0, 1
    while True:
        yield b
        a,  b =  b, a + b

def problem25():
    a =  fib()
    count = 0
    while len( str(a.next() )) < 1000:
        count += 1
    print count


for x in it.islice(fib(), 4782):
    print len( str( x ) )


def palindromeNum( num ):
    if ''.join( list (reversed( str(num) ) ) ) ==  str(num ):
        return True
    return False

def problem4():
    return max([(a*b,a,b) for a in xrange(100,1001) for b in xrange(100,1001) if palindromeNum(a*b)])[0]



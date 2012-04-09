

def filterSieve( primes,  sieve):
    lastInSieve = (primes[ - 1] + 1)** 2
    for y in primes:
        sieve = filter( lambda x: x % y,  sieve )
    primes = filter( lambda x: x < lastInSieve,  sieve )
    sieve = sieve[len(primes): ]
    return primes, sieve

def erastothenesSieve( maxNum ):
    primes =  [ 2 ]
    sieve =  range(3,  maxNum,  2)
    allPrimes =  [ 2 ]
    while sieve:
        primes, sieve=  filterSieve( primes, sieve )
        print "Primes: %s" % (repr( primes ) )
        print "Sieve : %s" % (repr( sieve ) )
        allPrimes.extend( primes )
    return allPrimes


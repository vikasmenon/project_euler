

collatzDict =  {}

def len_collatz( origNum ):
    length = 1
    num  =  origNum
    while num != 1:
        if num in collatzDict:
            collatzDict[ origNum] = collatzDict[ num ] +  length
            return collatzDict[ origNum ]
        if num % 2 == 0:
            num =  num / 2
        else:
            num =  3 * num +  1
        length += 1
    collatzDict[ origNum ] = length
    return collatzDict[ origNum ]

def collatzLength( num,  length = 1):
    if num == 1:
        return length
    if num in collatzDict:
        return collatzDict[ num ] + length
    if num % 2 == 0:
        cLen = collatzLength( num / 2,  length + 1)
    else:
        cLen = collatzLength( 3 * num + 1,  length + 1)
    collatzDict[ num ] = cLen - length + 1
    return cLen

def problem14():
    print max([ (collatzLength(i), i) for i in xrange(1, 1000000)])[1]

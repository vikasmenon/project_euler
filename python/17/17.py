units = ['one',  'two',  'three',  'four',  'five', 'six', 'seven', 'eight',\
         'nine']

teens = ['ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', \
         'sixteen', 'seventeen', 'eighteen', 'nineteen']

tens = ['twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']

hundreds = ['hundred']

thousands = [ ('onethousand', )]

allNums = [tuple(u, ) for u in units] +  [tuple(x, ) for x in teens] \
          +  [tuple(x, ) for x in  tens] + thousands\
          +  [(t, u) for t in tens for u in units] + [ (u, h, 'and', ut) for u in units for h in hundreds for ut in units]\
          + [ (u, h, 'and', tt) for u in units for h in hundreds for tt in teens]\
          + [ (u, h, 'and', t, ut) for u in units for h in hundreds for t in tens for ut in units]\
          +  [(u, h, 'and', t) for u in units for h in hundreds for t in tens]\
          +  [(u, h) for u in units for h in hundreds]

print 'Length:', len(allNums)



print sum([sum([len(x) for x in tup]) for tup in allNums])

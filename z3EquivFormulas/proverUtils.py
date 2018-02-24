from z3 import *
def prove(f):
  s = Solver()
  s.add(Not(f))
  if s.check() == unsat:
#print "proved"
    print('\x1b[6;30;42m' + 'Proved.' + '\x1b[0m')
  else:
    print('\x1b[6;30;41m' + 'Failed To Prove:' + '\x1b[0m')
    print(f)


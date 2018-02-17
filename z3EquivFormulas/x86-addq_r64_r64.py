from z3 import *

# Declarations
CF = BitVec('CF', 1)
PF = BitVec('PF', 1)
AF = BitVec('AF', 1)
ZF = BitVec('ZF', 1)
SF = BitVec('SF', 1)
OF = BitVec('OF', 1)
ZERO1 = BitVecVal(0, 1)
ONE1 = BitVecVal(1, 1)
ZERO64 = BitVecVal(0, 64)
ONE64 = BitVecVal(1, 64)
R1 = BitVec('R1', 64)
R2 = BitVec('R2', 64)


s = Solver();
def prove(f):
  print f
  s = Solver()
  s.add(Not(f))
  if s.check() == unsat:
    print "proved"
  else:
    print "failed to prove"

PK_CF = (Extract( ( Concat(ZERO1, R1) + Concat(ZERO1, R2) ).size() - 0 - 1, ( Concat(ZERO1, R1) + Concat(ZERO1, R2) ).size() - 1, ( Concat(ZERO1, R1) + Concat(ZERO1, R2) )  )  ) == ONE1
PS_CF = (== (plus (concat <0x0|1> <%rcx|64>) (concat <0x0|1> <%rbx|64>))[64:64] <0x1|1>)
prove( PK_CF == PS_CF )

PK_OF = ((If( ( ( ( Extract( R1, 0, 1.size() -  - 1, R1, 0, 1.size() - , R1, 0, 1  ) , Extract( R2, 0, 1.size() -  - 1, R2, 0, 1.size() - , R2, 0, 1  )  )   And(    Not   ( Extract( R1, 0, 1.size() -  - 1, R1, 0, 1.size() - , R1, 0, 1  ) , Extract( ( Concat(ZERO1, R1) + Concat(ZERO1, R2) ).size() - 1 - 1, ( Concat(ZERO1, R1) + Concat(ZERO1, R2) ).size() - 2, ( Concat(ZERO1, R1) + Concat(ZERO1, R2) )  )  ) ,    )   )  ) , ( ONE1 ) , ( ZERO1 ) ))  ) == ONE1
PS_OF = (and (== (== <%rcx|64>[63:63] <0x1|1>) (== <%rbx|64>[63:63] <0x1|1>)) (not (== (== <%rcx|64>[63:63] <0x1|1>) (== (plus (concat <0x0|1> <%rcx|64>) (concat <0x0|1> <%rbx|64>))[63:63] <0x1|1>))))
prove( PK_OF == PS_OF )

PK_R2 = (Extract( ( Concat(ZERO1, R1) + Concat(ZERO1, R2) ).size() - 1 - 1, ( Concat(ZERO1, R1) + Concat(ZERO1, R2) ).size() - 65, ( Concat(ZERO1, R1) + Concat(ZERO1, R2) )  )  )
PS_R2 = (plus (concat <0x0|1> <%rcx|64>) (concat <0x0|1> <%rbx|64>))[63:0]
prove( PK_R2 == PS_R2 )

PK_SF = (Extract( ( Concat(ZERO1, R1) + Concat(ZERO1, R2) ).size() - 1 - 1, ( Concat(ZERO1, R1) + Concat(ZERO1, R2) ).size() - 2, ( Concat(ZERO1, R1) + Concat(ZERO1, R2) )  )  ) == ONE1
PS_SF = (== (plus (concat <0x0|1> <%rcx|64>) (concat <0x0|1> <%rbx|64>))[63:63] <0x1|1>)
prove( PK_SF == PS_SF )

PK_ZF = ((If( (( Extract( ( Concat(ZERO1, R1) + Concat(ZERO1, R2) ).size() - 1 - 1, ( Concat(ZERO1, R1) + Concat(ZERO1, R2) ).size() - 65, ( Concat(ZERO1, R1) + Concat(ZERO1, R2) )  ) , ZERO64 )  ) , ( ONE1 ) , ( ZERO1 ) ))    ) == ONE1
PS_ZF = (== (plus (concat <0x0|1> <%rcx|64>) (concat <0x0|1> <%rbx|64>))[63:0] <0x0|64>)
prove( PK_ZF == PS_ZF )


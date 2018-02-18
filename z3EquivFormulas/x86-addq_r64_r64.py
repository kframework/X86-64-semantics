from z3 import *
import proverUtils
# Declarations
CF = BitVec('CF', 1)
PF = BitVec('PF', 1)
AF = BitVec('AF', 1)
ZF = BitVec('ZF', 1)
SF = BitVec('SF', 1)
OF = BitVec('OF', 1)

RAX = BitVec('RAX', 64)
RCX = BitVec('RCX', 64)
ZERO1 = BitVecVal(0, 1)
ONE1 = BitVecVal(1, 1)

cf = (CF == ONE1)
pf = (PF == ONE1)
af = (AF == ONE1)
zf = (ZF == ONE1)
sf = (SF == ONE1)
of = (OF == ONE1)


print('[6;30;44m' + 'Opcode:addq_r64_r64' + '[0m')

R1 = BitVec('R1', 64)
R2 = BitVec('R2', 64)
CONST_BV_S1_V0 = BitVecVal(0, 1)
CONST_BV_S64_V1 = BitVecVal(1, 64)
CONST_BV_S1_V1 = BitVecVal(1, 1)
CONST_BV_S64_V0 = BitVecVal(0, 64)

PK_CF = (Extract( ( Concat((CONST_BV_S1_V0), R1) + Concat((CONST_BV_S1_V0), R2) ).size() - 0 - 1, ( Concat((CONST_BV_S1_V0), R1) + Concat((CONST_BV_S1_V0), R2) ).size() - 1, ( Concat((CONST_BV_S1_V0), R1) + Concat((CONST_BV_S1_V0), R2) )  )  ) == ONE1
PS_CF = ((Extract (64, 64, (((Concat((CONST_BV_S1_V0), (R1))) + (Concat((CONST_BV_S1_V0), (R2))))))) == (CONST_BV_S1_V1))
proverUtils.prove( PK_CF == PS_CF )

PK_OF = ((If (( (And( ( Extract( R1.size() - 0 - 1, R1.size() - 1, R1  ) == Extract( R2.size() - 0 - 1, R2.size() - 1, R2  )  ) ,  (Not  ( ( Extract( R1.size() - 0 - 1, R1.size() - 1, R1  ) == Extract( ( Concat((CONST_BV_S1_V0), R1) + Concat((CONST_BV_S1_V0), R2) ).size() - 1 - 1, ( Concat((CONST_BV_S1_V0), R1) + Concat((CONST_BV_S1_V0), R2) ).size() - 2, ( Concat((CONST_BV_S1_V0), R1) + Concat((CONST_BV_S1_V0), R2) )  )  )  ))  ))  ) , ( (CONST_BV_S1_V1) ) , ( (CONST_BV_S1_V0) ) ))  ) == ONE1
PS_OF = (And((((Extract (63, 63, ((R1)))) == (CONST_BV_S1_V1)) == ((Extract (63, 63, ((R2)))) == (CONST_BV_S1_V1))), (Not((((Extract (63, 63, ((R1)))) == (CONST_BV_S1_V1)) == ((Extract (63, 63, (((Concat((CONST_BV_S1_V0), (R1))) + (Concat((CONST_BV_S1_V0), (R2))))))) == (CONST_BV_S1_V1)))))))
proverUtils.prove( PK_OF == PS_OF )

PK_R2 = (Extract( ( Concat((CONST_BV_S1_V0), R1) + Concat((CONST_BV_S1_V0), R2) ).size() - 1 - 1, ( Concat((CONST_BV_S1_V0), R1) + Concat((CONST_BV_S1_V0), R2) ).size() - 65, ( Concat((CONST_BV_S1_V0), R1) + Concat((CONST_BV_S1_V0), R2) )  )  )
PS_R2 = (Extract (63, 0, (((Concat((CONST_BV_S1_V0), (R1))) + (Concat((CONST_BV_S1_V0), (R2)))))))
proverUtils.prove( PK_R2 == PS_R2 )

PK_SF = (Extract( ( Concat((CONST_BV_S1_V0), R1) + Concat((CONST_BV_S1_V0), R2) ).size() - 1 - 1, ( Concat((CONST_BV_S1_V0), R1) + Concat((CONST_BV_S1_V0), R2) ).size() - 2, ( Concat((CONST_BV_S1_V0), R1) + Concat((CONST_BV_S1_V0), R2) )  )  ) == ONE1
PS_SF = ((Extract (63, 63, (((Concat((CONST_BV_S1_V0), (R1))) + (Concat((CONST_BV_S1_V0), (R2))))))) == (CONST_BV_S1_V1))
proverUtils.prove( PK_SF == PS_SF )

PK_ZF = ((If ((( Extract( ( Concat((CONST_BV_S1_V0), R1) + Concat((CONST_BV_S1_V0), R2) ).size() - 1 - 1, ( Concat((CONST_BV_S1_V0), R1) + Concat((CONST_BV_S1_V0), R2) ).size() - 65, ( Concat((CONST_BV_S1_V0), R1) + Concat((CONST_BV_S1_V0), R2) )  ) == (CONST_BV_S64_V0) )  ) , ( (CONST_BV_S1_V1) ) , ( (CONST_BV_S1_V0) ) ))    ) == ONE1
PS_ZF = ((Extract (63, 0, (((Concat((CONST_BV_S1_V0), (R1))) + (Concat((CONST_BV_S1_V0), (R2))))))) == (CONST_BV_S64_V0))
proverUtils.prove( PK_ZF == PS_ZF )


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


print('[6;30;44m' + 'Opcode:decb_r8' + '[0m')

R1 = BitVec('R1', 64)
CONST_BV_S8_V255 = BitVecVal(255, 8)
CONST_BV_S9_V255 = BitVecVal(255, 9)
CONST_BV_S1_V0 = BitVecVal(0, 1)
CONST_BV_S8_V1 = BitVecVal(1, 8)
CONST_BV_S1_V1 = BitVecVal(1, 1)
CONST_BV_S8_V0 = BitVecVal(0, 8)
CONST_BV_S5_Vf = BitVecVal(0xf, 5)
CONST_BV_S9_Vff = BitVecVal(0xff, 9)

PK_OF = ((If (( (And( ( (CONST_BV_S1_V1) == Extract( R1.size() - 56 - 1, R1.size() - 57, R1  )  ) ,  (Not  ( ( (CONST_BV_S1_V1) == Extract( ( (CONST_BV_S9_V255) + Concat((CONST_BV_S1_V0), Extract( R1.size() - 56 - 1, R1.size() - 64, R1  ) ) ).size() - 1 - 1, ( (CONST_BV_S9_V255) + Concat((CONST_BV_S1_V0), Extract( R1.size() - 56 - 1, R1.size() - 64, R1  ) ) ).size() - 2, ( (CONST_BV_S9_V255) + Concat((CONST_BV_S1_V0), Extract( R1.size() - 56 - 1, R1.size() - 64, R1  ) ) )  )  )  ))  ))  ) , ( (CONST_BV_S1_V1) ) , ( (CONST_BV_S1_V0) ) ))  ) == ONE1
PS_OF = (And(((True) == ((Extract (7, 7, ((R1)))) == (CONST_BV_S1_V1))), (Not(((True) == ((Extract (7, 7, (((CONST_BV_S9_Vff) + (Concat((CONST_BV_S1_V0), (Extract (7, 0, ((R1)))))))))) == (CONST_BV_S1_V1)))))))
proverUtils.prove( PK_OF == PS_OF )

PK_R1 = (Concat(Extract( R1.size() - 0 - 1, R1.size() - 56, R1  ) , Extract( ( (CONST_BV_S9_V255) + Concat((CONST_BV_S1_V0), Extract( R1.size() - 56 - 1, R1.size() - 64, R1  ) ) ).size() - 1 - 1, ( (CONST_BV_S9_V255) + Concat((CONST_BV_S1_V0), Extract( R1.size() - 56 - 1, R1.size() - 64, R1  ) ) ).size() - 9, ( (CONST_BV_S9_V255) + Concat((CONST_BV_S1_V0), Extract( R1.size() - 56 - 1, R1.size() - 64, R1  ) ) )  ) ) )
PS_R1 = (Concat((Extract (63, 8, ((R1)))), (Extract (7, 0, (((CONST_BV_S9_Vff) + (Concat((CONST_BV_S1_V0), (Extract (7, 0, ((R1))))))))))))
proverUtils.prove( PK_R1 == PS_R1 )

PK_SF = (Extract( ( (CONST_BV_S9_V255) + Concat((CONST_BV_S1_V0), Extract( R1.size() - 56 - 1, R1.size() - 64, R1  ) ) ).size() - 1 - 1, ( (CONST_BV_S9_V255) + Concat((CONST_BV_S1_V0), Extract( R1.size() - 56 - 1, R1.size() - 64, R1  ) ) ).size() - 2, ( (CONST_BV_S9_V255) + Concat((CONST_BV_S1_V0), Extract( R1.size() - 56 - 1, R1.size() - 64, R1  ) ) )  )  ) == ONE1
PS_SF = ((Extract (7, 7, (((CONST_BV_S9_Vff) + (Concat((CONST_BV_S1_V0), (Extract (7, 0, ((R1)))))))))) == (CONST_BV_S1_V1))
proverUtils.prove( PK_SF == PS_SF )

PK_ZF = ((If ((( Extract( ( (CONST_BV_S9_V255) + Concat((CONST_BV_S1_V0), Extract( R1.size() - 56 - 1, R1.size() - 64, R1  ) ) ).size() - 1 - 1, ( (CONST_BV_S9_V255) + Concat((CONST_BV_S1_V0), Extract( R1.size() - 56 - 1, R1.size() - 64, R1  ) ) ).size() - 9, ( (CONST_BV_S9_V255) + Concat((CONST_BV_S1_V0), Extract( R1.size() - 56 - 1, R1.size() - 64, R1  ) ) )  ) == (CONST_BV_S8_V0) )  ) , ( (CONST_BV_S1_V1) ) , ( (CONST_BV_S1_V0) ) ))    ) == ONE1
PS_ZF = ((Extract (7, 0, (((CONST_BV_S9_Vff) + (Concat((CONST_BV_S1_V0), (Extract (7, 0, ((R1)))))))))) == (CONST_BV_S8_V0))
proverUtils.prove( PK_ZF == PS_ZF )


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


print('[6;30;44m' + 'Opcode:incl_r32' + '[0m')

R1 = BitVec('R1', 64)
CONST_BV_S32_V1 = BitVecVal(1, 32)
CONST_BV_S33_V1 = BitVecVal(1, 33)
CONST_BV_S1_V0 = BitVecVal(0, 1)
CONST_BV_S1_V1 = BitVecVal(1, 1)
CONST_BV_S32_V0 = BitVecVal(0, 32)
CONST_BV_S5_V1 = BitVecVal(0x1, 5)

PK_OF = ((If (( (And( ( (CONST_BV_S1_V0) == Extract( R1.size() - 32 - 1, R1.size() - 33, R1  )  ) ,  (Not  ( ( (CONST_BV_S1_V0) == Extract( ( (CONST_BV_S33_V1) + Concat((CONST_BV_S1_V0), Extract( R1.size() - 32 - 1, R1.size() - 64, R1  ) ) ).size() - 1 - 1, ( (CONST_BV_S33_V1) + Concat((CONST_BV_S1_V0), Extract( R1.size() - 32 - 1, R1.size() - 64, R1  ) ) ).size() - 2, ( (CONST_BV_S33_V1) + Concat((CONST_BV_S1_V0), Extract( R1.size() - 32 - 1, R1.size() - 64, R1  ) ) )  )  )  ))  ))  ) , ( (CONST_BV_S1_V1) ) , ( (CONST_BV_S1_V0) ) ))  ) == ONE1
PS_OF = (And(((False) == ((Extract (31, 31, ((R1)))) == (CONST_BV_S1_V1))), (Not(((False) == ((Extract (31, 31, (((CONST_BV_S33_V1) + (Concat((CONST_BV_S1_V0), (Extract (31, 0, ((R1)))))))))) == (CONST_BV_S1_V1)))))))
proverUtils.prove( PK_OF == PS_OF )

PK_R1 = (Concat((CONST_BV_S32_V0), Extract( ( (CONST_BV_S33_V1) + Concat((CONST_BV_S1_V0), Extract( R1.size() - 32 - 1, R1.size() - 64, R1  ) ) ).size() - 1 - 1, ( (CONST_BV_S33_V1) + Concat((CONST_BV_S1_V0), Extract( R1.size() - 32 - 1, R1.size() - 64, R1  ) ) ).size() - 33, ( (CONST_BV_S33_V1) + Concat((CONST_BV_S1_V0), Extract( R1.size() - 32 - 1, R1.size() - 64, R1  ) ) )  ) ) )
PS_R1 = (Concat((CONST_BV_S32_V0), (Extract (31, 0, (((CONST_BV_S33_V1) + (Concat((CONST_BV_S1_V0), (Extract (31, 0, ((R1))))))))))))
proverUtils.prove( PK_R1 == PS_R1 )

PK_SF = (Extract( ( (CONST_BV_S33_V1) + Concat((CONST_BV_S1_V0), Extract( R1.size() - 32 - 1, R1.size() - 64, R1  ) ) ).size() - 1 - 1, ( (CONST_BV_S33_V1) + Concat((CONST_BV_S1_V0), Extract( R1.size() - 32 - 1, R1.size() - 64, R1  ) ) ).size() - 2, ( (CONST_BV_S33_V1) + Concat((CONST_BV_S1_V0), Extract( R1.size() - 32 - 1, R1.size() - 64, R1  ) ) )  )  ) == ONE1
PS_SF = ((Extract (31, 31, (((CONST_BV_S33_V1) + (Concat((CONST_BV_S1_V0), (Extract (31, 0, ((R1)))))))))) == (CONST_BV_S1_V1))
proverUtils.prove( PK_SF == PS_SF )

PK_ZF = ((If ((( Extract( ( (CONST_BV_S33_V1) + Concat((CONST_BV_S1_V0), Extract( R1.size() - 32 - 1, R1.size() - 64, R1  ) ) ).size() - 1 - 1, ( (CONST_BV_S33_V1) + Concat((CONST_BV_S1_V0), Extract( R1.size() - 32 - 1, R1.size() - 64, R1  ) ) ).size() - 33, ( (CONST_BV_S33_V1) + Concat((CONST_BV_S1_V0), Extract( R1.size() - 32 - 1, R1.size() - 64, R1  ) ) )  ) == (CONST_BV_S32_V0) )  ) , ( (CONST_BV_S1_V1) ) , ( (CONST_BV_S1_V0) ) ))    ) == ONE1
PS_ZF = ((Extract (31, 0, (((CONST_BV_S33_V1) + (Concat((CONST_BV_S1_V0), (Extract (31, 0, ((R1)))))))))) == (CONST_BV_S32_V0))
proverUtils.prove( PK_ZF == PS_ZF )


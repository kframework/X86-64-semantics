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


print('[6;30;44m' + 'Opcode:movsbl_r32_r8' + '[0m')

R1 = BitVec('R1', 64)
R2 = BitVec('R2', 64)
CONST_BV_S32_V0 = BitVecVal(0, 32)

PK_R2 = (Concat((CONST_BV_S32_V0), Extract( SignExt(64 - (Extract( R1.size() - 56 - 1, R1.size() - 64, R1  ) ).size(), (Extract( R1.size() - 56 - 1, R1.size() - 64, R1  ) )).size() - 32 - 1, SignExt(64 - (Extract( R1.size() - 56 - 1, R1.size() - 64, R1  ) ).size(), (Extract( R1.size() - 56 - 1, R1.size() - 64, R1  ) )).size() - 64, SignExt(64 - (Extract( R1.size() - 56 - 1, R1.size() - 64, R1  ) ).size(), (Extract( R1.size() - 56 - 1, R1.size() - 64, R1  ) ))  ) ) )
PS_R2 = (Concat((CONST_BV_S32_V0), (Extract (31, 0, ((SignExt( 64 - (Extract (7, 0, ((R1)))).size(), (Extract (7, 0, ((R1)))))))))))
proverUtils.prove( PK_R2 == PS_R2 )


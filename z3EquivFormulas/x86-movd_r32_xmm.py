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


print('[6;30;44m' + 'Opcode:movd_r32_xmm' + '[0m')

R1 = BitVec('R1', 256)
R2 = BitVec('R2', 64)
CONST_BV_S32_V0 = BitVecVal(0, 32)

PK_R2 = (Concat((CONST_BV_S32_V0), Extract( R1.size() - 224 - 1, R1.size() - 256, R1  ) ) )
PS_R2 = (Concat((CONST_BV_S32_V0), (Extract (31, 0, ((R1))))))
proverUtils.prove( PK_R2 == PS_R2 )


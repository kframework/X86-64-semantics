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


print('[6;30;44m' + 'Opcode:movdqa_xmm_xmm' + '[0m')

R1 = BitVec('R1', 256)
R2 = BitVec('R2', 256)

PK_R2 = (Concat(Extract( R2.size() - 0 - 1, R2.size() - 128, R2  ) , Extract( R1.size() - 128 - 1, R1.size() - 256, R1  ) ) )
PS_R2 = (Concat((Extract (255, 128, ((R2)))), (Extract (127, 0, ((R1))))))
proverUtils.prove( PK_R2 == PS_R2 )


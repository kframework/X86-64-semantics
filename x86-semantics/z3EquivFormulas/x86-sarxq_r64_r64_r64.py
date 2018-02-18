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


print('[6;30;44m' + 'Opcode:sarxq_r64_r64_r64' + '[0m')

R1 = BitVec('R1', 64)
R2 = BitVec('R2', 64)
R3 = BitVec('R3', 64)
CONST_BV_S8_V63 = BitVecVal(63, 8)
CONST_BV_S8_V64 = BitVecVal(64, 8)
CONST_BV_S1_V0 = BitVecVal(0, 1)
CONST_BV_S64_V0 = BitVecVal(0, 64)
CONST_BV_S64_VNEG1 = BitVecVal(-1, 64)
CONST_BV_S57_V0 = BitVecVal(0x0, 57)
CONST_BV_S8_V3f = BitVecVal(0x3f, 8)

PK_R3 = ((If ((ULT( ( Extract( R1.size() - 56 - 1, R1.size() - 64, R1  ) & (CONST_BV_S8_V63) ), (CONST_BV_S8_V64) )  ) , ( ( SignExt(64 - (R2).size(), (R2)) >> Concat( BitVecVal(0, SignExt(64 - (R2).size(), (R2)).size() - (( Extract( R1.size() - 56 - 1, R1.size() - 64, R1  ) & (CONST_BV_S8_V63) ) ).size()), (( Extract( R1.size() - 56 - 1, R1.size() - 64, R1  ) & (CONST_BV_S8_V63) ) )) )  ) , ( (If ((( Extract( R2.size() - 0 - 1, R2.size() - 1, R2  ) == (CONST_BV_S1_V0) )  ) , ( (CONST_BV_S64_V0) ) , ( (CONST_BV_S64_VNEG1) ) ))  ) ))  )
PS_R3 = (Extract (64, 1, (((Concat((R2), (CONST_BV_S1_V0))) >> (Concat((CONST_BV_S57_V0), ((Extract (7, 0, ((R1)))) & (CONST_BV_S8_V3f))))))))
proverUtils.prove( PK_R3 == PS_R3 )


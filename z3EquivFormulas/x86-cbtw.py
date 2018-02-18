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


print('[6;30;44m' + 'Opcode:cbtw' + '[0m')


PK_RAX = (Concat(Extract( RAX.size() - 0 - 1, RAX.size() - 48, RAX  ) , Extract( SignExt(64 - (Extract( RAX.size() - 56 - 1, RAX.size() - 64, RAX  ) ).size(), (Extract( RAX.size() - 56 - 1, RAX.size() - 64, RAX  ) )).size() - 48 - 1, SignExt(64 - (Extract( RAX.size() - 56 - 1, RAX.size() - 64, RAX  ) ).size(), (Extract( RAX.size() - 56 - 1, RAX.size() - 64, RAX  ) )).size() - 64, SignExt(64 - (Extract( RAX.size() - 56 - 1, RAX.size() - 64, RAX  ) ).size(), (Extract( RAX.size() - 56 - 1, RAX.size() - 64, RAX  ) ))  ) ) )
PS_RAX = (Concat((Extract (63, 16, ((RAX)))), (Extract (15, 0, ((SignExt( 64 - (Extract (7, 0, ((RAX)))).size(), (Extract (7, 0, ((RAX)))))))))))
proverUtils.prove( PK_RAX == PS_RAX )


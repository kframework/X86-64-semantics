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

P1 = (extractMInt(addMInt(Concat(ZERO1, R1), Concat(ZERO1, R2)), 0, 1) ) == (0x0₁ ∘ %rcx + 0x0₁ ∘ %rbx)[64:64] = 0x1₁
s.add(P1)

P2 = ((If ( ( eqMInt(extractMInt(R1, 0, 1), extractMInt(R2, 0, 1))  andBool   notBool  ( eqMInt(extractMInt(R1, 0, 1), extractMInt(addMInt(Concat(ZERO1, R1), Concat(ZERO1, R2)), 1, 2)) )  )  , ( ONE1 ) , ( ZERO1 ) )  ) == (%rcx[63:63] = 0x1₁ ↔ %rbx[63:63] = 0x1₁) ∧ !(%rcx[63:63] = 0x1₁ ↔ (0x0₁ ∘ %rcx + 0x0₁ ∘ %rbx)[63:63] = 0x1₁)
s.add(P2)

P3 = ((If ( (  ( countOnes(extractMInt(addMInt(Concat(ZERO1, R1), Concat(ZERO1, R2)), 57, 65), 0)  &Int  1 )  ==K  0 )  , ( ONE1 ) , ( ZERO1 ) )  ) == !((0x0₁ ∘ %rcx + 0x0₁ ∘ %rbx)[0:0] = 0x1₁ ⊕ (0x0₁ ∘ %rcx + 0x0₁ ∘ %rbx)[1:1] = 0x1₁ ⊕ (0x0₁ ∘ %rcx + 0x0₁ ∘ %rbx)[2:2] = 0x1₁ ⊕ (0x0₁ ∘ %rcx + 0x0₁ ∘ %rbx)[3:3] = 0x1₁ ⊕ (0x0₁ ∘ %rcx + 0x0₁ ∘ %rbx)[4:4] = 0x1₁ ⊕ (0x0₁ ∘ %rcx + 0x0₁ ∘ %rbx)[5:5] = 0x1₁ ⊕ (0x0₁ ∘ %rcx + 0x0₁ ∘ %rbx)[6:6] = 0x1₁ ⊕ (0x0₁ ∘ %rcx + 0x0₁ ∘ %rbx)[7:7] = 0x1₁)
s.add(P3)

P4 = (extractMInt(addMInt(Concat(ZERO1, R1), Concat(ZERO1, R2)), 1, 65) ) == (0x0₁ ∘ %rcx + 0x0₁ ∘ %rbx)[63:0]
s.add(P4)

P5 = (extractMInt(addMInt(Concat(ZERO1, R1), Concat(ZERO1, R2)), 1, 2) ) == (0x0₁ ∘ %rcx + 0x0₁ ∘ %rbx)[63:63] = 0x1₁
s.add(P5)

P6 = ((If (eqMInt(extractMInt(addMInt(Concat(ZERO1, R1), Concat(ZERO1, R2)), 1, 65), ZERO64) , ( ONE1 ) , ( ZERO1 ) )    ) == (0x0₁ ∘ %rcx + 0x0₁ ∘ %rbx)[63:0] = 0x0₆₄
s.add(P6)

s.check()

from z3 import *
s = Solver();
def prove(f):
  print f
  s = Solver()
  s.add(Not(f))
  if s.check() == unsat:
    print "proved"
  else:
    print "failed to prove"

P1 = (0x0₁ ∘ %rcx[3:0] + 0x0₁ ∘ %rbx[3:0])[4:4] = 0x1₁ <-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(getParentValue(R1, RSMap), getParentValue(R2, RSMap)), extractMInt(addMInt(concatenateMInt(mi(1, 0), getParentValue(R1, RSMap)), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), 1, 65)), 4), mi(64, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )
s.add(P1)

P2 = (0x0₁ ∘ %rcx + 0x0₁ ∘ %rbx)[64:64] = 0x1₁ <-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), getParentValue(R1, RSMap)), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), 0, 1) )
s.add(P2)

P3 = (%rcx[63:63] = 0x1₁ ↔ %rbx[63:63] = 0x1₁) ∧ !(%rcx[63:63] = 0x1₁ ↔ (0x0₁ ∘ %rcx + 0x0₁ ∘ %rbx)[63:63] = 0x1₁) <-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(R1, RSMap), 0, 1), extractMInt(getParentValue(R2, RSMap), 0, 1))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(R1, RSMap), 0, 1), extractMInt(addMInt(concatenateMInt(mi(1, 0), getParentValue(R1, RSMap)), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )
s.add(P3)

P4 = !((0x0₁ ∘ %rcx + 0x0₁ ∘ %rbx)[0:0] = 0x1₁ ⊕ (0x0₁ ∘ %rcx + 0x0₁ ∘ %rbx)[1:1] = 0x1₁ ⊕ (0x0₁ ∘ %rcx + 0x0₁ ∘ %rbx)[2:2] = 0x1₁ ⊕ (0x0₁ ∘ %rcx + 0x0₁ ∘ %rbx)[3:3] = 0x1₁ ⊕ (0x0₁ ∘ %rcx + 0x0₁ ∘ %rbx)[4:4] = 0x1₁ ⊕ (0x0₁ ∘ %rcx + 0x0₁ ∘ %rbx)[5:5] = 0x1₁ ⊕ (0x0₁ ∘ %rcx + 0x0₁ ∘ %rbx)[6:6] = 0x1₁ ⊕ (0x0₁ ∘ %rcx + 0x0₁ ∘ %rbx)[7:7] = 0x1₁) <-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(concatenateMInt(mi(1, 0), getParentValue(R1, RSMap)), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), 57, 65), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )
s.add(P4)

P5 = (0x0₁ ∘ %rcx + 0x0₁ ∘ %rbx)[63:0] <-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), getParentValue(R1, RSMap)), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), 1, 65) )
s.add(P5)

P6 = (0x0₁ ∘ %rcx + 0x0₁ ∘ %rbx)[63:63] = 0x1₁ <-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), getParentValue(R1, RSMap)), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), 1, 2) )
s.add(P6)

P7 = (0x0₁ ∘ %rcx + 0x0₁ ∘ %rbx)[63:0] = 0x0₆₄ <-> ((#ifMInt (eqMInt(extractMInt(addMInt(concatenateMInt(mi(1, 0), getParentValue(R1, RSMap)), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), 1, 65), mi(64, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )
s.add(P7)

s.check()

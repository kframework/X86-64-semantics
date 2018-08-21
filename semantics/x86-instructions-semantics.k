requires "x86-configuration.k"
requires "x86-flag-checks-syntax.k"

module X86-INSTRUCTIONS-SEMANTICS
  imports X86-CONFIGURATION
  imports X86-FLAG-CHECKS-SYNTAX

// addq-r64-r64

  rule <k>
    execinstr (addq R1:R64, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> extractMInt( addMInt( concatenateMInt( mi(1, 0), getParentValue(R1, RSMap)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 1, 65)

"CF" |-> extractMInt( addMInt( concatenateMInt( mi(1, 0), getParentValue(R1, RSMap)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 0, 1)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), getParentValue(R1, RSMap)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 64, 65), mi(1, 1)) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), getParentValue(R1, RSMap)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 63, 64), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), getParentValue(R1, RSMap)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 62, 63), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), getParentValue(R1, RSMap)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 61, 62), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), getParentValue(R1, RSMap)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 60, 61), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), getParentValue(R1, RSMap)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 59, 60), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), getParentValue(R1, RSMap)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 58, 59), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), getParentValue(R1, RSMap)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 57, 58), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> xorMInt( xorMInt( extractMInt( getParentValue(R1, RSMap), 59, 60), extractMInt( getParentValue(R2, RSMap), 59, 60)), extractMInt( addMInt( concatenateMInt( mi(1, 0), getParentValue(R1, RSMap)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 60, 61))

"ZF" |-> (#ifMInt eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), getParentValue(R1, RSMap)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 1, 65), mi(64, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> extractMInt( addMInt( concatenateMInt( mi(1, 0), getParentValue(R1, RSMap)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 1, 2)

"OF" |-> (#ifMInt ((eqMInt( extractMInt( getParentValue(R1, RSMap), 0, 1), mi(1, 1)) ==Bool eqMInt( extractMInt( getParentValue(R2, RSMap), 0, 1), mi(1, 1))) andBool (notBool (eqMInt( extractMInt( getParentValue(R1, RSMap), 0, 1), mi(1, 1)) ==Bool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), getParentValue(R1, RSMap)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 1, 2), mi(1, 1))))) #then mi(1, 1) #else mi(1, 0) #fi)
)

    </regstate>
    


// addq-r64-r64-semantics


// movl-m32-r32

  context execinstr(movl:Opcode R1:R32, HOLE:Mem,  .Operands) [result(MemOffset)]
  
  rule <k>
     execinstr (movl:Opcode R1:R32, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      
            storeToMemory(
              extractMInt( getParentValue(R1, RSMap), 32, 64),
              MemOff,
              32
            )
          
  ...</k>
    <regstate> RSMap:Map </regstate>


// subq-m64-r64

  context execinstr(subq:Opcode R1:R64, HOLE:Mem,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (subq:Opcode R1:R64, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      loadFromMemory( MemOff, 64) ~>
      execinstr (subq R1, memOffset( MemOff),  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem64:MInt):MemLoadValue ~> execinstr (subq:Opcode R1:R64, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      
            storeToMemory(
              extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( getParentValue(R1, RSMap))), mi(65, 1)), concatenateMInt( mi(1, 0), Mem64)), 1, 65),
              MemOff,
              64
            )
          
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
"CF" |-> (#ifMInt (notBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( getParentValue(R1, RSMap))), mi(65, 1)), concatenateMInt( mi(1, 0), Mem64)), 0, 1), mi(1, 1))) #then mi(1, 1) #else mi(1, 0) #fi)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( getParentValue(R1, RSMap))), mi(65, 1)), concatenateMInt( mi(1, 0), Mem64)), 64, 65), mi(1, 1)) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( getParentValue(R1, RSMap))), mi(65, 1)), concatenateMInt( mi(1, 0), Mem64)), 63, 64), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( getParentValue(R1, RSMap))), mi(65, 1)), concatenateMInt( mi(1, 0), Mem64)), 62, 63), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( getParentValue(R1, RSMap))), mi(65, 1)), concatenateMInt( mi(1, 0), Mem64)), 61, 62), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( getParentValue(R1, RSMap))), mi(65, 1)), concatenateMInt( mi(1, 0), Mem64)), 60, 61), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( getParentValue(R1, RSMap))), mi(65, 1)), concatenateMInt( mi(1, 0), Mem64)), 59, 60), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( getParentValue(R1, RSMap))), mi(65, 1)), concatenateMInt( mi(1, 0), Mem64)), 58, 59), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( getParentValue(R1, RSMap))), mi(65, 1)), concatenateMInt( mi(1, 0), Mem64)), 57, 58), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> xorMInt( xorMInt( extractMInt( getParentValue(R1, RSMap), 59, 60), extractMInt( Mem64, 59, 60)), extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( getParentValue(R1, RSMap))), mi(65, 1)), concatenateMInt( mi(1, 0), Mem64)), 60, 61))

"ZF" |-> (#ifMInt eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( getParentValue(R1, RSMap))), mi(65, 1)), concatenateMInt( mi(1, 0), Mem64)), 1, 65), mi(64, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( getParentValue(R1, RSMap))), mi(65, 1)), concatenateMInt( mi(1, 0), Mem64)), 1, 2)

"OF" |-> (#ifMInt ((eqMInt( negMInt( extractMInt( getParentValue(R1, RSMap), 0, 1)), mi(1, 1)) ==Bool eqMInt( extractMInt( Mem64, 0, 1), mi(1, 1))) andBool (notBool (eqMInt( negMInt( extractMInt( getParentValue(R1, RSMap), 0, 1)), mi(1, 1)) ==Bool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( getParentValue(R1, RSMap))), mi(65, 1)), concatenateMInt( mi(1, 0), Mem64)), 1, 2), mi(1, 1))))) #then mi(1, 1) #else mi(1, 0) #fi)
      )
    </regstate>


// alternative-opcodes

  rule <k> 
    execinstr (push:Opcode  R:R64, .Operands) =>  execinstr (pushq  R:R64, .Operands)
  ...</k>
  rule <k> 
    execinstr (pop:Opcode R:R64, .Operands) =>  execinstr (popq  R:R64, .Operands)
  ...</k>

  rule <k> 
    execinstr (mov:Opcode  R1:R64, R2:R64,  .Operands) =>  execinstr (movq  R1, R2, .Operands)
  ...</k>
  rule <k> 
    execinstr (mov:Opcode  R:R64, M:Mem,  .Operands) =>  execinstr (movq  R:R64, M:Mem, .Operands)
  ...</k>
  rule <k> 
    execinstr (mov:Opcode  M:Mem, R:R64, .Operands) =>  execinstr (movq  M:Mem, R:R64, .Operands)
  ...</k>
  rule <k> 
    execinstr(mov:Opcode Imm32:Imm, M:Mem,  .Operands) => execinstr(movl Imm32, M,  .Operands)
  ...</k>
  rule <k> 
    execinstr (mov Imm32:Imm, R2:R32,  .Operands) => execinstr (movl Imm32, R2,  .Operands)
  ...</k>
  rule <k> 
    execinstr(mov:Opcode R1:R32, M:Mem,  .Operands) => execinstr(movl R1, M,  .Operands)
  ...</k>
  rule <k> 
    execinstr(mov:Opcode M:Mem, R1:R32, .Operands) => execinstr(movl M, R1,  .Operands)
  ...</k>

  rule <k> 
    execinstr(sub:Opcode Imm32:Imm, M:Mem,  .Operands) => execinstr(subl:Opcode Imm32:Imm, M:Mem,  .Operands)
  ...</k>
  rule <k> 
    execinstr (sub Imm32:Imm, R2:R64,  .Operands) => execinstr (subq Imm32, R2,  .Operands)
  ...</k>
  rule <k> 
    execinstr (sub M:Mem, R2:R32,  .Operands) => execinstr (subl M, R2,  .Operands)
  ...</k>

  rule <k> 
    execinstr (dec R1:R32,  .Operands) => execinstr (decl R1,  .Operands)
  ...</k>

  rule <k> 
    execinstr (dec R1:R32,  .Operands) => execinstr (decl R1,  .Operands)
  ...</k>

   rule <k> 
    execinstr(cmp:Opcode M:Mem, R2:R32,  .Operands) => execinstr(cmpl M, R2,  .Operands)
  ...</k>

   rule <k> 
    execinstr(cmp:Opcode R2:R32, M:Mem, .Operands) => execinstr(cmpl R2, M,  .Operands)
  ...</k>
   rule <k> 
    execinstr(cmp:Opcode R1:R32, R2:R32, .Operands) => execinstr(cmpl R1, R2,  .Operands)
  ...</k>


   rule <k> 
    execinstr(lea:Opcode M:Mem, R2:R64,  .Operands) => execinstr(leaq M, R2,  .Operands)
  ...</k>
  
   rule <k> 
    execinstr(add:Opcode R1:R64, R2:R64,  .Operands) => execinstr(addq R1, R2,  .Operands)
  ...</k>

   rule <k> 
    execinstr(inc:Opcode R1:R64, .Operands) => execinstr(incq R1,  .Operands)
  ...</k>

   rule <k> 
    execinstr(nop:Opcode M:Mem,  .Operands) => execinstr(nopw M,  .Operands)
  ...</k>

   rule <k> 
    execinstr(retq:Opcode .Operands) => execinstr(ret  .Operands)
  ...</k>
   rule <k> 
    execinstr(leaveq:Opcode .Operands) => execinstr(leave  .Operands)
  ...</k>
   rule <k> 
    execinstr (callq:Opcode LabelId:X86Id, .Operands) => execinstr (call LabelId, .Operands)
  ...</k>
   rule <k> 
    execinstr (jmpq:Opcode LabelId:X86Id, .Operands) => execinstr (jmp LabelId, .Operands)
  ...</k>


// addq-r64-imm32

  rule <k>
    execinstr (addq Imm32:Imm, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> extractMInt( addMInt( concatenateMInt( mi(1, 0), mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32)))), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 1, 65)

"CF" |-> extractMInt( addMInt( concatenateMInt( mi(1, 0), mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32)))), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 0, 1)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32)))), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 64, 65), mi(1, 1)) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32)))), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 63, 64), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32)))), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 62, 63), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32)))), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 61, 62), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32)))), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 60, 61), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32)))), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 59, 60), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32)))), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 58, 59), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32)))), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 57, 58), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> xorMInt( xorMInt( extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 27, 28), extractMInt( getParentValue(R2, RSMap), 59, 60)), extractMInt( addMInt( concatenateMInt( mi(1, 0), mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32)))), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 60, 61))

"ZF" |-> (#ifMInt eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32)))), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 1, 65), mi(64, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> extractMInt( addMInt( concatenateMInt( mi(1, 0), mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32)))), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 1, 2)

"OF" |-> (#ifMInt ((eqMInt( extractMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32))), 0, 1), mi(1, 1)) ==Bool eqMInt( extractMInt( getParentValue(R2, RSMap), 0, 1), mi(1, 1))) andBool (notBool (eqMInt( extractMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32))), 0, 1), mi(1, 1)) ==Bool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32)))), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 1, 2), mi(1, 1))))) #then mi(1, 1) #else mi(1, 0) #fi)
)

    </regstate>
    


// addq-r64-imm32-semantics


// cmpl-m32-imm8

  context execinstr(cmpl:Opcode Imm8:Imm, HOLE:Mem,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (cmpl:Opcode Imm8:Imm, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      loadFromMemory( MemOff, 32) ~>
      execinstr (cmpl Imm8, memOffset( MemOff),  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem32:MInt):MemLoadValue ~> execinstr (cmpl:Opcode Imm8:Imm, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      .
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
"CF" |-> (#ifMInt (notBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(32, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8))))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 0, 1), mi(1, 1))) #then mi(1, 1) #else mi(1, 0) #fi)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(32, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8))))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 32, 33), mi(1, 1)) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(32, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8))))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 31, 32), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(32, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8))))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 30, 31), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(32, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8))))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 29, 30), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(32, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8))))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 28, 29), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(32, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8))))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 27, 28), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(32, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8))))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 26, 27), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(32, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8))))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 25, 26), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> xorMInt( xorMInt( extractMInt( handleImmediateWithSignExtend(Imm8, 8, 8), 3, 4), extractMInt( Mem32, 27, 28)), extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(32, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8))))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 28, 29))

"ZF" |-> (#ifMInt eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(32, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8))))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 1, 33), mi(32, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(32, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8))))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 1, 2)

"OF" |-> (#ifMInt ((eqMInt( negMInt( extractMInt( mi(32, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8))), 0, 1)), mi(1, 1)) ==Bool eqMInt( extractMInt( Mem32, 0, 1), mi(1, 1))) andBool (notBool (eqMInt( negMInt( extractMInt( mi(32, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8))), 0, 1)), mi(1, 1)) ==Bool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(32, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8))))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 1, 2), mi(1, 1))))) #then mi(1, 1) #else mi(1, 0) #fi)
      )
    </regstate>


// subq-r64-m64

  context execinstr(subq:Opcode HOLE:Mem, R2:R64,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (subq:Opcode memOffset( MemOff:MInt):MemOffset, R2:R64,  .Operands) =>
      loadFromMemory( MemOff, 64) ~>
      execinstr (subq memOffset( MemOff), R2,  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem64:MInt):MemLoadValue ~> execinstr (subq:Opcode memOffset( MemOff:MInt):MemOffset, R2:R64,  .Operands) =>
      .
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem64)), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 1, 65)

"CF" |-> (#ifMInt (notBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem64)), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 0, 1), mi(1, 1))) #then mi(1, 1) #else mi(1, 0) #fi)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem64)), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 64, 65), mi(1, 1)) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem64)), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 63, 64), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem64)), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 62, 63), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem64)), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 61, 62), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem64)), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 60, 61), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem64)), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 59, 60), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem64)), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 58, 59), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem64)), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 57, 58), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> xorMInt( xorMInt( extractMInt( Mem64, 59, 60), extractMInt( getParentValue(R2, RSMap), 59, 60)), extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem64)), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 60, 61))

"ZF" |-> (#ifMInt eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem64)), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 1, 65), mi(64, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem64)), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 1, 2)

"OF" |-> (#ifMInt ((eqMInt( negMInt( extractMInt( Mem64, 0, 1)), mi(1, 1)) ==Bool eqMInt( extractMInt( getParentValue(R2, RSMap), 0, 1), mi(1, 1))) andBool (notBool (eqMInt( negMInt( extractMInt( Mem64, 0, 1)), mi(1, 1)) ==Bool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem64)), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 1, 2), mi(1, 1))))) #then mi(1, 1) #else mi(1, 0) #fi)
      )
    </regstate>


// movq-r64-r64

  rule <k>
    execinstr (movq R1:R64, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> getParentValue(R1, RSMap)
)

    </regstate>
    


// movq-r64-r64-semantics


// subl-m32-imm32

  context execinstr(subl:Opcode Imm32:Imm, HOLE:Mem,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (subl:Opcode Imm32:Imm, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      loadFromMemory( MemOff, 32) ~>
      execinstr (subl Imm32, memOffset( MemOff),  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem32:MInt):MemLoadValue ~> execinstr (subl:Opcode Imm32:Imm, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      
            storeToMemory(
              extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm32, 32, 32))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 1, 33),
              MemOff,
              32
            )
          
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
"CF" |-> (#ifMInt (notBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm32, 32, 32))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 0, 1), mi(1, 1))) #then mi(1, 1) #else mi(1, 0) #fi)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm32, 32, 32))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 32, 33), mi(1, 1)) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm32, 32, 32))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 31, 32), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm32, 32, 32))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 30, 31), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm32, 32, 32))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 29, 30), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm32, 32, 32))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 28, 29), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm32, 32, 32))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 27, 28), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm32, 32, 32))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 26, 27), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm32, 32, 32))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 25, 26), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> xorMInt( xorMInt( extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 27, 28), extractMInt( Mem32, 27, 28)), extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm32, 32, 32))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 28, 29))

"ZF" |-> (#ifMInt eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm32, 32, 32))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 1, 33), mi(32, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm32, 32, 32))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 1, 2)

"OF" |-> (#ifMInt ((eqMInt( negMInt( extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 0, 1)), mi(1, 1)) ==Bool eqMInt( extractMInt( Mem32, 0, 1), mi(1, 1))) andBool (notBool (eqMInt( negMInt( extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 0, 1)), mi(1, 1)) ==Bool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm32, 32, 32))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 1, 2), mi(1, 1))))) #then mi(1, 1) #else mi(1, 0) #fi)
      )
    </regstate>


// incl-m32

  context execinstr(incl:Opcode HOLE:Mem,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (incl:Opcode memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      loadFromMemory( MemOff, 32) ~>
      execinstr (incl memOffset( MemOff),  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem32:MInt):MemLoadValue ~> execinstr (incl:Opcode memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      
            storeToMemory(
              addMInt( Mem32, mi(32, 1)),
              MemOff,
              32
            )
          
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
"PF" |-> (#ifMInt (notBool (((((((eqMInt( extractMInt( addMInt( Mem32, mi(32, 1)), 31, 32), mi(1, 1)) xorBool eqMInt( extractMInt( addMInt( Mem32, mi(32, 1)), 30, 31), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( Mem32, mi(32, 1)), 29, 30), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( Mem32, mi(32, 1)), 28, 29), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( Mem32, mi(32, 1)), 27, 28), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( Mem32, mi(32, 1)), 26, 27), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( Mem32, mi(32, 1)), 25, 26), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( Mem32, mi(32, 1)), 24, 25), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> (#ifMInt eqMInt( extractMInt( Mem32, 28, 32), mi(4, 15)) #then mi(1, 1) #else mi(1, 0) #fi)

"ZF" |-> (#ifMInt eqMInt( addMInt( Mem32, mi(32, 1)), mi(32, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> extractMInt( addMInt( Mem32, mi(32, 1)), 0, 1)

"OF" |-> (#ifMInt ((notBool eqMInt( extractMInt( Mem32, 0, 1), mi(1, 1))) andBool eqMInt( extractMInt( Mem32, 1, 32), mi(31, 18446744073709551615))) #then mi(1, 1) #else mi(1, 0) #fi)
      )
    </regstate>


// movl-r32-r32

  rule <k>
    execinstr (movl R1:R32, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( mi(32, 0), extractMInt( getParentValue(R1, RSMap), 32, 64))
)

    </regstate>
    


// movl-r32-r32-semantics


// subq-r64-r64

  rule <k>
    execinstr (subq R1:R64, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( getParentValue(R1, RSMap))), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 1, 65)

"CF" |-> (#ifMInt (notBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( getParentValue(R1, RSMap))), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 0, 1), mi(1, 1))) #then mi(1, 1) #else mi(1, 0) #fi)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( getParentValue(R1, RSMap))), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 64, 65), mi(1, 1)) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( getParentValue(R1, RSMap))), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 63, 64), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( getParentValue(R1, RSMap))), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 62, 63), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( getParentValue(R1, RSMap))), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 61, 62), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( getParentValue(R1, RSMap))), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 60, 61), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( getParentValue(R1, RSMap))), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 59, 60), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( getParentValue(R1, RSMap))), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 58, 59), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( getParentValue(R1, RSMap))), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 57, 58), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> xorMInt( xorMInt( extractMInt( getParentValue(R1, RSMap), 59, 60), extractMInt( getParentValue(R2, RSMap), 59, 60)), extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( getParentValue(R1, RSMap))), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 60, 61))

"ZF" |-> (#ifMInt eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( getParentValue(R1, RSMap))), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 1, 65), mi(64, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( getParentValue(R1, RSMap))), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 1, 2)

"OF" |-> (#ifMInt ((eqMInt( negMInt( extractMInt( getParentValue(R1, RSMap), 0, 1)), mi(1, 1)) ==Bool eqMInt( extractMInt( getParentValue(R2, RSMap), 0, 1), mi(1, 1))) andBool (notBool (eqMInt( negMInt( extractMInt( getParentValue(R1, RSMap), 0, 1)), mi(1, 1)) ==Bool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( getParentValue(R1, RSMap))), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 1, 2), mi(1, 1))))) #then mi(1, 1) #else mi(1, 0) #fi)
)

    </regstate>
    


// subq-r64-r64-semantics


// addq-m64-r64

  context execinstr(addq:Opcode R1:R64, HOLE:Mem,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (addq:Opcode R1:R64, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      loadFromMemory( MemOff, 64) ~>
      execinstr (addq R1, memOffset( MemOff),  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem64:MInt):MemLoadValue ~> execinstr (addq:Opcode R1:R64, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      
            storeToMemory(
              extractMInt( addMInt( concatenateMInt( mi(1, 0), getParentValue(R1, RSMap)), concatenateMInt( mi(1, 0), Mem64)), 1, 65),
              MemOff,
              64
            )
          
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
"CF" |-> extractMInt( addMInt( concatenateMInt( mi(1, 0), getParentValue(R1, RSMap)), concatenateMInt( mi(1, 0), Mem64)), 0, 1)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), getParentValue(R1, RSMap)), concatenateMInt( mi(1, 0), Mem64)), 64, 65), mi(1, 1)) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), getParentValue(R1, RSMap)), concatenateMInt( mi(1, 0), Mem64)), 63, 64), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), getParentValue(R1, RSMap)), concatenateMInt( mi(1, 0), Mem64)), 62, 63), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), getParentValue(R1, RSMap)), concatenateMInt( mi(1, 0), Mem64)), 61, 62), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), getParentValue(R1, RSMap)), concatenateMInt( mi(1, 0), Mem64)), 60, 61), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), getParentValue(R1, RSMap)), concatenateMInt( mi(1, 0), Mem64)), 59, 60), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), getParentValue(R1, RSMap)), concatenateMInt( mi(1, 0), Mem64)), 58, 59), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), getParentValue(R1, RSMap)), concatenateMInt( mi(1, 0), Mem64)), 57, 58), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> xorMInt( xorMInt( extractMInt( getParentValue(R1, RSMap), 59, 60), extractMInt( Mem64, 59, 60)), extractMInt( addMInt( concatenateMInt( mi(1, 0), getParentValue(R1, RSMap)), concatenateMInt( mi(1, 0), Mem64)), 60, 61))

"ZF" |-> (#ifMInt eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), getParentValue(R1, RSMap)), concatenateMInt( mi(1, 0), Mem64)), 1, 65), mi(64, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> extractMInt( addMInt( concatenateMInt( mi(1, 0), getParentValue(R1, RSMap)), concatenateMInt( mi(1, 0), Mem64)), 1, 2)

"OF" |-> (#ifMInt ((eqMInt( extractMInt( getParentValue(R1, RSMap), 0, 1), mi(1, 1)) ==Bool eqMInt( extractMInt( Mem64, 0, 1), mi(1, 1))) andBool (notBool (eqMInt( extractMInt( getParentValue(R1, RSMap), 0, 1), mi(1, 1)) ==Bool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), getParentValue(R1, RSMap)), concatenateMInt( mi(1, 0), Mem64)), 1, 2), mi(1, 1))))) #then mi(1, 1) #else mi(1, 0) #fi)
      )
    </regstate>



// retq

  rule <k> 
    execinstr (ret .Operands) => 
    incRSPInBytes(8) ~>
    loadFromMemory(getRegisterValue(%rsp, RSMap), 64)
    ~> execinstr(ret .Operands)
  ...</k>
    <regstate> RSMap </regstate>


  rule <k> 
    memLoadValue(MemVal:MInt):MemLoadValue ~> execinstr (ret .Operands) =>  .
  ...</k>
      <regstate>... "RIP" |-> ( PC => MemVal)  ...</regstate>


// addq-r64-m64

  context execinstr(addq:Opcode HOLE:Mem, R2:R64,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (addq:Opcode memOffset( MemOff:MInt):MemOffset, R2:R64,  .Operands) =>
      loadFromMemory( MemOff, 64) ~>
      execinstr (addq memOffset( MemOff), R2,  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem64:MInt):MemLoadValue ~> execinstr (addq:Opcode memOffset( MemOff:MInt):MemOffset, R2:R64,  .Operands) =>
      .
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> extractMInt( addMInt( concatenateMInt( mi(1, 0), Mem64), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 1, 65)

"CF" |-> extractMInt( addMInt( concatenateMInt( mi(1, 0), Mem64), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 0, 1)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), Mem64), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 64, 65), mi(1, 1)) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), Mem64), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 63, 64), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), Mem64), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 62, 63), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), Mem64), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 61, 62), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), Mem64), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 60, 61), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), Mem64), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 59, 60), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), Mem64), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 58, 59), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), Mem64), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 57, 58), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> xorMInt( xorMInt( extractMInt( Mem64, 59, 60), extractMInt( getParentValue(R2, RSMap), 59, 60)), extractMInt( addMInt( concatenateMInt( mi(1, 0), Mem64), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 60, 61))

"ZF" |-> (#ifMInt eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), Mem64), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 1, 65), mi(64, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> extractMInt( addMInt( concatenateMInt( mi(1, 0), Mem64), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 1, 2)

"OF" |-> (#ifMInt ((eqMInt( extractMInt( Mem64, 0, 1), mi(1, 1)) ==Bool eqMInt( extractMInt( getParentValue(R2, RSMap), 0, 1), mi(1, 1))) andBool (notBool (eqMInt( extractMInt( Mem64, 0, 1), mi(1, 1)) ==Bool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), Mem64), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 1, 2), mi(1, 1))))) #then mi(1, 1) #else mi(1, 0) #fi)
      )
    </regstate>


// subq-r64-imm32

  rule <k>
    execinstr (subq Imm32:Imm, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32))))), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 1, 65)

"CF" |-> (#ifMInt (notBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32))))), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 0, 1), mi(1, 1))) #then mi(1, 1) #else mi(1, 0) #fi)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32))))), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 64, 65), mi(1, 1)) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32))))), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 63, 64), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32))))), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 62, 63), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32))))), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 61, 62), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32))))), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 60, 61), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32))))), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 59, 60), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32))))), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 58, 59), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32))))), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 57, 58), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> xorMInt( xorMInt( extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 27, 28), extractMInt( getParentValue(R2, RSMap), 59, 60)), extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32))))), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 60, 61))

"ZF" |-> (#ifMInt eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32))))), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 1, 65), mi(64, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32))))), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 1, 2)

"OF" |-> (#ifMInt ((eqMInt( negMInt( extractMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32))), 0, 1)), mi(1, 1)) ==Bool eqMInt( extractMInt( getParentValue(R2, RSMap), 0, 1), mi(1, 1))) andBool (notBool (eqMInt( negMInt( extractMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32))), 0, 1)), mi(1, 1)) ==Bool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32))))), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 1, 2), mi(1, 1))))) #then mi(1, 1) #else mi(1, 0) #fi)
)

    </regstate>
    


// subq-r64-imm32-semantics

// jge-label

  rule <k> 
    execinstr (jge LabelId:X86Id, .Operands) => .
  ...</k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> Target))
      </regstate>
      <functargets>... LabelId |-> Target  ...</functargets>
        requires  eqMInt({RSMap["SF"]}:>MInt, {RSMap["OF"]}:>MInt)

  rule <k> 
    execinstr (jge LabelId:X86Id, .Operands) => .
  ...</k>
      <regstate> RSMap:Map </regstate> 
        requires  notBool eqMInt({RSMap["SF"]}:>MInt, {RSMap["OF"]}:>MInt)


// cmpl-r32-m32

  context execinstr(cmpl:Opcode HOLE:Mem, R2:R32,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (cmpl:Opcode memOffset( MemOff:MInt):MemOffset, R2:R32,  .Operands) =>
      loadFromMemory( MemOff, 32) ~>
      execinstr (cmpl memOffset( MemOff), R2,  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem32:MInt):MemLoadValue ~> execinstr (cmpl:Opcode memOffset( MemOff:MInt):MemOffset, R2:R32,  .Operands) =>
      .
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
"CF" |-> (#ifMInt (notBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem32)), mi(33, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 0, 1), mi(1, 1))) #then mi(1, 1) #else mi(1, 0) #fi)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem32)), mi(33, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 32, 33), mi(1, 1)) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem32)), mi(33, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 31, 32), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem32)), mi(33, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 30, 31), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem32)), mi(33, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 29, 30), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem32)), mi(33, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 28, 29), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem32)), mi(33, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 27, 28), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem32)), mi(33, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 26, 27), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem32)), mi(33, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 25, 26), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> xorMInt( xorMInt( extractMInt( Mem32, 27, 28), extractMInt( getParentValue(R2, RSMap), 59, 60)), extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem32)), mi(33, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 28, 29))

"ZF" |-> (#ifMInt eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem32)), mi(33, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 1, 33), mi(32, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem32)), mi(33, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 1, 2)

"OF" |-> (#ifMInt ((eqMInt( negMInt( extractMInt( Mem32, 0, 1)), mi(1, 1)) ==Bool eqMInt( extractMInt( getParentValue(R2, RSMap), 32, 33), mi(1, 1))) andBool (notBool (eqMInt( negMInt( extractMInt( Mem32, 0, 1)), mi(1, 1)) ==Bool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem32)), mi(33, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 1, 2), mi(1, 1))))) #then mi(1, 1) #else mi(1, 0) #fi)
      )
    </regstate>


// movq-m64-r64

  context execinstr(movq:Opcode R1:R64, HOLE:Mem,  .Operands) [result(MemOffset)]
  
  rule <k>
     execinstr (movq:Opcode R1:R64, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      
            storeToMemory(
              getParentValue(R1, RSMap),
              MemOff,
              64
            )
          
  ...</k>
    <regstate> RSMap:Map </regstate>



// jmpq-label

  rule <k> 
    execinstr (jmp LabelId:X86Id, .Operands) => .
  ...</k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> Target))
      </regstate>
      <functargets>... LabelId |-> Target  ...</functargets>



// cmpl-m32-imm32

  context execinstr(cmpl:Opcode Imm32:Imm, HOLE:Mem,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (cmpl:Opcode Imm32:Imm, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      loadFromMemory( MemOff, 32) ~>
      execinstr (cmpl Imm32, memOffset( MemOff),  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem32:MInt):MemLoadValue ~> execinstr (cmpl:Opcode Imm32:Imm, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      .
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
"CF" |-> (#ifMInt (notBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm32, 32, 32))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 0, 1), mi(1, 1))) #then mi(1, 1) #else mi(1, 0) #fi)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm32, 32, 32))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 32, 33), mi(1, 1)) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm32, 32, 32))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 31, 32), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm32, 32, 32))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 30, 31), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm32, 32, 32))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 29, 30), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm32, 32, 32))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 28, 29), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm32, 32, 32))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 27, 28), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm32, 32, 32))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 26, 27), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm32, 32, 32))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 25, 26), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> xorMInt( xorMInt( extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 27, 28), extractMInt( Mem32, 27, 28)), extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm32, 32, 32))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 28, 29))

"ZF" |-> (#ifMInt eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm32, 32, 32))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 1, 33), mi(32, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm32, 32, 32))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 1, 2)

"OF" |-> (#ifMInt ((eqMInt( negMInt( extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 0, 1)), mi(1, 1)) ==Bool eqMInt( extractMInt( Mem32, 0, 1), mi(1, 1))) andBool (notBool (eqMInt( negMInt( extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 0, 1)), mi(1, 1)) ==Bool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm32, 32, 32))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 1, 2), mi(1, 1))))) #then mi(1, 1) #else mi(1, 0) #fi)
      )
    </regstate>


// addl-m32-imm8

  context execinstr(addl:Opcode Imm8:Imm, HOLE:Mem,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (addl:Opcode Imm8:Imm, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      loadFromMemory( MemOff, 32) ~>
      execinstr (addl Imm8, memOffset( MemOff),  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem32:MInt):MemLoadValue ~> execinstr (addl:Opcode Imm8:Imm, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      
            storeToMemory(
              extractMInt( addMInt( concatenateMInt( mi(1, 0), mi(32, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8)))), concatenateMInt( mi(1, 0), Mem32)), 1, 33),
              MemOff,
              32
            )
          
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
"CF" |-> extractMInt( addMInt( concatenateMInt( mi(1, 0), mi(32, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8)))), concatenateMInt( mi(1, 0), Mem32)), 0, 1)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), mi(32, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8)))), concatenateMInt( mi(1, 0), Mem32)), 32, 33), mi(1, 1)) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), mi(32, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8)))), concatenateMInt( mi(1, 0), Mem32)), 31, 32), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), mi(32, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8)))), concatenateMInt( mi(1, 0), Mem32)), 30, 31), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), mi(32, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8)))), concatenateMInt( mi(1, 0), Mem32)), 29, 30), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), mi(32, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8)))), concatenateMInt( mi(1, 0), Mem32)), 28, 29), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), mi(32, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8)))), concatenateMInt( mi(1, 0), Mem32)), 27, 28), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), mi(32, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8)))), concatenateMInt( mi(1, 0), Mem32)), 26, 27), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), mi(32, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8)))), concatenateMInt( mi(1, 0), Mem32)), 25, 26), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> xorMInt( xorMInt( extractMInt( handleImmediateWithSignExtend(Imm8, 8, 8), 3, 4), extractMInt( Mem32, 27, 28)), extractMInt( addMInt( concatenateMInt( mi(1, 0), mi(32, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8)))), concatenateMInt( mi(1, 0), Mem32)), 28, 29))

"ZF" |-> (#ifMInt eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), mi(32, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8)))), concatenateMInt( mi(1, 0), Mem32)), 1, 33), mi(32, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> extractMInt( addMInt( concatenateMInt( mi(1, 0), mi(32, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8)))), concatenateMInt( mi(1, 0), Mem32)), 1, 2)

"OF" |-> (#ifMInt ((eqMInt( extractMInt( mi(32, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8))), 0, 1), mi(1, 1)) ==Bool eqMInt( extractMInt( Mem32, 0, 1), mi(1, 1))) andBool (notBool (eqMInt( extractMInt( mi(32, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8))), 0, 1), mi(1, 1)) ==Bool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), mi(32, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8)))), concatenateMInt( mi(1, 0), Mem32)), 1, 2), mi(1, 1))))) #then mi(1, 1) #else mi(1, 0) #fi)
      )
    </regstate>


// movq-xmm-m64

  context execinstr(movq:Opcode HOLE:Mem, R2:Xmm,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (movq:Opcode memOffset( MemOff:MInt):MemOffset, R2:Xmm,  .Operands) =>
      loadFromMemory( MemOff, 64) ~>
      execinstr (movq memOffset( MemOff), R2:Xmm,  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem64:MInt):MemLoadValue ~> execinstr (movq:Opcode memOffset( MemOff:MInt):MemOffset, R2:Xmm,  .Operands) =>
      .
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 128), concatenateMInt( mi(64, 0), Mem64))
      )
    </regstate>


// movl-r32-imm32

  rule <k>
    execinstr (movl Imm32:Imm, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( mi(32, 0), handleImmediateWithSignExtend(Imm32, 32, 32))
)

    </regstate>
    


// movl-r32-imm32-semantics


// movl-r32-label

  rule <k>
    execinstr (movl ($ L:X86Id), R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( mi(32, 0), LoadAddr)
)

    </regstate>
        <functargets>...  L |-> LoadAddr:PointerVal  ...</functargets>
    


// addq-m64-imm32

  context execinstr(addq:Opcode Imm32:Imm, HOLE:Mem,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (addq:Opcode Imm32:Imm, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      loadFromMemory( MemOff, 64) ~>
      execinstr (addq Imm32, memOffset( MemOff),  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem64:MInt):MemLoadValue ~> execinstr (addq:Opcode Imm32:Imm, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      
            storeToMemory(
              extractMInt( addMInt( concatenateMInt( mi(1, 0), mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32)))), concatenateMInt( mi(1, 0), Mem64)), 1, 65),
              MemOff,
              64
            )
          
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
"CF" |-> extractMInt( addMInt( concatenateMInt( mi(1, 0), mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32)))), concatenateMInt( mi(1, 0), Mem64)), 0, 1)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32)))), concatenateMInt( mi(1, 0), Mem64)), 64, 65), mi(1, 1)) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32)))), concatenateMInt( mi(1, 0), Mem64)), 63, 64), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32)))), concatenateMInt( mi(1, 0), Mem64)), 62, 63), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32)))), concatenateMInt( mi(1, 0), Mem64)), 61, 62), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32)))), concatenateMInt( mi(1, 0), Mem64)), 60, 61), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32)))), concatenateMInt( mi(1, 0), Mem64)), 59, 60), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32)))), concatenateMInt( mi(1, 0), Mem64)), 58, 59), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32)))), concatenateMInt( mi(1, 0), Mem64)), 57, 58), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> xorMInt( xorMInt( extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 27, 28), extractMInt( Mem64, 59, 60)), extractMInt( addMInt( concatenateMInt( mi(1, 0), mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32)))), concatenateMInt( mi(1, 0), Mem64)), 60, 61))

"ZF" |-> (#ifMInt eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32)))), concatenateMInt( mi(1, 0), Mem64)), 1, 65), mi(64, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> extractMInt( addMInt( concatenateMInt( mi(1, 0), mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32)))), concatenateMInt( mi(1, 0), Mem64)), 1, 2)

"OF" |-> (#ifMInt ((eqMInt( extractMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32))), 0, 1), mi(1, 1)) ==Bool eqMInt( extractMInt( Mem64, 0, 1), mi(1, 1))) andBool (notBool (eqMInt( extractMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32))), 0, 1), mi(1, 1)) ==Bool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32)))), concatenateMInt( mi(1, 0), Mem64)), 1, 2), mi(1, 1))))) #then mi(1, 1) #else mi(1, 0) #fi)
      )
    </regstate>


// cmpl-m32-r32

  context execinstr(cmpl:Opcode R1:R32, HOLE:Mem,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (cmpl:Opcode R1:R32, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      loadFromMemory( MemOff, 32) ~>
      execinstr (cmpl R1, memOffset( MemOff),  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem32:MInt):MemLoadValue ~> execinstr (cmpl:Opcode R1:R32, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      .
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
"CF" |-> (#ifMInt (notBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 32, 64))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 0, 1), mi(1, 1))) #then mi(1, 1) #else mi(1, 0) #fi)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 32, 64))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 32, 33), mi(1, 1)) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 32, 64))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 31, 32), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 32, 64))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 30, 31), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 32, 64))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 29, 30), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 32, 64))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 28, 29), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 32, 64))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 27, 28), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 32, 64))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 26, 27), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 32, 64))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 25, 26), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> xorMInt( xorMInt( extractMInt( getParentValue(R1, RSMap), 59, 60), extractMInt( Mem32, 27, 28)), extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 32, 64))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 28, 29))

"ZF" |-> (#ifMInt eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 32, 64))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 1, 33), mi(32, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 32, 64))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 1, 2)

"OF" |-> (#ifMInt ((eqMInt( negMInt( extractMInt( getParentValue(R1, RSMap), 32, 33)), mi(1, 1)) ==Bool eqMInt( extractMInt( Mem32, 0, 1), mi(1, 1))) andBool (notBool (eqMInt( negMInt( extractMInt( getParentValue(R1, RSMap), 32, 33)), mi(1, 1)) ==Bool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 32, 64))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 1, 2), mi(1, 1))))) #then mi(1, 1) #else mi(1, 0) #fi)
      )
    </regstate>


// movl-r32-m32

  context execinstr(movl:Opcode HOLE:Mem, R2:R32,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (movl:Opcode memOffset( MemOff:MInt):MemOffset, R2:R32,  .Operands) =>
      loadFromMemory( MemOff, 32) ~>
      execinstr (movl memOffset( MemOff), R2,  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem32:MInt):MemLoadValue ~> execinstr (movl:Opcode memOffset( MemOff:MInt):MemOffset, R2:R32,  .Operands) =>
      .
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( mi(32, 0), Mem32)
      )
    </regstate>


// subl-m32-imm8

  context execinstr(subl:Opcode Imm8:Imm, HOLE:Mem,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (subl:Opcode Imm8:Imm, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      loadFromMemory( MemOff, 32) ~>
      execinstr (subl Imm8, memOffset( MemOff),  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem32:MInt):MemLoadValue ~> execinstr (subl:Opcode Imm8:Imm, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      
            storeToMemory(
              extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(32, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8))))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 1, 33),
              MemOff,
              32
            )
          
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
"CF" |-> (#ifMInt (notBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(32, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8))))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 0, 1), mi(1, 1))) #then mi(1, 1) #else mi(1, 0) #fi)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(32, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8))))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 32, 33), mi(1, 1)) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(32, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8))))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 31, 32), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(32, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8))))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 30, 31), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(32, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8))))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 29, 30), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(32, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8))))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 28, 29), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(32, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8))))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 27, 28), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(32, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8))))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 26, 27), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(32, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8))))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 25, 26), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> xorMInt( xorMInt( extractMInt( handleImmediateWithSignExtend(Imm8, 8, 8), 3, 4), extractMInt( Mem32, 27, 28)), extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(32, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8))))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 28, 29))

"ZF" |-> (#ifMInt eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(32, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8))))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 1, 33), mi(32, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(32, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8))))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 1, 2)

"OF" |-> (#ifMInt ((eqMInt( negMInt( extractMInt( mi(32, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8))), 0, 1)), mi(1, 1)) ==Bool eqMInt( extractMInt( Mem32, 0, 1), mi(1, 1))) andBool (notBool (eqMInt( negMInt( extractMInt( mi(32, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8))), 0, 1)), mi(1, 1)) ==Bool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(32, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8))))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 1, 2), mi(1, 1))))) #then mi(1, 1) #else mi(1, 0) #fi)
      )
    </regstate>


// decl-m32

  context execinstr(decl:Opcode HOLE:Mem,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (decl:Opcode memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      loadFromMemory( MemOff, 32) ~>
      execinstr (decl memOffset( MemOff),  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem32:MInt):MemLoadValue ~> execinstr (decl:Opcode memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      
            storeToMemory(
              subMInt( Mem32, mi(32, 1)),
              MemOff,
              32
            )
          
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
"PF" |-> (#ifMInt (notBool (((((((eqMInt( extractMInt( subMInt( Mem32, mi(32, 1)), 31, 32), mi(1, 1)) xorBool eqMInt( extractMInt( subMInt( Mem32, mi(32, 1)), 30, 31), mi(1, 1))) xorBool eqMInt( extractMInt( subMInt( Mem32, mi(32, 1)), 29, 30), mi(1, 1))) xorBool eqMInt( extractMInt( subMInt( Mem32, mi(32, 1)), 28, 29), mi(1, 1))) xorBool eqMInt( extractMInt( subMInt( Mem32, mi(32, 1)), 27, 28), mi(1, 1))) xorBool eqMInt( extractMInt( subMInt( Mem32, mi(32, 1)), 26, 27), mi(1, 1))) xorBool eqMInt( extractMInt( subMInt( Mem32, mi(32, 1)), 25, 26), mi(1, 1))) xorBool eqMInt( extractMInt( subMInt( Mem32, mi(32, 1)), 24, 25), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> (#ifMInt eqMInt( extractMInt( Mem32, 28, 32), mi(4, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"ZF" |-> (#ifMInt eqMInt( subMInt( Mem32, mi(32, 1)), mi(32, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> extractMInt( subMInt( Mem32, mi(32, 1)), 0, 1)

"OF" |-> (#ifMInt (eqMInt( extractMInt( Mem32, 0, 1), mi(1, 1)) andBool eqMInt( extractMInt( Mem32, 1, 32), mi(31, 0))) #then mi(1, 1) #else mi(1, 0) #fi)
      )
    </regstate>


// subq-m64-imm32

  context execinstr(subq:Opcode Imm32:Imm, HOLE:Mem,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (subq:Opcode Imm32:Imm, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      loadFromMemory( MemOff, 64) ~>
      execinstr (subq Imm32, memOffset( MemOff),  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem64:MInt):MemLoadValue ~> execinstr (subq:Opcode Imm32:Imm, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      
            storeToMemory(
              extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32))))), mi(65, 1)), concatenateMInt( mi(1, 0), Mem64)), 1, 65),
              MemOff,
              64
            )
          
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
"CF" |-> (#ifMInt (notBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32))))), mi(65, 1)), concatenateMInt( mi(1, 0), Mem64)), 0, 1), mi(1, 1))) #then mi(1, 1) #else mi(1, 0) #fi)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32))))), mi(65, 1)), concatenateMInt( mi(1, 0), Mem64)), 64, 65), mi(1, 1)) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32))))), mi(65, 1)), concatenateMInt( mi(1, 0), Mem64)), 63, 64), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32))))), mi(65, 1)), concatenateMInt( mi(1, 0), Mem64)), 62, 63), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32))))), mi(65, 1)), concatenateMInt( mi(1, 0), Mem64)), 61, 62), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32))))), mi(65, 1)), concatenateMInt( mi(1, 0), Mem64)), 60, 61), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32))))), mi(65, 1)), concatenateMInt( mi(1, 0), Mem64)), 59, 60), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32))))), mi(65, 1)), concatenateMInt( mi(1, 0), Mem64)), 58, 59), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32))))), mi(65, 1)), concatenateMInt( mi(1, 0), Mem64)), 57, 58), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> xorMInt( xorMInt( extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 27, 28), extractMInt( Mem64, 59, 60)), extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32))))), mi(65, 1)), concatenateMInt( mi(1, 0), Mem64)), 60, 61))

"ZF" |-> (#ifMInt eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32))))), mi(65, 1)), concatenateMInt( mi(1, 0), Mem64)), 1, 65), mi(64, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32))))), mi(65, 1)), concatenateMInt( mi(1, 0), Mem64)), 1, 2)

"OF" |-> (#ifMInt ((eqMInt( negMInt( extractMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32))), 0, 1)), mi(1, 1)) ==Bool eqMInt( extractMInt( Mem64, 0, 1), mi(1, 1))) andBool (notBool (eqMInt( negMInt( extractMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32))), 0, 1)), mi(1, 1)) ==Bool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32))))), mi(65, 1)), concatenateMInt( mi(1, 0), Mem64)), 1, 2), mi(1, 1))))) #then mi(1, 1) #else mi(1, 0) #fi)
      )
    </regstate>


// leaq-r64-m64

  context execinstr(leaq:Opcode HOLE:Mem, R2:R64,  .Operands) [result(MemOffset)]
  
  rule <k>
     execinstr (leaq:Opcode memOffset( MemOff:MInt):MemOffset, R2:R64,  .Operands) =>
      .
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> MemOff
      )
    </regstate>


// movl-m32-imm32

  context execinstr(movl:Opcode Imm32:Imm, HOLE:Mem,  .Operands) [result(MemOffset)]
  
  rule <k>
     execinstr (movl:Opcode Imm32:Imm, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      
            storeToMemory(
              handleImmediateWithSignExtend(Imm32, 32, 32),
              MemOff,
              32
            )
          
  ...</k>
    <regstate> RSMap:Map </regstate>


// nop

  rule <k>
    execinstr (nop  .Operands) => .
  ...</k>


// nop-semantics


// addq-m64-imm8

  context execinstr(addq:Opcode Imm8:Imm, HOLE:Mem,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (addq:Opcode Imm8:Imm, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      loadFromMemory( MemOff, 64) ~>
      execinstr (addq Imm8, memOffset( MemOff),  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem64:MInt):MemLoadValue ~> execinstr (addq:Opcode Imm8:Imm, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      
            storeToMemory(
              extractMInt( addMInt( concatenateMInt( mi(1, 0), mi(64, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8)))), concatenateMInt( mi(1, 0), Mem64)), 1, 65),
              MemOff,
              64
            )
          
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
"CF" |-> extractMInt( addMInt( concatenateMInt( mi(1, 0), mi(64, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8)))), concatenateMInt( mi(1, 0), Mem64)), 0, 1)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), mi(64, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8)))), concatenateMInt( mi(1, 0), Mem64)), 64, 65), mi(1, 1)) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), mi(64, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8)))), concatenateMInt( mi(1, 0), Mem64)), 63, 64), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), mi(64, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8)))), concatenateMInt( mi(1, 0), Mem64)), 62, 63), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), mi(64, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8)))), concatenateMInt( mi(1, 0), Mem64)), 61, 62), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), mi(64, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8)))), concatenateMInt( mi(1, 0), Mem64)), 60, 61), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), mi(64, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8)))), concatenateMInt( mi(1, 0), Mem64)), 59, 60), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), mi(64, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8)))), concatenateMInt( mi(1, 0), Mem64)), 58, 59), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), mi(64, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8)))), concatenateMInt( mi(1, 0), Mem64)), 57, 58), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> xorMInt( xorMInt( extractMInt( handleImmediateWithSignExtend(Imm8, 8, 8), 3, 4), extractMInt( Mem64, 59, 60)), extractMInt( addMInt( concatenateMInt( mi(1, 0), mi(64, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8)))), concatenateMInt( mi(1, 0), Mem64)), 60, 61))

"ZF" |-> (#ifMInt eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), mi(64, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8)))), concatenateMInt( mi(1, 0), Mem64)), 1, 65), mi(64, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> extractMInt( addMInt( concatenateMInt( mi(1, 0), mi(64, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8)))), concatenateMInt( mi(1, 0), Mem64)), 1, 2)

"OF" |-> (#ifMInt ((eqMInt( extractMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8))), 0, 1), mi(1, 1)) ==Bool eqMInt( extractMInt( Mem64, 0, 1), mi(1, 1))) andBool (notBool (eqMInt( extractMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8))), 0, 1), mi(1, 1)) ==Bool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), mi(64, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8)))), concatenateMInt( mi(1, 0), Mem64)), 1, 2), mi(1, 1))))) #then mi(1, 1) #else mi(1, 0) #fi)
      )
    </regstate>



// callq-m64

  context execinstr(call:Opcode (HOLE:Mem, .Operands):Operands) [result(MemOffset)]

  rule <k> 
    execinstr (call memOffset(MemOff:MInt):MemOffset, .Operands) => 
      loadFromMemory(MemOff, 64) ~> execinstr (call memOffset ( MemOff ), .Operands)
  ...</k>

  rule <k> 
    memLoadValue(MemVal:MInt):MemLoadValue ~> execinstr (call memOffset(MemOff:MInt):MemOffset, .Operands) => 
      storeToMemory({RSMap["RIP"]}:>MInt, subMInt(getRegisterValue(%rsp, RSMap), mi(64, 8)), 64)  
      ~>  decRSPInBytes(8)
  ...</k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> MemVal))</regstate>


// subq-m64-imm8

  context execinstr(subq:Opcode Imm8:Imm, HOLE:Mem,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (subq:Opcode Imm8:Imm, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      loadFromMemory( MemOff, 64) ~>
      execinstr (subq Imm8, memOffset( MemOff),  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem64:MInt):MemLoadValue ~> execinstr (subq:Opcode Imm8:Imm, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      
            storeToMemory(
              extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8))))), mi(65, 1)), concatenateMInt( mi(1, 0), Mem64)), 1, 65),
              MemOff,
              64
            )
          
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
"CF" |-> (#ifMInt (notBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8))))), mi(65, 1)), concatenateMInt( mi(1, 0), Mem64)), 0, 1), mi(1, 1))) #then mi(1, 1) #else mi(1, 0) #fi)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8))))), mi(65, 1)), concatenateMInt( mi(1, 0), Mem64)), 64, 65), mi(1, 1)) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8))))), mi(65, 1)), concatenateMInt( mi(1, 0), Mem64)), 63, 64), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8))))), mi(65, 1)), concatenateMInt( mi(1, 0), Mem64)), 62, 63), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8))))), mi(65, 1)), concatenateMInt( mi(1, 0), Mem64)), 61, 62), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8))))), mi(65, 1)), concatenateMInt( mi(1, 0), Mem64)), 60, 61), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8))))), mi(65, 1)), concatenateMInt( mi(1, 0), Mem64)), 59, 60), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8))))), mi(65, 1)), concatenateMInt( mi(1, 0), Mem64)), 58, 59), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8))))), mi(65, 1)), concatenateMInt( mi(1, 0), Mem64)), 57, 58), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> xorMInt( xorMInt( extractMInt( handleImmediateWithSignExtend(Imm8, 8, 8), 3, 4), extractMInt( Mem64, 59, 60)), extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8))))), mi(65, 1)), concatenateMInt( mi(1, 0), Mem64)), 60, 61))

"ZF" |-> (#ifMInt eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8))))), mi(65, 1)), concatenateMInt( mi(1, 0), Mem64)), 1, 65), mi(64, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8))))), mi(65, 1)), concatenateMInt( mi(1, 0), Mem64)), 1, 2)

"OF" |-> (#ifMInt ((eqMInt( negMInt( extractMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8))), 0, 1)), mi(1, 1)) ==Bool eqMInt( extractMInt( Mem64, 0, 1), mi(1, 1))) andBool (notBool (eqMInt( negMInt( extractMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8))), 0, 1)), mi(1, 1)) ==Bool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8))))), mi(65, 1)), concatenateMInt( mi(1, 0), Mem64)), 1, 2), mi(1, 1))))) #then mi(1, 1) #else mi(1, 0) #fi)
      )
    </regstate>


// subl-r32-m32

  context execinstr(subl:Opcode HOLE:Mem, R2:R32,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (subl:Opcode memOffset( MemOff:MInt):MemOffset, R2:R32,  .Operands) =>
      loadFromMemory( MemOff, 32) ~>
      execinstr (subl memOffset( MemOff), R2,  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem32:MInt):MemLoadValue ~> execinstr (subl:Opcode memOffset( MemOff:MInt):MemOffset, R2:R32,  .Operands) =>
      .
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( mi(32, 0), extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem32)), mi(33, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 1, 33))

"CF" |-> (#ifMInt (notBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem32)), mi(33, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 0, 1), mi(1, 1))) #then mi(1, 1) #else mi(1, 0) #fi)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem32)), mi(33, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 32, 33), mi(1, 1)) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem32)), mi(33, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 31, 32), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem32)), mi(33, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 30, 31), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem32)), mi(33, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 29, 30), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem32)), mi(33, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 28, 29), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem32)), mi(33, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 27, 28), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem32)), mi(33, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 26, 27), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem32)), mi(33, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 25, 26), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> xorMInt( xorMInt( extractMInt( Mem32, 27, 28), extractMInt( getParentValue(R2, RSMap), 59, 60)), extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem32)), mi(33, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 28, 29))

"ZF" |-> (#ifMInt eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem32)), mi(33, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 1, 33), mi(32, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem32)), mi(33, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 1, 2)

"OF" |-> (#ifMInt ((eqMInt( negMInt( extractMInt( Mem32, 0, 1)), mi(1, 1)) ==Bool eqMInt( extractMInt( getParentValue(R2, RSMap), 32, 33), mi(1, 1))) andBool (notBool (eqMInt( negMInt( extractMInt( Mem32, 0, 1)), mi(1, 1)) ==Bool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem32)), mi(33, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 1, 2), mi(1, 1))))) #then mi(1, 1) #else mi(1, 0) #fi)
      )
    </regstate>


// addl-r32-r32

  rule <k>
    execinstr (addl R1:R32, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( mi(32, 0), extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 32, 64)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 1, 33))

"CF" |-> extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 32, 64)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 0, 1)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 32, 64)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 32, 33), mi(1, 1)) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 32, 64)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 31, 32), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 32, 64)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 30, 31), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 32, 64)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 29, 30), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 32, 64)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 28, 29), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 32, 64)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 27, 28), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 32, 64)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 26, 27), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 32, 64)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 25, 26), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> xorMInt( xorMInt( extractMInt( getParentValue(R1, RSMap), 59, 60), extractMInt( getParentValue(R2, RSMap), 59, 60)), extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 32, 64)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 28, 29))

"ZF" |-> (#ifMInt eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 32, 64)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 1, 33), mi(32, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 32, 64)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 1, 2)

"OF" |-> (#ifMInt ((eqMInt( extractMInt( getParentValue(R1, RSMap), 32, 33), mi(1, 1)) ==Bool eqMInt( extractMInt( getParentValue(R2, RSMap), 32, 33), mi(1, 1))) andBool (notBool (eqMInt( extractMInt( getParentValue(R1, RSMap), 32, 33), mi(1, 1)) ==Bool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 32, 64)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 1, 2), mi(1, 1))))) #then mi(1, 1) #else mi(1, 0) #fi)
)

    </regstate>
    


// addl-r32-r32-semantics



// jmpq-m64

  context execinstr(jmp:Opcode (HOLE:Mem, .Operands):Operands) [result(MemOffset)]

  rule <k> 
    execinstr (jmp memOffset(MemOff:MInt):MemOffset, .Operands) => 
      loadFromMemory(MemOff, 64) ~> execinstr (jmp memOffset ( MemOff ), .Operands)
  ...</k>

  rule <k> 
    memLoadValue(MemVal:MInt):MemLoadValue ~> execinstr (jmp memOffset(MemOff:MInt):MemOffset, .Operands) => .
  ...</k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> MemVal))</regstate>


// addl-r32-imm32

  rule <k>
    execinstr (addl Imm32:Imm, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( mi(32, 0), extractMInt( addMInt( concatenateMInt( mi(1, 0), handleImmediateWithSignExtend(Imm32, 32, 32)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 1, 33))

"CF" |-> extractMInt( addMInt( concatenateMInt( mi(1, 0), handleImmediateWithSignExtend(Imm32, 32, 32)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 0, 1)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), handleImmediateWithSignExtend(Imm32, 32, 32)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 32, 33), mi(1, 1)) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), handleImmediateWithSignExtend(Imm32, 32, 32)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 31, 32), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), handleImmediateWithSignExtend(Imm32, 32, 32)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 30, 31), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), handleImmediateWithSignExtend(Imm32, 32, 32)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 29, 30), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), handleImmediateWithSignExtend(Imm32, 32, 32)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 28, 29), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), handleImmediateWithSignExtend(Imm32, 32, 32)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 27, 28), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), handleImmediateWithSignExtend(Imm32, 32, 32)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 26, 27), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), handleImmediateWithSignExtend(Imm32, 32, 32)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 25, 26), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> xorMInt( xorMInt( extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 27, 28), extractMInt( getParentValue(R2, RSMap), 59, 60)), extractMInt( addMInt( concatenateMInt( mi(1, 0), handleImmediateWithSignExtend(Imm32, 32, 32)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 28, 29))

"ZF" |-> (#ifMInt eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), handleImmediateWithSignExtend(Imm32, 32, 32)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 1, 33), mi(32, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> extractMInt( addMInt( concatenateMInt( mi(1, 0), handleImmediateWithSignExtend(Imm32, 32, 32)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 1, 2)

"OF" |-> (#ifMInt ((eqMInt( extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 0, 1), mi(1, 1)) ==Bool eqMInt( extractMInt( getParentValue(R2, RSMap), 32, 33), mi(1, 1))) andBool (notBool (eqMInt( extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 0, 1), mi(1, 1)) ==Bool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), handleImmediateWithSignExtend(Imm32, 32, 32)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 1, 2), mi(1, 1))))) #then mi(1, 1) #else mi(1, 0) #fi)
)

    </regstate>
    


// addl-r32-imm32-semantics



/*@
  Push R: 
  1. ValTostore = R
  2. *(RSP-8)  = ValTostore
  3. RSP = RSP - 8
*/  
// pushq-r64

  rule <k> 
    execinstr (pushq R1:R64, .Operands) =>
      storeToMemory(
          getRegisterValue(R1, RSMap), 
          subMInt(getRegisterValue(%rsp, RSMap), mi(64, 8)), 
          64)  ~>  
      decRSPInBytes(8)
  ...</k>
  <regstate> RSMap </regstate>


// movq-r64-m64

  context execinstr(movq:Opcode HOLE:Mem, R2:R64,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (movq:Opcode memOffset( MemOff:MInt):MemOffset, R2:R64,  .Operands) =>
      loadFromMemory( MemOff, 64) ~>
      execinstr (movq memOffset( MemOff), R2,  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem64:MInt):MemLoadValue ~> execinstr (movq:Opcode memOffset( MemOff:MInt):MemOffset, R2:R64,  .Operands) =>
      .
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> Mem64
      )
    </regstate>


// addl-m32-imm32

  context execinstr(addl:Opcode Imm32:Imm, HOLE:Mem,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (addl:Opcode Imm32:Imm, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      loadFromMemory( MemOff, 32) ~>
      execinstr (addl Imm32, memOffset( MemOff),  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem32:MInt):MemLoadValue ~> execinstr (addl:Opcode Imm32:Imm, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      
            storeToMemory(
              extractMInt( addMInt( concatenateMInt( mi(1, 0), handleImmediateWithSignExtend(Imm32, 32, 32)), concatenateMInt( mi(1, 0), Mem32)), 1, 33),
              MemOff,
              32
            )
          
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
"CF" |-> extractMInt( addMInt( concatenateMInt( mi(1, 0), handleImmediateWithSignExtend(Imm32, 32, 32)), concatenateMInt( mi(1, 0), Mem32)), 0, 1)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), handleImmediateWithSignExtend(Imm32, 32, 32)), concatenateMInt( mi(1, 0), Mem32)), 32, 33), mi(1, 1)) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), handleImmediateWithSignExtend(Imm32, 32, 32)), concatenateMInt( mi(1, 0), Mem32)), 31, 32), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), handleImmediateWithSignExtend(Imm32, 32, 32)), concatenateMInt( mi(1, 0), Mem32)), 30, 31), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), handleImmediateWithSignExtend(Imm32, 32, 32)), concatenateMInt( mi(1, 0), Mem32)), 29, 30), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), handleImmediateWithSignExtend(Imm32, 32, 32)), concatenateMInt( mi(1, 0), Mem32)), 28, 29), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), handleImmediateWithSignExtend(Imm32, 32, 32)), concatenateMInt( mi(1, 0), Mem32)), 27, 28), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), handleImmediateWithSignExtend(Imm32, 32, 32)), concatenateMInt( mi(1, 0), Mem32)), 26, 27), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), handleImmediateWithSignExtend(Imm32, 32, 32)), concatenateMInt( mi(1, 0), Mem32)), 25, 26), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> xorMInt( xorMInt( extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 27, 28), extractMInt( Mem32, 27, 28)), extractMInt( addMInt( concatenateMInt( mi(1, 0), handleImmediateWithSignExtend(Imm32, 32, 32)), concatenateMInt( mi(1, 0), Mem32)), 28, 29))

"ZF" |-> (#ifMInt eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), handleImmediateWithSignExtend(Imm32, 32, 32)), concatenateMInt( mi(1, 0), Mem32)), 1, 33), mi(32, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> extractMInt( addMInt( concatenateMInt( mi(1, 0), handleImmediateWithSignExtend(Imm32, 32, 32)), concatenateMInt( mi(1, 0), Mem32)), 1, 2)

"OF" |-> (#ifMInt ((eqMInt( extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 0, 1), mi(1, 1)) ==Bool eqMInt( extractMInt( Mem32, 0, 1), mi(1, 1))) andBool (notBool (eqMInt( extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 0, 1), mi(1, 1)) ==Bool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), handleImmediateWithSignExtend(Imm32, 32, 32)), concatenateMInt( mi(1, 0), Mem32)), 1, 2), mi(1, 1))))) #then mi(1, 1) #else mi(1, 0) #fi)
      )
    </regstate>



// retq

  rule <k> 
    execinstr (leave .Operands) => 
      execinstr(movq %rbp, %rsp, .Operands) ~> 
      execinstr(popq %rbp, .Operands)
  ...</k>


// addl-r32-m32

  context execinstr(addl:Opcode HOLE:Mem, R2:R32,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (addl:Opcode memOffset( MemOff:MInt):MemOffset, R2:R32,  .Operands) =>
      loadFromMemory( MemOff, 32) ~>
      execinstr (addl memOffset( MemOff), R2,  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem32:MInt):MemLoadValue ~> execinstr (addl:Opcode memOffset( MemOff:MInt):MemOffset, R2:R32,  .Operands) =>
      .
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( mi(32, 0), extractMInt( addMInt( concatenateMInt( mi(1, 0), Mem32), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 1, 33))

"CF" |-> extractMInt( addMInt( concatenateMInt( mi(1, 0), Mem32), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 0, 1)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), Mem32), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 32, 33), mi(1, 1)) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), Mem32), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 31, 32), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), Mem32), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 30, 31), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), Mem32), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 29, 30), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), Mem32), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 28, 29), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), Mem32), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 27, 28), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), Mem32), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 26, 27), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), Mem32), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 25, 26), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> xorMInt( xorMInt( extractMInt( Mem32, 27, 28), extractMInt( getParentValue(R2, RSMap), 59, 60)), extractMInt( addMInt( concatenateMInt( mi(1, 0), Mem32), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 28, 29))

"ZF" |-> (#ifMInt eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), Mem32), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 1, 33), mi(32, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> extractMInt( addMInt( concatenateMInt( mi(1, 0), Mem32), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 1, 2)

"OF" |-> (#ifMInt ((eqMInt( extractMInt( Mem32, 0, 1), mi(1, 1)) ==Bool eqMInt( extractMInt( getParentValue(R2, RSMap), 32, 33), mi(1, 1))) andBool (notBool (eqMInt( extractMInt( Mem32, 0, 1), mi(1, 1)) ==Bool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), Mem32), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 1, 2), mi(1, 1))))) #then mi(1, 1) #else mi(1, 0) #fi)
      )
    </regstate>


// movq-m64-imm32

  context execinstr(movq:Opcode Imm32:Imm, HOLE:Mem,  .Operands) [result(MemOffset)]
  
  rule <k>
     execinstr (movq:Opcode Imm32:Imm, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      
            storeToMemory(
              mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32))),
              MemOff,
              64
            )
          
  ...</k>
    <regstate> RSMap:Map </regstate>



// callq-label

  rule <k> 
    execinstr (call LabelId:X86Id, .Operands) => 
      storeToMemory({RSMap["RIP"]}:>MInt, subMInt(getRegisterValue(%rsp, RSMap), mi(64, 8)), 64)  
      ~>  decRSPInBytes(8)
  ...</k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> Target))
      </regstate>
      <functargets>... LabelId |-> Target  ...</functargets>

// jle-label

  rule <k> 
    execinstr (jle LabelId:X86Id, .Operands) => .
  ...</k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> Target))
      </regstate>
      <functargets>... LabelId |-> Target  ...</functargets>
        requires  eqMInt({RSMap["ZF"]}:>MInt, mi(1, 1)) 
                    orBool 
                  (notBool eqMInt({RSMap["SF"]}:>MInt, {RSMap["OF"]}:>MInt))

  rule <k> 
    execinstr (jle LabelId:X86Id, .Operands) => .
  ...</k>
      <regstate> RSMap:Map </regstate> 
        requires  notBool eqMInt({RSMap["ZF"]}:>MInt, mi(1, 1)) 
                    andBool 
                  eqMInt({RSMap["SF"]}:>MInt, {RSMap["OF"]}:>MInt)


// leaq-r64-m32

  context execinstr(leaq:Opcode HOLE:Mem, R2:R64,  .Operands) [result(MemOffset)]
  
  rule <k>
     execinstr (leaq:Opcode memOffset( MemOff:MInt):MemOffset, R2:R64,  .Operands) =>
      .
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> MemOff
      )
    </regstate>


// incq-r64

  rule <k>
    execinstr (incq R1:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> addMInt( getParentValue(R1, RSMap), mi(64, 1))

"PF" |-> (#ifMInt (notBool (((((((eqMInt( extractMInt( addMInt( getParentValue(R1, RSMap), mi(64, 1)), 63, 64), mi(1, 1)) xorBool eqMInt( extractMInt( addMInt( getParentValue(R1, RSMap), mi(64, 1)), 62, 63), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( getParentValue(R1, RSMap), mi(64, 1)), 61, 62), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( getParentValue(R1, RSMap), mi(64, 1)), 60, 61), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( getParentValue(R1, RSMap), mi(64, 1)), 59, 60), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( getParentValue(R1, RSMap), mi(64, 1)), 58, 59), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( getParentValue(R1, RSMap), mi(64, 1)), 57, 58), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( getParentValue(R1, RSMap), mi(64, 1)), 56, 57), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> (#ifMInt eqMInt( extractMInt( getParentValue(R1, RSMap), 60, 64), mi(4, 15)) #then mi(1, 1) #else mi(1, 0) #fi)

"ZF" |-> (#ifMInt eqMInt( addMInt( getParentValue(R1, RSMap), mi(64, 1)), mi(64, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> extractMInt( addMInt( getParentValue(R1, RSMap), mi(64, 1)), 0, 1)

"OF" |-> (#ifMInt ((notBool eqMInt( extractMInt( getParentValue(R1, RSMap), 0, 1), mi(1, 1))) andBool eqMInt( extractMInt( getParentValue(R1, RSMap), 1, 64), mi(63, 18446744073709551615))) #then mi(1, 1) #else mi(1, 0) #fi)
)

    </regstate>
    


// incq-r64-semantics


// leaq-r64-m16

  context execinstr(leaq:Opcode HOLE:Mem, R2:R64,  .Operands) [result(MemOffset)]
  
  rule <k>
     execinstr (leaq:Opcode memOffset( MemOff:MInt):MemOffset, R2:R64,  .Operands) =>
      .
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> MemOff
      )
    </regstate>


// decl-r32

  rule <k>
    execinstr (decl R1:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> concatenateMInt( mi(32, 0), subMInt( extractMInt( getParentValue(R1, RSMap), 32, 64), mi(32, 1)))

"PF" |-> (#ifMInt (notBool (((((((eqMInt( extractMInt( subMInt( extractMInt( getParentValue(R1, RSMap), 32, 64), mi(32, 1)), 31, 32), mi(1, 1)) xorBool eqMInt( extractMInt( subMInt( extractMInt( getParentValue(R1, RSMap), 32, 64), mi(32, 1)), 30, 31), mi(1, 1))) xorBool eqMInt( extractMInt( subMInt( extractMInt( getParentValue(R1, RSMap), 32, 64), mi(32, 1)), 29, 30), mi(1, 1))) xorBool eqMInt( extractMInt( subMInt( extractMInt( getParentValue(R1, RSMap), 32, 64), mi(32, 1)), 28, 29), mi(1, 1))) xorBool eqMInt( extractMInt( subMInt( extractMInt( getParentValue(R1, RSMap), 32, 64), mi(32, 1)), 27, 28), mi(1, 1))) xorBool eqMInt( extractMInt( subMInt( extractMInt( getParentValue(R1, RSMap), 32, 64), mi(32, 1)), 26, 27), mi(1, 1))) xorBool eqMInt( extractMInt( subMInt( extractMInt( getParentValue(R1, RSMap), 32, 64), mi(32, 1)), 25, 26), mi(1, 1))) xorBool eqMInt( extractMInt( subMInt( extractMInt( getParentValue(R1, RSMap), 32, 64), mi(32, 1)), 24, 25), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> (#ifMInt eqMInt( extractMInt( getParentValue(R1, RSMap), 60, 64), mi(4, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"ZF" |-> (#ifMInt eqMInt( subMInt( extractMInt( getParentValue(R1, RSMap), 32, 64), mi(32, 1)), mi(32, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> extractMInt( subMInt( extractMInt( getParentValue(R1, RSMap), 32, 64), mi(32, 1)), 0, 1)

"OF" |-> (#ifMInt (eqMInt( extractMInt( getParentValue(R1, RSMap), 32, 33), mi(1, 1)) andBool eqMInt( extractMInt( getParentValue(R1, RSMap), 33, 64), mi(31, 0))) #then mi(1, 1) #else mi(1, 0) #fi)
)

    </regstate>
    


// decl-r32-semantics


/*@
  Pop R: 
  1. RSP = RSP + 8
  2. ValTostore = *(RSP - 8)
  3. R =  ValTostore)
*/  
// popq-r64

  rule <k> 
    execinstr (popq R1:R64, .Operands) =>
      incRSPInBytes(8) ~>
      setRegisterValue(
          loadFromMemory(getRegisterValue(%rsp, RSMap), 64), 
          R1) 
  ...</k>
  <regstate> RSMap </regstate>


// cltq

  rule <k>
    execinstr (cltq  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
"RAX" |-> mi(64, svalueMInt(extractMInt( getParentValue(%rax, RSMap), 32, 64)))
)

    </regstate>
    


// cltq-semantics


// movq-r64-imm64

  rule <k>
    execinstr (movq Imm64:Imm, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> handleImmediateWithSignExtend(Imm64, 64, 64)
)

    </regstate>
    


// movq-r64-imm64-semantics


// subl-m32-r32

  context execinstr(subl:Opcode R1:R32, HOLE:Mem,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (subl:Opcode R1:R32, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      loadFromMemory( MemOff, 32) ~>
      execinstr (subl R1, memOffset( MemOff),  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem32:MInt):MemLoadValue ~> execinstr (subl:Opcode R1:R32, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      
            storeToMemory(
              extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 32, 64))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 1, 33),
              MemOff,
              32
            )
          
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
"CF" |-> (#ifMInt (notBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 32, 64))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 0, 1), mi(1, 1))) #then mi(1, 1) #else mi(1, 0) #fi)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 32, 64))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 32, 33), mi(1, 1)) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 32, 64))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 31, 32), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 32, 64))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 30, 31), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 32, 64))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 29, 30), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 32, 64))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 28, 29), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 32, 64))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 27, 28), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 32, 64))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 26, 27), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 32, 64))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 25, 26), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> xorMInt( xorMInt( extractMInt( getParentValue(R1, RSMap), 59, 60), extractMInt( Mem32, 27, 28)), extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 32, 64))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 28, 29))

"ZF" |-> (#ifMInt eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 32, 64))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 1, 33), mi(32, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 32, 64))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 1, 2)

"OF" |-> (#ifMInt ((eqMInt( negMInt( extractMInt( getParentValue(R1, RSMap), 32, 33)), mi(1, 1)) ==Bool eqMInt( extractMInt( Mem32, 0, 1), mi(1, 1))) andBool (notBool (eqMInt( negMInt( extractMInt( getParentValue(R1, RSMap), 32, 33)), mi(1, 1)) ==Bool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 32, 64))), mi(33, 1)), concatenateMInt( mi(1, 0), Mem32)), 1, 2), mi(1, 1))))) #then mi(1, 1) #else mi(1, 0) #fi)
      )
    </regstate>


// movq-m64-xmm

  context execinstr(movq:Opcode R1:Xmm, HOLE:Mem,  .Operands) [result(MemOffset)]
  
  rule <k>
     execinstr (movq:Opcode R1:Xmm, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      
            storeToMemory(
              extractMInt( getParentValue(R1, RSMap), 192, 256),
              MemOff,
              64
            )
          
  ...</k>
    <regstate> RSMap:Map </regstate>


// cmpl-r32-r32

  rule <k>
    execinstr (cmpl R1:R32, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
"CF" |-> (#ifMInt (notBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 32, 64))), mi(33, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 0, 1), mi(1, 1))) #then mi(1, 1) #else mi(1, 0) #fi)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 32, 64))), mi(33, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 32, 33), mi(1, 1)) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 32, 64))), mi(33, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 31, 32), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 32, 64))), mi(33, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 30, 31), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 32, 64))), mi(33, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 29, 30), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 32, 64))), mi(33, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 28, 29), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 32, 64))), mi(33, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 27, 28), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 32, 64))), mi(33, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 26, 27), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 32, 64))), mi(33, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 25, 26), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> xorMInt( xorMInt( extractMInt( getParentValue(R1, RSMap), 59, 60), extractMInt( getParentValue(R2, RSMap), 59, 60)), extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 32, 64))), mi(33, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 28, 29))

"ZF" |-> (#ifMInt eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 32, 64))), mi(33, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 1, 33), mi(32, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 32, 64))), mi(33, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 1, 2)

"OF" |-> (#ifMInt ((eqMInt( negMInt( extractMInt( getParentValue(R1, RSMap), 32, 33)), mi(1, 1)) ==Bool eqMInt( extractMInt( getParentValue(R2, RSMap), 32, 33), mi(1, 1))) andBool (notBool (eqMInt( negMInt( extractMInt( getParentValue(R1, RSMap), 32, 33)), mi(1, 1)) ==Bool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 32, 64))), mi(33, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 1, 2), mi(1, 1))))) #then mi(1, 1) #else mi(1, 0) #fi)
)

    </regstate>
    


// cmpl-r32-r32-semantics




// jmpq-r64

  rule <k> 
    execinstr (jmp R1:R64, .Operands) => .
  ...</k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> getRegisterValue(R1, RSMap)))</regstate>




// callq-r64

  rule <k> 
    execinstr (call R1:R64, .Operands) => 
      storeToMemory({RSMap["RIP"]}:>MInt, subMInt(getRegisterValue(%rsp, RSMap), mi(64, 8)), 64)  
      ~>  decRSPInBytes(8)
  ...</k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> getRegisterValue(R1, RSMap)))</regstate>


// addl-m32-r32

  context execinstr(addl:Opcode R1:R32, HOLE:Mem,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (addl:Opcode R1:R32, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      loadFromMemory( MemOff, 32) ~>
      execinstr (addl R1, memOffset( MemOff),  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem32:MInt):MemLoadValue ~> execinstr (addl:Opcode R1:R32, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      
            storeToMemory(
              extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 32, 64)), concatenateMInt( mi(1, 0), Mem32)), 1, 33),
              MemOff,
              32
            )
          
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
"CF" |-> extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 32, 64)), concatenateMInt( mi(1, 0), Mem32)), 0, 1)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 32, 64)), concatenateMInt( mi(1, 0), Mem32)), 32, 33), mi(1, 1)) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 32, 64)), concatenateMInt( mi(1, 0), Mem32)), 31, 32), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 32, 64)), concatenateMInt( mi(1, 0), Mem32)), 30, 31), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 32, 64)), concatenateMInt( mi(1, 0), Mem32)), 29, 30), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 32, 64)), concatenateMInt( mi(1, 0), Mem32)), 28, 29), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 32, 64)), concatenateMInt( mi(1, 0), Mem32)), 27, 28), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 32, 64)), concatenateMInt( mi(1, 0), Mem32)), 26, 27), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 32, 64)), concatenateMInt( mi(1, 0), Mem32)), 25, 26), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> xorMInt( xorMInt( extractMInt( getParentValue(R1, RSMap), 59, 60), extractMInt( Mem32, 27, 28)), extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 32, 64)), concatenateMInt( mi(1, 0), Mem32)), 28, 29))

"ZF" |-> (#ifMInt eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 32, 64)), concatenateMInt( mi(1, 0), Mem32)), 1, 33), mi(32, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 32, 64)), concatenateMInt( mi(1, 0), Mem32)), 1, 2)

"OF" |-> (#ifMInt ((eqMInt( extractMInt( getParentValue(R1, RSMap), 32, 33), mi(1, 1)) ==Bool eqMInt( extractMInt( Mem32, 0, 1), mi(1, 1))) andBool (notBool (eqMInt( extractMInt( getParentValue(R1, RSMap), 32, 33), mi(1, 1)) ==Bool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 32, 64)), concatenateMInt( mi(1, 0), Mem32)), 1, 2), mi(1, 1))))) #then mi(1, 1) #else mi(1, 0) #fi)
      )
    </regstate>

endmodule
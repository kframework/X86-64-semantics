requires "x86-configuration.k"
requires "x86-flag-checks-syntax.k"

module X86-INSTRUCTIONS-SEMANTICS
  imports X86-CONFIGURATION
  imports X86-FLAG-CHECKS-SYNTAX


/*@
  Push R: 
  1. ValTostore = R
  2. *(RSP-8)  = ValTostore
  3. RSP = RSP - 8
*/  
// pushq-imm32

  rule <k> 
    execinstr (pushq Imm32:Imm, .Operands) =>
      storeToMemory(
          handleImmediateWithSignExtend(Imm32, 32, 64), 
          subMInt(getRegisterValue(%rsp, RSMap), mi(64, 8)), 
          64)  ~>  
      decRSPInBytes(8)
  ...</k>
  <regstate> RSMap </regstate>



// retq

  rule <k> 
    execinstr (leave .Operands) => 
      execinstr(movq %rbp, %rsp, .Operands) ~> 
      execinstr(popq %rbp, .Operands)
  ...</k>


// nop

  rule <k>
    execinstr (nop  .Operands) => .
  ...</k>


// nop-semantics


// pushq-m64

  context execinstr(pushq:Opcode HOLE:Mem,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (pushq:Opcode memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      loadFromMemory( MemOff, 64) ~>
      execinstr (pushq memOffset( MemOff),  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem64:MInt):MemLoadValue ~> execinstr (pushq:Opcode memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      
            storeToMemory(
              mi(64, svalueMInt(Mem64)),
              subMInt( getParentValue(%rsp, RSMap), mi(64, 8)),
              64
            )
          
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
"RSP" |-> subMInt( getParentValue(%rsp, RSMap), mi(64, 8))
      )
    </regstate>



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


// alternative-opcodes

  rule <k> 
    execinstr (push:Opcode  R:R64, .Operands) =>  execinstr (pushq  R:R64, .Operands)
  ...</k>
  rule <k> 
    execinstr (pop:Opcode R:R64, .Operands) =>  execinstr (popq  R:R64, .Operands)
  ...</k>

  rule <k> 
    execinstr (movabsq:Opcode  Imm64:Imm, R2:R64,  .Operands) =>  execinstr (movq  Imm64, R2, .Operands)
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
    execinstr(leaveq:Opcode .Operands) => execinstr(leave  .Operands)
  ...</k>
   rule <k> 
    execinstr (callq:Opcode LabelId:X86Id, .Operands) => execinstr (call LabelId, .Operands)
  ...</k>
   rule <k> 
    execinstr (callq:Opcode B:Builtin, .Operands) => execinstr (call B, .Operands)
  ...</k>
   rule <k> 
    execinstr (jmpq:Opcode LabelId:X86Id, .Operands) => execinstr (jmp LabelId, .Operands)
  ...</k>

// movq-m64-label

  context execinstr(movq:Opcode ($ L:X86Id), HOLE:Mem,  .Operands) [result(MemOffset)]
  
  rule <k>
     execinstr (movq:Opcode ($ L:X86Id), memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      
            storeToMemory(
              ptr(
                getMemLoc(PV), 
                mi(64, svalueMInt(
                    extractMInt(
                      getMIntVal(PV), 32, 64)))),   
              MemOff,
              64
            )
          
  ...</k>
    <regstate> RSMap:Map </regstate>
    <functargets>...  L |-> PV:PointerVal  ...</functargets>


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


// movq-r64-xmm

  rule <k>
    execinstr (movq R1:Xmm, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> extractMInt( getParentValue(R1, RSMap), 192, 256)
)

    </regstate>
    


// movq-r64-xmm-semantics


// movq-xmm-r64

  rule <k>
    execinstr (movq R1:R64, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 128), concatenateMInt( mi(64, 0), getParentValue(R1, RSMap)))
)

    </regstate>
    


// movq-xmm-r64-semantics


// movq-xmm-xmm

  rule <k>
    execinstr (movq R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 128), concatenateMInt( mi(64, 0), extractMInt( getParentValue(R1, RSMap), 192, 256)))
)

    </regstate>
    


// movq-xmm-xmm-semantics


// cmpl-r32-imm32

  rule <k>
    execinstr (cmpl Imm32:Imm, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
"CF" |-> (#ifMInt (notBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm32, 32, 32))), mi(33, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 0, 1), mi(1, 1))) #then mi(1, 1) #else mi(1, 0) #fi)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm32, 32, 32))), mi(33, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 32, 33), mi(1, 1)) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm32, 32, 32))), mi(33, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 31, 32), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm32, 32, 32))), mi(33, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 30, 31), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm32, 32, 32))), mi(33, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 29, 30), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm32, 32, 32))), mi(33, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 28, 29), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm32, 32, 32))), mi(33, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 27, 28), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm32, 32, 32))), mi(33, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 26, 27), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm32, 32, 32))), mi(33, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 25, 26), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> xorMInt( xorMInt( extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 27, 28), extractMInt( getParentValue(R2, RSMap), 59, 60)), extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm32, 32, 32))), mi(33, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 28, 29))

"ZF" |-> (#ifMInt eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm32, 32, 32))), mi(33, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 1, 33), mi(32, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm32, 32, 32))), mi(33, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 1, 2)

"OF" |-> (#ifMInt ((eqMInt( negMInt( extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 0, 1)), mi(1, 1)) ==Bool eqMInt( extractMInt( getParentValue(R2, RSMap), 32, 33), mi(1, 1))) andBool (notBool (eqMInt( negMInt( extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 0, 1)), mi(1, 1)) ==Bool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm32, 32, 32))), mi(33, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 1, 2), mi(1, 1))))) #then mi(1, 1) #else mi(1, 0) #fi)
)

    </regstate>
    


// cmpl-r32-imm32-semantics


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


// movq-r64-label

  rule <k>
    execinstr (movq ($ L:X86Id), R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> LoadAddr
)

    </regstate>
        <functargets>...  L |-> LoadAddr:PointerVal  ...</functargets>
    



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


// movsbl-r32-r8

  rule <k>
    execinstr (movsbl R1:R8, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( mi(32, 0), mi(32, svalueMInt(extractMInt( getParentValue(R1, RSMap), 56, 64))))
)

    </regstate>
    


// movsbl-r32-r8-semantics



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


// movzbl-r32-r8

  rule <k>
    execinstr (movzbl R1:R8, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( mi(56, 0), extractMInt( getParentValue(R1, RSMap), 56, 64))
)

    </regstate>
    


// movzbl-r32-r8-semantics


// movzbl-r32-rh

  rule <k>
    execinstr (movzbl R1:Rh, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( mi(56, 0), extractMInt( getParentValue(R1, RSMap), 48, 56))
)

    </regstate>
    


// movzbl-r32-rh-semantics


// movzbl-r32-m8

  context execinstr(movzbl:Opcode HOLE:Mem, R2:R32,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (movzbl:Opcode memOffset( MemOff:MInt):MemOffset, R2:R32,  .Operands) =>
      loadFromMemory( MemOff, 8) ~>
      execinstr (movzbl memOffset( MemOff), R2,  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem8:MInt):MemLoadValue ~> execinstr (movzbl:Opcode memOffset( MemOff:MInt):MemOffset, R2:R32,  .Operands) =>
      .
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( mi(56, 0), Mem8)
      )
    </regstate>


// testb-r8-r8

  rule <k>
    execinstr (testb R1:R8, R2:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
"CF" |-> mi(1, 0)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 63, 64), extractMInt( getParentValue(R1, RSMap), 63, 64)), mi(1, 1)) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 62, 63), extractMInt( getParentValue(R1, RSMap), 62, 63)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 61, 62), extractMInt( getParentValue(R1, RSMap), 61, 62)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 60, 61), extractMInt( getParentValue(R1, RSMap), 60, 61)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 59, 60), extractMInt( getParentValue(R1, RSMap), 59, 60)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 58, 59), extractMInt( getParentValue(R1, RSMap), 58, 59)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 57, 58), extractMInt( getParentValue(R1, RSMap), 57, 58)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 56, 57), extractMInt( getParentValue(R1, RSMap), 56, 57)), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> (undefMInt)

"ZF" |-> (#ifMInt eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 56, 64), extractMInt( getParentValue(R1, RSMap), 56, 64)), mi(8, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> andMInt( extractMInt( getParentValue(R2, RSMap), 56, 57), extractMInt( getParentValue(R1, RSMap), 56, 57))

"OF" |-> mi(1, 0)
)

    </regstate>
    


// testb-r8-r8-semantics


// testb-r8-rh

  rule <k>
    execinstr (testb R1:Rh, R2:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
"CF" |-> mi(1, 0)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 63, 64), extractMInt( getParentValue(R1, RSMap), 55, 56)), mi(1, 1)) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 62, 63), extractMInt( getParentValue(R1, RSMap), 54, 55)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 61, 62), extractMInt( getParentValue(R1, RSMap), 53, 54)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 60, 61), extractMInt( getParentValue(R1, RSMap), 52, 53)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 59, 60), extractMInt( getParentValue(R1, RSMap), 51, 52)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 58, 59), extractMInt( getParentValue(R1, RSMap), 50, 51)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 57, 58), extractMInt( getParentValue(R1, RSMap), 49, 50)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 56, 57), extractMInt( getParentValue(R1, RSMap), 48, 49)), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> (undefMInt)

"ZF" |-> (#ifMInt eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 56, 64), extractMInt( getParentValue(R1, RSMap), 48, 56)), mi(8, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> andMInt( extractMInt( getParentValue(R2, RSMap), 56, 57), extractMInt( getParentValue(R1, RSMap), 48, 49))

"OF" |-> mi(1, 0)
)

    </regstate>
    


// testb-r8-rh-semantics


// testb-rh-r8

  rule <k>
    execinstr (testb R1:R8, R2:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
"CF" |-> mi(1, 0)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 55, 56), extractMInt( getParentValue(R1, RSMap), 63, 64)), mi(1, 1)) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 54, 55), extractMInt( getParentValue(R1, RSMap), 62, 63)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 53, 54), extractMInt( getParentValue(R1, RSMap), 61, 62)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 52, 53), extractMInt( getParentValue(R1, RSMap), 60, 61)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 51, 52), extractMInt( getParentValue(R1, RSMap), 59, 60)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 50, 51), extractMInt( getParentValue(R1, RSMap), 58, 59)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 49, 50), extractMInt( getParentValue(R1, RSMap), 57, 58)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 48, 49), extractMInt( getParentValue(R1, RSMap), 56, 57)), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> (undefMInt)

"ZF" |-> (#ifMInt eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 48, 56), extractMInt( getParentValue(R1, RSMap), 56, 64)), mi(8, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> andMInt( extractMInt( getParentValue(R2, RSMap), 48, 49), extractMInt( getParentValue(R1, RSMap), 56, 57))

"OF" |-> mi(1, 0)
)

    </regstate>
    


// testb-rh-r8-semantics


// testb-rh-rh

  rule <k>
    execinstr (testb R1:Rh, R2:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
"CF" |-> mi(1, 0)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 55, 56), extractMInt( getParentValue(R1, RSMap), 55, 56)), mi(1, 1)) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 54, 55), extractMInt( getParentValue(R1, RSMap), 54, 55)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 53, 54), extractMInt( getParentValue(R1, RSMap), 53, 54)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 52, 53), extractMInt( getParentValue(R1, RSMap), 52, 53)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 51, 52), extractMInt( getParentValue(R1, RSMap), 51, 52)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 50, 51), extractMInt( getParentValue(R1, RSMap), 50, 51)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 49, 50), extractMInt( getParentValue(R1, RSMap), 49, 50)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 48, 49), extractMInt( getParentValue(R1, RSMap), 48, 49)), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> (undefMInt)

"ZF" |-> (#ifMInt eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 48, 56), extractMInt( getParentValue(R1, RSMap), 48, 56)), mi(8, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> andMInt( extractMInt( getParentValue(R2, RSMap), 48, 49), extractMInt( getParentValue(R1, RSMap), 48, 49))

"OF" |-> mi(1, 0)
)

    </regstate>
    


// testb-rh-rh-semantics


// testb-al-imm8

  rule <k>
    execinstr (testb Imm8:Imm, %al,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
"CF" |-> mi(1, 0)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( andMInt( extractMInt( getParentValue(%rax, RSMap), 63, 64), extractMInt( handleImmediateWithSignExtend(Imm8, 8, 8), 7, 8)), mi(1, 1)) xorBool eqMInt( andMInt( extractMInt( getParentValue(%rax, RSMap), 62, 63), extractMInt( handleImmediateWithSignExtend(Imm8, 8, 8), 6, 7)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(%rax, RSMap), 61, 62), extractMInt( handleImmediateWithSignExtend(Imm8, 8, 8), 5, 6)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(%rax, RSMap), 60, 61), extractMInt( handleImmediateWithSignExtend(Imm8, 8, 8), 4, 5)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(%rax, RSMap), 59, 60), extractMInt( handleImmediateWithSignExtend(Imm8, 8, 8), 3, 4)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(%rax, RSMap), 58, 59), extractMInt( handleImmediateWithSignExtend(Imm8, 8, 8), 2, 3)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(%rax, RSMap), 57, 58), extractMInt( handleImmediateWithSignExtend(Imm8, 8, 8), 1, 2)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(%rax, RSMap), 56, 57), extractMInt( handleImmediateWithSignExtend(Imm8, 8, 8), 0, 1)), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> (undefMInt)

"ZF" |-> (#ifMInt eqMInt( andMInt( extractMInt( getParentValue(%rax, RSMap), 56, 64), handleImmediateWithSignExtend(Imm8, 8, 8)), mi(8, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> andMInt( extractMInt( getParentValue(%rax, RSMap), 56, 57), extractMInt( handleImmediateWithSignExtend(Imm8, 8, 8), 0, 1))

"OF" |-> mi(1, 0)
)

    </regstate>
    


// testb-al-imm8-semantics


// testb-r8-imm8

  rule <k>
    execinstr (testb Imm8:Imm, R2:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
"CF" |-> mi(1, 0)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 63, 64), extractMInt( handleImmediateWithSignExtend(Imm8, 8, 8), 7, 8)), mi(1, 1)) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 62, 63), extractMInt( handleImmediateWithSignExtend(Imm8, 8, 8), 6, 7)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 61, 62), extractMInt( handleImmediateWithSignExtend(Imm8, 8, 8), 5, 6)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 60, 61), extractMInt( handleImmediateWithSignExtend(Imm8, 8, 8), 4, 5)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 59, 60), extractMInt( handleImmediateWithSignExtend(Imm8, 8, 8), 3, 4)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 58, 59), extractMInt( handleImmediateWithSignExtend(Imm8, 8, 8), 2, 3)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 57, 58), extractMInt( handleImmediateWithSignExtend(Imm8, 8, 8), 1, 2)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 56, 57), extractMInt( handleImmediateWithSignExtend(Imm8, 8, 8), 0, 1)), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> (undefMInt)

"ZF" |-> (#ifMInt eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 56, 64), handleImmediateWithSignExtend(Imm8, 8, 8)), mi(8, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> andMInt( extractMInt( getParentValue(R2, RSMap), 56, 57), extractMInt( handleImmediateWithSignExtend(Imm8, 8, 8), 0, 1))

"OF" |-> mi(1, 0)
)

    </regstate>
    


// testb-r8-imm8-semantics


// testb-rh-imm8

  rule <k>
    execinstr (testb Imm8:Imm, R2:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
"CF" |-> mi(1, 0)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 55, 56), extractMInt( handleImmediateWithSignExtend(Imm8, 8, 8), 7, 8)), mi(1, 1)) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 54, 55), extractMInt( handleImmediateWithSignExtend(Imm8, 8, 8), 6, 7)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 53, 54), extractMInt( handleImmediateWithSignExtend(Imm8, 8, 8), 5, 6)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 52, 53), extractMInt( handleImmediateWithSignExtend(Imm8, 8, 8), 4, 5)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 51, 52), extractMInt( handleImmediateWithSignExtend(Imm8, 8, 8), 3, 4)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 50, 51), extractMInt( handleImmediateWithSignExtend(Imm8, 8, 8), 2, 3)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 49, 50), extractMInt( handleImmediateWithSignExtend(Imm8, 8, 8), 1, 2)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 48, 49), extractMInt( handleImmediateWithSignExtend(Imm8, 8, 8), 0, 1)), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> (undefMInt)

"ZF" |-> (#ifMInt eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 48, 56), handleImmediateWithSignExtend(Imm8, 8, 8)), mi(8, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> andMInt( extractMInt( getParentValue(R2, RSMap), 48, 49), extractMInt( handleImmediateWithSignExtend(Imm8, 8, 8), 0, 1))

"OF" |-> mi(1, 0)
)

    </regstate>
    


// testb-rh-imm8-semantics


// testb-m8-imm8

  context execinstr(testb:Opcode Imm8:Imm, HOLE:Mem,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (testb:Opcode Imm8:Imm, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      loadFromMemory( MemOff, 8) ~>
      execinstr (testb Imm8, memOffset( MemOff),  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem8:MInt):MemLoadValue ~> execinstr (testb:Opcode Imm8:Imm, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      .
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
"CF" |-> mi(1, 0)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( andMInt( extractMInt( Mem8, 7, 8), extractMInt( handleImmediateWithSignExtend(Imm8, 8, 8), 7, 8)), mi(1, 1)) xorBool eqMInt( andMInt( extractMInt( Mem8, 6, 7), extractMInt( handleImmediateWithSignExtend(Imm8, 8, 8), 6, 7)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( Mem8, 5, 6), extractMInt( handleImmediateWithSignExtend(Imm8, 8, 8), 5, 6)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( Mem8, 4, 5), extractMInt( handleImmediateWithSignExtend(Imm8, 8, 8), 4, 5)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( Mem8, 3, 4), extractMInt( handleImmediateWithSignExtend(Imm8, 8, 8), 3, 4)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( Mem8, 2, 3), extractMInt( handleImmediateWithSignExtend(Imm8, 8, 8), 2, 3)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( Mem8, 1, 2), extractMInt( handleImmediateWithSignExtend(Imm8, 8, 8), 1, 2)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( Mem8, 0, 1), extractMInt( handleImmediateWithSignExtend(Imm8, 8, 8), 0, 1)), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> (undefMInt)

"ZF" |-> (#ifMInt eqMInt( andMInt( Mem8, handleImmediateWithSignExtend(Imm8, 8, 8)), mi(8, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> andMInt( extractMInt( Mem8, 0, 1), extractMInt( handleImmediateWithSignExtend(Imm8, 8, 8), 0, 1))

"OF" |-> mi(1, 0)
      )
    </regstate>


// testb-m8-r8

  context execinstr(testb:Opcode R1:R8, HOLE:Mem,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (testb:Opcode R1:R8, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      loadFromMemory( MemOff, 8) ~>
      execinstr (testb R1, memOffset( MemOff),  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem8:MInt):MemLoadValue ~> execinstr (testb:Opcode R1:R8, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      .
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
"CF" |-> mi(1, 0)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( andMInt( extractMInt( Mem8, 7, 8), extractMInt( getParentValue(R1, RSMap), 63, 64)), mi(1, 1)) xorBool eqMInt( andMInt( extractMInt( Mem8, 6, 7), extractMInt( getParentValue(R1, RSMap), 62, 63)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( Mem8, 5, 6), extractMInt( getParentValue(R1, RSMap), 61, 62)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( Mem8, 4, 5), extractMInt( getParentValue(R1, RSMap), 60, 61)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( Mem8, 3, 4), extractMInt( getParentValue(R1, RSMap), 59, 60)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( Mem8, 2, 3), extractMInt( getParentValue(R1, RSMap), 58, 59)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( Mem8, 1, 2), extractMInt( getParentValue(R1, RSMap), 57, 58)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( Mem8, 0, 1), extractMInt( getParentValue(R1, RSMap), 56, 57)), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> (undefMInt)

"ZF" |-> (#ifMInt eqMInt( andMInt( Mem8, extractMInt( getParentValue(R1, RSMap), 56, 64)), mi(8, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> andMInt( extractMInt( Mem8, 0, 1), extractMInt( getParentValue(R1, RSMap), 56, 57))

"OF" |-> mi(1, 0)
      )
    </regstate>


// testb-m8-rh

  context execinstr(testb:Opcode R1:Rh, HOLE:Mem,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (testb:Opcode R1:Rh, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      loadFromMemory( MemOff, 8) ~>
      execinstr (testb R1:Rh, memOffset( MemOff),  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem8:MInt):MemLoadValue ~> execinstr (testb:Opcode R1:Rh, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      .
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
"CF" |-> mi(1, 0)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( andMInt( extractMInt( Mem8, 7, 8), extractMInt( getParentValue(R1, RSMap), 55, 56)), mi(1, 1)) xorBool eqMInt( andMInt( extractMInt( Mem8, 6, 7), extractMInt( getParentValue(R1, RSMap), 54, 55)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( Mem8, 5, 6), extractMInt( getParentValue(R1, RSMap), 53, 54)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( Mem8, 4, 5), extractMInt( getParentValue(R1, RSMap), 52, 53)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( Mem8, 3, 4), extractMInt( getParentValue(R1, RSMap), 51, 52)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( Mem8, 2, 3), extractMInt( getParentValue(R1, RSMap), 50, 51)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( Mem8, 1, 2), extractMInt( getParentValue(R1, RSMap), 49, 50)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( Mem8, 0, 1), extractMInt( getParentValue(R1, RSMap), 48, 49)), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> (undefMInt)

"ZF" |-> (#ifMInt eqMInt( andMInt( Mem8, extractMInt( getParentValue(R1, RSMap), 48, 56)), mi(8, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> andMInt( extractMInt( Mem8, 0, 1), extractMInt( getParentValue(R1, RSMap), 48, 49))

"OF" |-> mi(1, 0)
      )
    </regstate>



// jne-label

  rule <k> 
    execinstr (jne LabelId:X86Id, .Operands) => .
  ...</k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> Target))
      </regstate>
      <functargets>... LabelId |-> Target  ...</functargets>
        requires eqMInt({RSMap["ZF"]}:>MInt, mi(1, 0))

  rule <k> 
    execinstr (jne LabelId:X86Id, .Operands) => .
  ...</k>
      <regstate> RSMap:Map </regstate> 
        requires notBool eqMInt({RSMap["ZF"]}:>MInt, mi(1, 0))


/*@
  Pop (R): 
  1. RSP = RSP + 8
  2. ValTostore = *(RSP - 8)
  3. *R =  ValTostore
*/  
// popq-m64


  rule <k> 
    execinstr (popq M64:Mem, .Operands) =>
      incRSPInBytes(8) ~> 
      loadFromMemory(getRegisterValue(%rsp, RSMap), 64) ~>
      execinstr (popq M64, .Operands)
  ...</k>
  <regstate> RSMap </regstate>

  rule <k> 
    memLoadValue(MemVal:MInt):MemLoadValue ~> execinstr (popq M64:Mem, .Operands) =>
      evaluateMemOffset(M64) ~> execinstr (popq M64:Mem, MemVal, .Operands)                          
  ...</k>

  rule <k> 
    evaluateMemOffset( memOffset(MemOff:MInt):MemOffset ) ~> execinstr (popq _:Mem, MemVal:MInt, .Operands) => storeToMemory(MemVal, MemOff, 64) 
  ...</k>


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


// movsbl-r32-rh

  rule <k>
    execinstr (movsbl R1:Rh, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( mi(32, 0), mi(32, svalueMInt(extractMInt( getParentValue(R1, RSMap), 48, 56))))
)

    </regstate>
    


// movsbl-r32-rh-semantics




// jmpq-r64

  rule <k> 
    execinstr (jmp R1:R64, .Operands) => .
  ...</k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> getRegisterValue(R1, RSMap)))</regstate>


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


// vmovss-m32-xmm

  context execinstr(vmovss:Opcode R1:Xmm, HOLE:Mem,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (vmovss:Opcode R1:Xmm, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      loadFromMemory( MemOff, 32) ~>
      execinstr (vmovss R1:Xmm, memOffset( MemOff),  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem32:MInt):MemLoadValue ~> execinstr (vmovss:Opcode R1:Xmm, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      
            storeToMemory(
              extractMInt( getParentValue(R1, RSMap), 224, 256),
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


// xorl-r32-r32

  rule <k>
    execinstr (xorl R1:R32, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( mi(32, 0), xorMInt( extractMInt( getParentValue(R2, RSMap), 32, 64), extractMInt( getParentValue(R1, RSMap), 32, 64)))

"CF" |-> mi(1, 0)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 63, 64), extractMInt( getParentValue(R1, RSMap), 63, 64)), mi(1, 1)) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 62, 63), extractMInt( getParentValue(R1, RSMap), 62, 63)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 61, 62), extractMInt( getParentValue(R1, RSMap), 61, 62)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 60, 61), extractMInt( getParentValue(R1, RSMap), 60, 61)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 59, 60), extractMInt( getParentValue(R1, RSMap), 59, 60)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 58, 59), extractMInt( getParentValue(R1, RSMap), 58, 59)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 57, 58), extractMInt( getParentValue(R1, RSMap), 57, 58)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 56, 57), extractMInt( getParentValue(R1, RSMap), 56, 57)), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> (undefMInt)

"ZF" |-> (#ifMInt eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 32, 64), extractMInt( getParentValue(R1, RSMap), 32, 64)), mi(32, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> xorMInt( extractMInt( getParentValue(R2, RSMap), 32, 33), extractMInt( getParentValue(R1, RSMap), 32, 33))

"OF" |-> mi(1, 0)
)

    </regstate>
    


// xorl-r32-r32-semantics


// vmovss-xmm-m32

  context execinstr(vmovss:Opcode HOLE:Mem, R2:Xmm,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (vmovss:Opcode memOffset( MemOff:MInt):MemOffset, R2:Xmm,  .Operands) =>
      loadFromMemory( MemOff, 32) ~>
      execinstr (vmovss memOffset( MemOff), R2:Xmm,  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem32:MInt):MemLoadValue ~> execinstr (vmovss:Opcode memOffset( MemOff:MInt):MemOffset, R2:Xmm,  .Operands) =>
      .
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( mi(224, 0), Mem32)
      )
    </regstate>


// xorl-r32-imm32

  rule <k>
    execinstr (xorl Imm32:Imm, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( mi(32, 0), xorMInt( extractMInt( getParentValue(R2, RSMap), 32, 64), handleImmediateWithSignExtend(Imm32, 32, 32)))

"CF" |-> mi(1, 0)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 63, 64), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 31, 32)), mi(1, 1)) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 62, 63), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 30, 31)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 61, 62), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 29, 30)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 60, 61), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 28, 29)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 59, 60), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 27, 28)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 58, 59), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 26, 27)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 57, 58), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 25, 26)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 56, 57), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 24, 25)), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> (undefMInt)

"ZF" |-> (#ifMInt eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 32, 64), handleImmediateWithSignExtend(Imm32, 32, 32)), mi(32, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> xorMInt( extractMInt( getParentValue(R2, RSMap), 32, 33), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 0, 1))

"OF" |-> mi(1, 0)
)

    </regstate>
    


// xorl-r32-imm32-semantics


// vmovsd-m64-xmm

  context execinstr(vmovsd:Opcode R1:Xmm, HOLE:Mem,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (vmovsd:Opcode R1:Xmm, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      loadFromMemory( MemOff, 64) ~>
      execinstr (vmovsd R1:Xmm, memOffset( MemOff),  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem64:MInt):MemLoadValue ~> execinstr (vmovsd:Opcode R1:Xmm, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      
            storeToMemory(
              extractMInt( getParentValue(R1, RSMap), 192, 256),
              MemOff,
              64
            )
          
  ...</k>
    <regstate> RSMap:Map </regstate>


// xorl-m32-imm32

  context execinstr(xorl:Opcode Imm32:Imm, HOLE:Mem,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (xorl:Opcode Imm32:Imm, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      loadFromMemory( MemOff, 32) ~>
      execinstr (xorl Imm32, memOffset( MemOff),  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem32:MInt):MemLoadValue ~> execinstr (xorl:Opcode Imm32:Imm, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      
            storeToMemory(
              xorMInt( Mem32, handleImmediateWithSignExtend(Imm32, 32, 32)),
              MemOff,
              32
            )
          
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
"CF" |-> mi(1, 0)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( xorMInt( extractMInt( Mem32, 31, 32), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 31, 32)), mi(1, 1)) xorBool eqMInt( xorMInt( extractMInt( Mem32, 30, 31), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 30, 31)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( Mem32, 29, 30), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 29, 30)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( Mem32, 28, 29), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 28, 29)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( Mem32, 27, 28), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 27, 28)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( Mem32, 26, 27), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 26, 27)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( Mem32, 25, 26), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 25, 26)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( Mem32, 24, 25), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 24, 25)), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> (undefMInt)

"ZF" |-> (#ifMInt eqMInt( xorMInt( Mem32, handleImmediateWithSignExtend(Imm32, 32, 32)), mi(32, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> xorMInt( extractMInt( Mem32, 0, 1), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 0, 1))

"OF" |-> mi(1, 0)
      )
    </regstate>


// vmovsd-xmm-m64

  context execinstr(vmovsd:Opcode HOLE:Mem, R2:Xmm,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (vmovsd:Opcode memOffset( MemOff:MInt):MemOffset, R2:Xmm,  .Operands) =>
      loadFromMemory( MemOff, 64) ~>
      execinstr (vmovsd memOffset( MemOff), R2:Xmm,  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem64:MInt):MemLoadValue ~> execinstr (vmovsd:Opcode memOffset( MemOff:MInt):MemOffset, R2:Xmm,  .Operands) =>
      .
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( mi(192, 0), Mem64)
      )
    </regstate>


// xorl-m32-r32

  context execinstr(xorl:Opcode R1:R32, HOLE:Mem,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (xorl:Opcode R1:R32, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      loadFromMemory( MemOff, 32) ~>
      execinstr (xorl R1, memOffset( MemOff),  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem32:MInt):MemLoadValue ~> execinstr (xorl:Opcode R1:R32, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      
            storeToMemory(
              xorMInt( Mem32, extractMInt( getParentValue(R1, RSMap), 32, 64)),
              MemOff,
              32
            )
          
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
"CF" |-> mi(1, 0)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( xorMInt( extractMInt( Mem32, 31, 32), extractMInt( getParentValue(R1, RSMap), 63, 64)), mi(1, 1)) xorBool eqMInt( xorMInt( extractMInt( Mem32, 30, 31), extractMInt( getParentValue(R1, RSMap), 62, 63)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( Mem32, 29, 30), extractMInt( getParentValue(R1, RSMap), 61, 62)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( Mem32, 28, 29), extractMInt( getParentValue(R1, RSMap), 60, 61)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( Mem32, 27, 28), extractMInt( getParentValue(R1, RSMap), 59, 60)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( Mem32, 26, 27), extractMInt( getParentValue(R1, RSMap), 58, 59)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( Mem32, 25, 26), extractMInt( getParentValue(R1, RSMap), 57, 58)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( Mem32, 24, 25), extractMInt( getParentValue(R1, RSMap), 56, 57)), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> (undefMInt)

"ZF" |-> (#ifMInt eqMInt( xorMInt( Mem32, extractMInt( getParentValue(R1, RSMap), 32, 64)), mi(32, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> xorMInt( extractMInt( Mem32, 0, 1), extractMInt( getParentValue(R1, RSMap), 32, 33))

"OF" |-> mi(1, 0)
      )
    </regstate>


// xorl-r32-m32

  context execinstr(xorl:Opcode HOLE:Mem, R2:R32,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (xorl:Opcode memOffset( MemOff:MInt):MemOffset, R2:R32,  .Operands) =>
      loadFromMemory( MemOff, 32) ~>
      execinstr (xorl memOffset( MemOff), R2,  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem32:MInt):MemLoadValue ~> execinstr (xorl:Opcode memOffset( MemOff:MInt):MemOffset, R2:R32,  .Operands) =>
      .
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( mi(32, 0), xorMInt( extractMInt( getParentValue(R2, RSMap), 32, 64), Mem32))

"CF" |-> mi(1, 0)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 63, 64), extractMInt( Mem32, 31, 32)), mi(1, 1)) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 62, 63), extractMInt( Mem32, 30, 31)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 61, 62), extractMInt( Mem32, 29, 30)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 60, 61), extractMInt( Mem32, 28, 29)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 59, 60), extractMInt( Mem32, 27, 28)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 58, 59), extractMInt( Mem32, 26, 27)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 57, 58), extractMInt( Mem32, 25, 26)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 56, 57), extractMInt( Mem32, 24, 25)), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> (undefMInt)

"ZF" |-> (#ifMInt eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 32, 64), Mem32), mi(32, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> xorMInt( extractMInt( getParentValue(R2, RSMap), 32, 33), extractMInt( Mem32, 0, 1))

"OF" |-> mi(1, 0)
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
convToRegKeys(R2) |-> concatenateMInt( mi(32, 0), extractMInt(LoadAddr, 32, 64))
)

    </regstate>
        <functargets>...  L |-> LoadAddr:PointerVal  ...</functargets>
    


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


// movsbl-r32-m8

  context execinstr(movsbl:Opcode HOLE:Mem, R2:R32,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (movsbl:Opcode memOffset( MemOff:MInt):MemOffset, R2:R32,  .Operands) =>
      loadFromMemory( MemOff, 8) ~>
      execinstr (movsbl memOffset( MemOff), R2,  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem8:MInt):MemLoadValue ~> execinstr (movsbl:Opcode memOffset( MemOff:MInt):MemOffset, R2:R32,  .Operands) =>
      .
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( mi(32, 0), mi(32, svalueMInt(Mem8)))
      )
    </regstate>


// movlpd-m64-xmm

  context execinstr(movlpd:Opcode R1:Xmm, HOLE:Mem,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (movlpd:Opcode R1:Xmm, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      loadFromMemory( MemOff, 64) ~>
      execinstr (movlpd R1:Xmm, memOffset( MemOff),  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem64:MInt):MemLoadValue ~> execinstr (movlpd:Opcode R1:Xmm, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      
            storeToMemory(
              extractMInt( getParentValue(R1, RSMap), 192, 256),
              MemOff,
              64
            )
          
  ...</k>
    <regstate> RSMap:Map </regstate>


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


// vmovq-r64-xmm

  rule <k>
    execinstr (vmovq R1:Xmm, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> extractMInt( getParentValue(R1, RSMap), 192, 256)
)

    </regstate>
    


// vmovq-r64-xmm-semantics



// callq-label

  rule <k> 
    execinstr (call LabelId:X86Id, .Operands) => 
      storeToMemory({RSMap["RIP"]}:>MInt, subMInt(getRegisterValue(%rsp, RSMap), mi(64, 8)), 64)  
      ~>  decRSPInBytes(8)
  ...</k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> Target))
      </regstate>
      <functargets>... LabelId |-> Target  ...</functargets>



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




// callq-r64

  rule <k> 
    execinstr (call R1:R64, .Operands) => 
      storeToMemory({RSMap["RIP"]}:>MInt, subMInt(getRegisterValue(%rsp, RSMap), mi(64, 8)), 64)  
      ~>  decRSPInBytes(8)
  ...</k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> getRegisterValue(R1, RSMap)))</regstate>


// stosq

  rule <k>
    execinstr (stosq  .Operands) =>
      storeToMemory(getRegisterValue(%rax, RSMap), getRegisterValue(%rdi, RSMap), 64) ~>
      setRegisterValue(addMInt(getRegisterValue(%rdi, RSMap), mi( 64, 8)), %rdi)
  ...</k>
    <regstate> RSMap:Map </regstate>
      requires eqMInt({RSMap["DF"]}:>MInt, mi(1, 0))

  rule <k>
    execinstr (stosq  .Operands) =>
      storeToMemory(getRegisterValue(%rax, RSMap), getRegisterValue(%rdi, RSMap), 64) ~>
      setRegisterValue(subMInt(getRegisterValue(%rdi, RSMap), mi( 64, 8)), %rdi)
  ...</k>
    <regstate> RSMap:Map </regstate>
      requires eqMInt({RSMap["DF"]}:>MInt, mi(1, 1))


// vmovq-xmm-r64

  rule <k>
    execinstr (vmovq R1:R64, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( mi(192, 0), getParentValue(R1, RSMap))
)

    </regstate>
    


// vmovq-xmm-r64-semantics


// repstosb

  rule <k>
    execinstr (rep stosb  .Operands) => .
    ...</k>
    <regstate> RSMap:Map </regstate>
      requires  eqMInt(getRegisterValue(%rcx, RSMap), mi(64, 0))

  rule <k>
    execinstr (rep stosb  .Operands) => 
      execinstr ( stosb  .Operands) ~>  setRegisterValue(subMInt(getRegisterValue(%rcx, RSMap), mi(64,1)), %rcx) ~> execinstr (rep stosb  .Operands)
    ...</k>
    <regstate> RSMap:Map </regstate>
      requires  notBool eqMInt(getRegisterValue(%rcx, RSMap), mi(64, 0))



// repstosl

  rule <k>
    execinstr (rep stosl  .Operands) => .
    ...</k>
    <regstate> RSMap:Map </regstate>
      requires  eqMInt(getRegisterValue(%rcx, RSMap), mi(64, 0))

  rule <k>
    execinstr (rep stosl  .Operands) => 
      execinstr ( stosl  .Operands) ~>  setRegisterValue(subMInt(getRegisterValue(%rcx, RSMap), mi(64,1)), %rcx) ~> execinstr (rep stosl  .Operands)
    ...</k>
    <regstate> RSMap:Map </regstate>
      requires  notBool eqMInt(getRegisterValue(%rcx, RSMap), mi(64, 0))



// repstosq

  rule <k>
    execinstr (rep stosq  .Operands) => .
    ...</k>
    <regstate> RSMap:Map </regstate>
      requires  eqMInt(getRegisterValue(%rcx, RSMap), mi(64, 0))

  rule <k>
    execinstr (rep stosq  .Operands) => 
      execinstr ( stosq  .Operands) ~>  setRegisterValue(subMInt(getRegisterValue(%rcx, RSMap), mi(64,1)), %rcx) ~> execinstr (rep stosq  .Operands)
    ...</k>
    <regstate> RSMap:Map </regstate>
      requires  notBool eqMInt(getRegisterValue(%rcx, RSMap), mi(64, 0))



// repstosw

  rule <k>
    execinstr (rep stosw  .Operands) => .
    ...</k>
    <regstate> RSMap:Map </regstate>
      requires  eqMInt(getRegisterValue(%rcx, RSMap), mi(64, 0))

  rule <k>
    execinstr (rep stosw  .Operands) => 
      execinstr ( stosw  .Operands) ~>  setRegisterValue(subMInt(getRegisterValue(%rcx, RSMap), mi(64,1)), %rcx) ~> execinstr (rep stosw  .Operands)
    ...</k>
    <regstate> RSMap:Map </regstate>
      requires  notBool eqMInt(getRegisterValue(%rcx, RSMap), mi(64, 0))



// movb-r8-r8

  rule <k>
    execinstr (movb R1:R8, R2:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 56), extractMInt( getParentValue(R1, RSMap), 56, 64))
)

    </regstate>
    


// movb-r8-r8-semantics


// movb-r8-rh

  rule <k>
    execinstr (movb R1:Rh, R2:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 56), extractMInt( getParentValue(R1, RSMap), 48, 56))
)

    </regstate>
    


// movb-r8-rh-semantics


// movb-rh-r8

  rule <k>
    execinstr (movb R1:R8, R2:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 48), extractMInt( getParentValue(R1, RSMap), 56, 64)), extractMInt( getParentValue(R2, RSMap), 56, 64))
)

    </regstate>
    


// movb-rh-r8-semantics


// movb-rh-rh

  rule <k>
    execinstr (movb R1:Rh, R2:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 48), extractMInt( getParentValue(R1, RSMap), 48, 56)), extractMInt( getParentValue(R2, RSMap), 56, 64))
)

    </regstate>
    


// movb-rh-rh-semantics


// movb-r8-imm8

  rule <k>
    execinstr (movb Imm8:Imm, R2:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 56), handleImmediateWithSignExtend(Imm8, 8, 8))
)

    </regstate>
    


// movb-r8-imm8-semantics


// movb-rh-imm8

  rule <k>
    execinstr (movb Imm8:Imm, R2:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 48), handleImmediateWithSignExtend(Imm8, 8, 8)), extractMInt( getParentValue(R2, RSMap), 56, 64))
)

    </regstate>
    


// movb-rh-imm8-semantics


// movb-m8-imm8

  context execinstr(movb:Opcode Imm8:Imm, HOLE:Mem,  .Operands) [result(MemOffset)]
  
  rule <k>
     execinstr (movb:Opcode Imm8:Imm, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      
            storeToMemory(
              handleImmediateWithSignExtend(Imm8, 8, 8),
              MemOff,
              8
            )
          
  ...</k>
    <regstate> RSMap:Map </regstate>


// movb-m8-r8

  context execinstr(movb:Opcode R1:R8, HOLE:Mem,  .Operands) [result(MemOffset)]
  
  rule <k>
     execinstr (movb:Opcode R1:R8, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      
            storeToMemory(
              extractMInt( getParentValue(R1, RSMap), 56, 64),
              MemOff,
              8
            )
          
  ...</k>
    <regstate> RSMap:Map </regstate>


// movb-m8-rh

  context execinstr(movb:Opcode R1:Rh, HOLE:Mem,  .Operands) [result(MemOffset)]
  
  rule <k>
     execinstr (movb:Opcode R1:Rh, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      
            storeToMemory(
              extractMInt( getParentValue(R1, RSMap), 48, 56),
              MemOff,
              8
            )
          
  ...</k>
    <regstate> RSMap:Map </regstate>


// movb-r8-m8

  context execinstr(movb:Opcode HOLE:Mem, R2:R8,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (movb:Opcode memOffset( MemOff:MInt):MemOffset, R2:R8,  .Operands) =>
      loadFromMemory( MemOff, 8) ~>
      execinstr (movb memOffset( MemOff), R2,  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem8:MInt):MemLoadValue ~> execinstr (movb:Opcode memOffset( MemOff:MInt):MemOffset, R2:R8,  .Operands) =>
      .
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 56), Mem8)
      )
    </regstate>


// movb-rh-m8

  context execinstr(movb:Opcode HOLE:Mem, R2:Rh,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (movb:Opcode memOffset( MemOff:MInt):MemOffset, R2:Rh,  .Operands) =>
      loadFromMemory( MemOff, 8) ~>
      execinstr (movb memOffset( MemOff), R2:Rh,  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem8:MInt):MemLoadValue ~> execinstr (movb:Opcode memOffset( MemOff:MInt):MemOffset, R2:Rh,  .Operands) =>
      .
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 48), Mem8), extractMInt( getParentValue(R2, RSMap), 56, 64))
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


// movlpd-xmm-m64

  context execinstr(movlpd:Opcode HOLE:Mem, R2:Xmm,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (movlpd:Opcode memOffset( MemOff:MInt):MemOffset, R2:Xmm,  .Operands) =>
      loadFromMemory( MemOff, 64) ~>
      execinstr (movlpd memOffset( MemOff), R2:Xmm,  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem64:MInt):MemLoadValue ~> execinstr (movlpd:Opcode memOffset( MemOff:MInt):MemOffset, R2:Xmm,  .Operands) =>
      .
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 192), Mem64)
      )
    </regstate>


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


// movlps-m64-xmm

  context execinstr(movlps:Opcode R1:Xmm, HOLE:Mem,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (movlps:Opcode R1:Xmm, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      loadFromMemory( MemOff, 64) ~>
      execinstr (movlps R1:Xmm, memOffset( MemOff),  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem64:MInt):MemLoadValue ~> execinstr (movlps:Opcode R1:Xmm, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      
            storeToMemory(
              extractMInt( getParentValue(R1, RSMap), 192, 256),
              MemOff,
              64
            )
          
  ...</k>
    <regstate> RSMap:Map </regstate>


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


// movslq-r64-r32

  rule <k>
    execinstr (movslq R1:R32, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> mi(64, svalueMInt(extractMInt( getParentValue(R1, RSMap), 32, 64)))
)

    </regstate>
    


// movslq-r64-r32-semantics


// movslq-r64-m32

  context execinstr(movslq:Opcode HOLE:Mem, R2:R64,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (movslq:Opcode memOffset( MemOff:MInt):MemOffset, R2:R64,  .Operands) =>
      loadFromMemory( MemOff, 32) ~>
      execinstr (movslq memOffset( MemOff), R2,  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem32:MInt):MemLoadValue ~> execinstr (movslq:Opcode memOffset( MemOff:MInt):MemOffset, R2:R64,  .Operands) =>
      .
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> mi(64, svalueMInt(Mem32))
      )
    </regstate>


// cmpq-r64-r64

  rule <k>
    execinstr (cmpq R1:R64, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
"CF" |-> (#ifMInt (notBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( getParentValue(R1, RSMap))), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 0, 1), mi(1, 1))) #then mi(1, 1) #else mi(1, 0) #fi)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( getParentValue(R1, RSMap))), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 64, 65), mi(1, 1)) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( getParentValue(R1, RSMap))), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 63, 64), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( getParentValue(R1, RSMap))), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 62, 63), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( getParentValue(R1, RSMap))), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 61, 62), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( getParentValue(R1, RSMap))), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 60, 61), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( getParentValue(R1, RSMap))), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 59, 60), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( getParentValue(R1, RSMap))), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 58, 59), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( getParentValue(R1, RSMap))), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 57, 58), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> xorMInt( xorMInt( extractMInt( getParentValue(R1, RSMap), 59, 60), extractMInt( getParentValue(R2, RSMap), 59, 60)), extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( getParentValue(R1, RSMap))), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 60, 61))

"ZF" |-> (#ifMInt eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( getParentValue(R1, RSMap))), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 1, 65), mi(64, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( getParentValue(R1, RSMap))), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 1, 2)

"OF" |-> (#ifMInt ((eqMInt( negMInt( extractMInt( getParentValue(R1, RSMap), 0, 1)), mi(1, 1)) ==Bool eqMInt( extractMInt( getParentValue(R2, RSMap), 0, 1), mi(1, 1))) andBool (notBool (eqMInt( negMInt( extractMInt( getParentValue(R1, RSMap), 0, 1)), mi(1, 1)) ==Bool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( getParentValue(R1, RSMap))), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 1, 2), mi(1, 1))))) #then mi(1, 1) #else mi(1, 0) #fi)
)

    </regstate>
    


// cmpq-r64-r64-semantics


// cmpq-r64-imm32

  rule <k>
    execinstr (cmpq Imm32:Imm, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
"CF" |-> (#ifMInt (notBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32))))), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 0, 1), mi(1, 1))) #then mi(1, 1) #else mi(1, 0) #fi)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32))))), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 64, 65), mi(1, 1)) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32))))), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 63, 64), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32))))), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 62, 63), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32))))), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 61, 62), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32))))), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 60, 61), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32))))), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 59, 60), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32))))), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 58, 59), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32))))), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 57, 58), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> xorMInt( xorMInt( extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 27, 28), extractMInt( getParentValue(R2, RSMap), 59, 60)), extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32))))), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 60, 61))

"ZF" |-> (#ifMInt eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32))))), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 1, 65), mi(64, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32))))), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 1, 2)

"OF" |-> (#ifMInt ((eqMInt( negMInt( extractMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32))), 0, 1)), mi(1, 1)) ==Bool eqMInt( extractMInt( getParentValue(R2, RSMap), 0, 1), mi(1, 1))) andBool (notBool (eqMInt( negMInt( extractMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32))), 0, 1)), mi(1, 1)) ==Bool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32))))), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 1, 2), mi(1, 1))))) #then mi(1, 1) #else mi(1, 0) #fi)
)

    </regstate>
    


// cmpq-r64-imm32-semantics


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


// movlhps-xmm-xmm

  rule <k>
    execinstr (movlhps R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 128), concatenateMInt( extractMInt( getParentValue(R1, RSMap), 192, 256), extractMInt( getParentValue(R2, RSMap), 192, 256)))
)

    </regstate>
    


// movlhps-xmm-xmm-semantics


// cmpq-m64-imm32

  context execinstr(cmpq:Opcode Imm32:Imm, HOLE:Mem,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (cmpq:Opcode Imm32:Imm, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      loadFromMemory( MemOff, 64) ~>
      execinstr (cmpq Imm32, memOffset( MemOff),  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem64:MInt):MemLoadValue ~> execinstr (cmpq:Opcode Imm32:Imm, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      .
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


// movlps-xmm-m64

  context execinstr(movlps:Opcode HOLE:Mem, R2:Xmm,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (movlps:Opcode memOffset( MemOff:MInt):MemOffset, R2:Xmm,  .Operands) =>
      loadFromMemory( MemOff, 64) ~>
      execinstr (movlps memOffset( MemOff), R2:Xmm,  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem64:MInt):MemLoadValue ~> execinstr (movlps:Opcode memOffset( MemOff:MInt):MemOffset, R2:Xmm,  .Operands) =>
      .
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 192), Mem64)
      )
    </regstate>


// cmpq-m64-r64

  context execinstr(cmpq:Opcode R1:R64, HOLE:Mem,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (cmpq:Opcode R1:R64, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      loadFromMemory( MemOff, 64) ~>
      execinstr (cmpq R1, memOffset( MemOff),  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem64:MInt):MemLoadValue ~> execinstr (cmpq:Opcode R1:R64, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      .
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


// cmpq-r64-m64

  context execinstr(cmpq:Opcode HOLE:Mem, R2:R64,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (cmpq:Opcode memOffset( MemOff:MInt):MemOffset, R2:R64,  .Operands) =>
      loadFromMemory( MemOff, 64) ~>
      execinstr (cmpq memOffset( MemOff), R2,  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem64:MInt):MemLoadValue ~> execinstr (cmpq:Opcode memOffset( MemOff:MInt):MemOffset, R2:R64,  .Operands) =>
      .
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
"CF" |-> (#ifMInt (notBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem64)), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 0, 1), mi(1, 1))) #then mi(1, 1) #else mi(1, 0) #fi)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem64)), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 64, 65), mi(1, 1)) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem64)), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 63, 64), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem64)), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 62, 63), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem64)), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 61, 62), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem64)), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 60, 61), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem64)), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 59, 60), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem64)), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 58, 59), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem64)), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 57, 58), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> xorMInt( xorMInt( extractMInt( Mem64, 59, 60), extractMInt( getParentValue(R2, RSMap), 59, 60)), extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem64)), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 60, 61))

"ZF" |-> (#ifMInt eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem64)), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 1, 65), mi(64, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem64)), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 1, 2)

"OF" |-> (#ifMInt ((eqMInt( negMInt( extractMInt( Mem64, 0, 1)), mi(1, 1)) ==Bool eqMInt( extractMInt( getParentValue(R2, RSMap), 0, 1), mi(1, 1))) andBool (notBool (eqMInt( negMInt( extractMInt( Mem64, 0, 1)), mi(1, 1)) ==Bool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem64)), mi(65, 1)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 1, 2), mi(1, 1))))) #then mi(1, 1) #else mi(1, 0) #fi)
      )
    </regstate>



// jnb-label

  rule <k> 
    execinstr (jnb LabelId:X86Id, .Operands) => .
  ...</k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> Target))
      </regstate>
      <functargets>... LabelId |-> Target  ...</functargets>
        requires  eqMInt({RSMap["CF"]}:>MInt, mi(1, 0))

  rule <k> 
    execinstr (jnb LabelId:X86Id, .Operands) => .
  ...</k>
      <regstate> RSMap:Map </regstate> 
        requires  eqMInt({RSMap["CF"]}:>MInt, mi(1, 1))


// vmovsd-xmm-xmm-xmm

  rule <k>
    execinstr (vmovsd R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> concatenateMInt( mi(128, 0), concatenateMInt( extractMInt( getParentValue(R2, RSMap), 128, 192), extractMInt( getParentValue(R1, RSMap), 192, 256)))
)

    </regstate>
    


// vmovsd-xmm-xmm-xmm-semantics


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


// xorq-r64-r64

  rule <k>
    execinstr (xorq R1:R64, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> xorMInt( getParentValue(R2, RSMap), getParentValue(R1, RSMap))

"CF" |-> mi(1, 0)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 63, 64), extractMInt( getParentValue(R1, RSMap), 63, 64)), mi(1, 1)) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 62, 63), extractMInt( getParentValue(R1, RSMap), 62, 63)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 61, 62), extractMInt( getParentValue(R1, RSMap), 61, 62)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 60, 61), extractMInt( getParentValue(R1, RSMap), 60, 61)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 59, 60), extractMInt( getParentValue(R1, RSMap), 59, 60)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 58, 59), extractMInt( getParentValue(R1, RSMap), 58, 59)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 57, 58), extractMInt( getParentValue(R1, RSMap), 57, 58)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 56, 57), extractMInt( getParentValue(R1, RSMap), 56, 57)), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> (undefMInt)

"ZF" |-> (#ifMInt eqMInt( xorMInt( getParentValue(R2, RSMap), getParentValue(R1, RSMap)), mi(64, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> xorMInt( extractMInt( getParentValue(R2, RSMap), 0, 1), extractMInt( getParentValue(R1, RSMap), 0, 1))

"OF" |-> mi(1, 0)
)

    </regstate>
    


// xorq-r64-r64-semantics


// xorq-r64-imm32

  rule <k>
    execinstr (xorq Imm32:Imm, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> xorMInt( getParentValue(R2, RSMap), mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32))))

"CF" |-> mi(1, 0)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 63, 64), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 31, 32)), mi(1, 1)) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 62, 63), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 30, 31)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 61, 62), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 29, 30)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 60, 61), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 28, 29)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 59, 60), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 27, 28)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 58, 59), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 26, 27)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 57, 58), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 25, 26)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 56, 57), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 24, 25)), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> (undefMInt)

"ZF" |-> (#ifMInt eqMInt( xorMInt( getParentValue(R2, RSMap), mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32)))), mi(64, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> xorMInt( extractMInt( getParentValue(R2, RSMap), 0, 1), extractMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32))), 0, 1))

"OF" |-> mi(1, 0)
)

    </regstate>
    


// xorq-r64-imm32-semantics



// retq

  rule <k> 
    execinstr(retq:Opcode .Operands) => execinstr(ret  .Operands)
  ...</k>

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


// vmovss-xmm-xmm-xmm

  rule <k>
    execinstr (vmovss R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> concatenateMInt( mi(128, 0), concatenateMInt( extractMInt( getParentValue(R2, RSMap), 128, 224), extractMInt( getParentValue(R1, RSMap), 224, 256)))
)

    </regstate>
    


// vmovss-xmm-xmm-xmm-semantics


// xorq-m64-imm32

  context execinstr(xorq:Opcode Imm32:Imm, HOLE:Mem,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (xorq:Opcode Imm32:Imm, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      loadFromMemory( MemOff, 64) ~>
      execinstr (xorq Imm32, memOffset( MemOff),  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem64:MInt):MemLoadValue ~> execinstr (xorq:Opcode Imm32:Imm, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      
            storeToMemory(
              xorMInt( Mem64, mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32)))),
              MemOff,
              64
            )
          
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
"CF" |-> mi(1, 0)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( xorMInt( extractMInt( Mem64, 63, 64), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 31, 32)), mi(1, 1)) xorBool eqMInt( xorMInt( extractMInt( Mem64, 62, 63), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 30, 31)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( Mem64, 61, 62), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 29, 30)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( Mem64, 60, 61), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 28, 29)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( Mem64, 59, 60), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 27, 28)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( Mem64, 58, 59), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 26, 27)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( Mem64, 57, 58), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 25, 26)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( Mem64, 56, 57), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 24, 25)), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> (undefMInt)

"ZF" |-> (#ifMInt eqMInt( xorMInt( Mem64, mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32)))), mi(64, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> xorMInt( extractMInt( Mem64, 0, 1), extractMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32))), 0, 1))

"OF" |-> mi(1, 0)
      )
    </regstate>


// vmovapd-xmm-xmm

  rule <k>
    execinstr (vmovapd R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( mi(128, 0), extractMInt( getParentValue(R1, RSMap), 128, 256))
)

    </regstate>
    


// vmovapd-xmm-xmm-semantics


// xorq-m64-r64

  context execinstr(xorq:Opcode R1:R64, HOLE:Mem,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (xorq:Opcode R1:R64, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      loadFromMemory( MemOff, 64) ~>
      execinstr (xorq R1, memOffset( MemOff),  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem64:MInt):MemLoadValue ~> execinstr (xorq:Opcode R1:R64, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      
            storeToMemory(
              xorMInt( Mem64, getParentValue(R1, RSMap)),
              MemOff,
              64
            )
          
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
"CF" |-> mi(1, 0)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( xorMInt( extractMInt( Mem64, 63, 64), extractMInt( getParentValue(R1, RSMap), 63, 64)), mi(1, 1)) xorBool eqMInt( xorMInt( extractMInt( Mem64, 62, 63), extractMInt( getParentValue(R1, RSMap), 62, 63)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( Mem64, 61, 62), extractMInt( getParentValue(R1, RSMap), 61, 62)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( Mem64, 60, 61), extractMInt( getParentValue(R1, RSMap), 60, 61)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( Mem64, 59, 60), extractMInt( getParentValue(R1, RSMap), 59, 60)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( Mem64, 58, 59), extractMInt( getParentValue(R1, RSMap), 58, 59)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( Mem64, 57, 58), extractMInt( getParentValue(R1, RSMap), 57, 58)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( Mem64, 56, 57), extractMInt( getParentValue(R1, RSMap), 56, 57)), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> (undefMInt)

"ZF" |-> (#ifMInt eqMInt( xorMInt( Mem64, getParentValue(R1, RSMap)), mi(64, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> xorMInt( extractMInt( Mem64, 0, 1), extractMInt( getParentValue(R1, RSMap), 0, 1))

"OF" |-> mi(1, 0)
      )
    </regstate>


// xorq-r64-m64

  context execinstr(xorq:Opcode HOLE:Mem, R2:R64,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (xorq:Opcode memOffset( MemOff:MInt):MemOffset, R2:R64,  .Operands) =>
      loadFromMemory( MemOff, 64) ~>
      execinstr (xorq memOffset( MemOff), R2,  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem64:MInt):MemLoadValue ~> execinstr (xorq:Opcode memOffset( MemOff:MInt):MemOffset, R2:R64,  .Operands) =>
      .
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> xorMInt( getParentValue(R2, RSMap), Mem64)

"CF" |-> mi(1, 0)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 63, 64), extractMInt( Mem64, 63, 64)), mi(1, 1)) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 62, 63), extractMInt( Mem64, 62, 63)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 61, 62), extractMInt( Mem64, 61, 62)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 60, 61), extractMInt( Mem64, 60, 61)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 59, 60), extractMInt( Mem64, 59, 60)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 58, 59), extractMInt( Mem64, 58, 59)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 57, 58), extractMInt( Mem64, 57, 58)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 56, 57), extractMInt( Mem64, 56, 57)), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> (undefMInt)

"ZF" |-> (#ifMInt eqMInt( xorMInt( getParentValue(R2, RSMap), Mem64), mi(64, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> xorMInt( extractMInt( getParentValue(R2, RSMap), 0, 1), extractMInt( Mem64, 0, 1))

"OF" |-> mi(1, 0)
      )
    </regstate>



// je-label

  rule <k> 
    execinstr (je LabelId:X86Id, .Operands) => .
  ...</k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> Target))
      </regstate>
      <functargets>... LabelId |-> Target  ...</functargets>
        requires eqMInt({RSMap["ZF"]}:>MInt, mi(1, 1))

  rule <k> 
    execinstr (je LabelId:X86Id, .Operands) => .
  ...</k>
      <regstate> RSMap:Map </regstate> 
        requires notBool eqMInt({RSMap["ZF"]}:>MInt, mi(1, 1))


// cmpb-r8-r8

  rule <k>
    execinstr (cmpb R1:R8, R2:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
"CF" |-> (#ifMInt (notBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 56, 64))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 0, 1), mi(1, 1))) #then mi(1, 1) #else mi(1, 0) #fi)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 56, 64))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 8, 9), mi(1, 1)) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 56, 64))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 7, 8), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 56, 64))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 6, 7), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 56, 64))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 5, 6), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 56, 64))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 4, 5), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 56, 64))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 3, 4), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 56, 64))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 2, 3), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 56, 64))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 1, 2), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> xorMInt( xorMInt( extractMInt( getParentValue(R1, RSMap), 59, 60), extractMInt( getParentValue(R2, RSMap), 59, 60)), extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 56, 64))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 4, 5))

"ZF" |-> (#ifMInt eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 56, 64))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 1, 9), mi(8, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 56, 64))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 1, 2)

"OF" |-> (#ifMInt ((eqMInt( negMInt( extractMInt( getParentValue(R1, RSMap), 56, 57)), mi(1, 1)) ==Bool eqMInt( extractMInt( getParentValue(R2, RSMap), 56, 57), mi(1, 1))) andBool (notBool (eqMInt( negMInt( extractMInt( getParentValue(R1, RSMap), 56, 57)), mi(1, 1)) ==Bool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 56, 64))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 1, 2), mi(1, 1))))) #then mi(1, 1) #else mi(1, 0) #fi)
)

    </regstate>
    


// cmpb-r8-r8-semantics


// cmpb-r8-rh

  rule <k>
    execinstr (cmpb R1:Rh, R2:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
"CF" |-> (#ifMInt (notBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 48, 56))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 0, 1), mi(1, 1))) #then mi(1, 1) #else mi(1, 0) #fi)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 48, 56))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 8, 9), mi(1, 1)) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 48, 56))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 7, 8), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 48, 56))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 6, 7), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 48, 56))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 5, 6), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 48, 56))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 4, 5), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 48, 56))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 3, 4), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 48, 56))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 2, 3), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 48, 56))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 1, 2), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> xorMInt( xorMInt( extractMInt( getParentValue(R1, RSMap), 51, 52), extractMInt( getParentValue(R2, RSMap), 59, 60)), extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 48, 56))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 4, 5))

"ZF" |-> (#ifMInt eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 48, 56))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 1, 9), mi(8, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 48, 56))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 1, 2)

"OF" |-> (#ifMInt ((eqMInt( negMInt( extractMInt( getParentValue(R1, RSMap), 48, 49)), mi(1, 1)) ==Bool eqMInt( extractMInt( getParentValue(R2, RSMap), 56, 57), mi(1, 1))) andBool (notBool (eqMInt( negMInt( extractMInt( getParentValue(R1, RSMap), 48, 49)), mi(1, 1)) ==Bool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 48, 56))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 1, 2), mi(1, 1))))) #then mi(1, 1) #else mi(1, 0) #fi)
)

    </regstate>
    


// cmpb-r8-rh-semantics


// cmpb-rh-r8

  rule <k>
    execinstr (cmpb R1:R8, R2:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
"CF" |-> (#ifMInt (notBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 56, 64))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 0, 1), mi(1, 1))) #then mi(1, 1) #else mi(1, 0) #fi)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 56, 64))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 8, 9), mi(1, 1)) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 56, 64))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 7, 8), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 56, 64))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 6, 7), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 56, 64))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 5, 6), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 56, 64))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 4, 5), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 56, 64))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 3, 4), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 56, 64))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 2, 3), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 56, 64))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 1, 2), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> xorMInt( xorMInt( extractMInt( getParentValue(R1, RSMap), 59, 60), extractMInt( getParentValue(R2, RSMap), 51, 52)), extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 56, 64))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 4, 5))

"ZF" |-> (#ifMInt eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 56, 64))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 1, 9), mi(8, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 56, 64))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 1, 2)

"OF" |-> (#ifMInt ((eqMInt( negMInt( extractMInt( getParentValue(R1, RSMap), 56, 57)), mi(1, 1)) ==Bool eqMInt( extractMInt( getParentValue(R2, RSMap), 48, 49), mi(1, 1))) andBool (notBool (eqMInt( negMInt( extractMInt( getParentValue(R1, RSMap), 56, 57)), mi(1, 1)) ==Bool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 56, 64))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 1, 2), mi(1, 1))))) #then mi(1, 1) #else mi(1, 0) #fi)
)

    </regstate>
    


// cmpb-rh-r8-semantics


// cmpb-rh-rh

  rule <k>
    execinstr (cmpb R1:Rh, R2:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
"CF" |-> (#ifMInt (notBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 48, 56))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 0, 1), mi(1, 1))) #then mi(1, 1) #else mi(1, 0) #fi)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 48, 56))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 8, 9), mi(1, 1)) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 48, 56))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 7, 8), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 48, 56))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 6, 7), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 48, 56))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 5, 6), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 48, 56))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 4, 5), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 48, 56))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 3, 4), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 48, 56))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 2, 3), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 48, 56))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 1, 2), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> xorMInt( xorMInt( extractMInt( getParentValue(R1, RSMap), 51, 52), extractMInt( getParentValue(R2, RSMap), 51, 52)), extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 48, 56))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 4, 5))

"ZF" |-> (#ifMInt eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 48, 56))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 1, 9), mi(8, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 48, 56))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 1, 2)

"OF" |-> (#ifMInt ((eqMInt( negMInt( extractMInt( getParentValue(R1, RSMap), 48, 49)), mi(1, 1)) ==Bool eqMInt( extractMInt( getParentValue(R2, RSMap), 48, 49), mi(1, 1))) andBool (notBool (eqMInt( negMInt( extractMInt( getParentValue(R1, RSMap), 48, 49)), mi(1, 1)) ==Bool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 48, 56))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 1, 2), mi(1, 1))))) #then mi(1, 1) #else mi(1, 0) #fi)
)

    </regstate>
    


// cmpb-rh-rh-semantics


// cmpb-al-imm8

  rule <k>
    execinstr (cmpb Imm8:Imm, %al,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
"CF" |-> (#ifMInt (notBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm8, 8, 8))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(%rax, RSMap), 56, 64))), 0, 1), mi(1, 1))) #then mi(1, 1) #else mi(1, 0) #fi)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm8, 8, 8))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(%rax, RSMap), 56, 64))), 8, 9), mi(1, 1)) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm8, 8, 8))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(%rax, RSMap), 56, 64))), 7, 8), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm8, 8, 8))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(%rax, RSMap), 56, 64))), 6, 7), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm8, 8, 8))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(%rax, RSMap), 56, 64))), 5, 6), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm8, 8, 8))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(%rax, RSMap), 56, 64))), 4, 5), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm8, 8, 8))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(%rax, RSMap), 56, 64))), 3, 4), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm8, 8, 8))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(%rax, RSMap), 56, 64))), 2, 3), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm8, 8, 8))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(%rax, RSMap), 56, 64))), 1, 2), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> xorMInt( xorMInt( extractMInt( handleImmediateWithSignExtend(Imm8, 8, 8), 3, 4), extractMInt( getParentValue(%rax, RSMap), 59, 60)), extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm8, 8, 8))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(%rax, RSMap), 56, 64))), 4, 5))

"ZF" |-> (#ifMInt eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm8, 8, 8))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(%rax, RSMap), 56, 64))), 1, 9), mi(8, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm8, 8, 8))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(%rax, RSMap), 56, 64))), 1, 2)

"OF" |-> (#ifMInt ((eqMInt( negMInt( extractMInt( handleImmediateWithSignExtend(Imm8, 8, 8), 0, 1)), mi(1, 1)) ==Bool eqMInt( extractMInt( getParentValue(%rax, RSMap), 56, 57), mi(1, 1))) andBool (notBool (eqMInt( negMInt( extractMInt( handleImmediateWithSignExtend(Imm8, 8, 8), 0, 1)), mi(1, 1)) ==Bool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm8, 8, 8))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(%rax, RSMap), 56, 64))), 1, 2), mi(1, 1))))) #then mi(1, 1) #else mi(1, 0) #fi)
)

    </regstate>
    


// cmpb-al-imm8-semantics


// cmpb-r8-imm8

  rule <k>
    execinstr (cmpb Imm8:Imm, R2:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
"CF" |-> (#ifMInt (notBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm8, 8, 8))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 0, 1), mi(1, 1))) #then mi(1, 1) #else mi(1, 0) #fi)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm8, 8, 8))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 8, 9), mi(1, 1)) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm8, 8, 8))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 7, 8), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm8, 8, 8))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 6, 7), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm8, 8, 8))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 5, 6), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm8, 8, 8))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 4, 5), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm8, 8, 8))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 3, 4), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm8, 8, 8))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 2, 3), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm8, 8, 8))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 1, 2), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> xorMInt( xorMInt( extractMInt( handleImmediateWithSignExtend(Imm8, 8, 8), 3, 4), extractMInt( getParentValue(R2, RSMap), 59, 60)), extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm8, 8, 8))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 4, 5))

"ZF" |-> (#ifMInt eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm8, 8, 8))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 1, 9), mi(8, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm8, 8, 8))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 1, 2)

"OF" |-> (#ifMInt ((eqMInt( negMInt( extractMInt( handleImmediateWithSignExtend(Imm8, 8, 8), 0, 1)), mi(1, 1)) ==Bool eqMInt( extractMInt( getParentValue(R2, RSMap), 56, 57), mi(1, 1))) andBool (notBool (eqMInt( negMInt( extractMInt( handleImmediateWithSignExtend(Imm8, 8, 8), 0, 1)), mi(1, 1)) ==Bool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm8, 8, 8))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 1, 2), mi(1, 1))))) #then mi(1, 1) #else mi(1, 0) #fi)
)

    </regstate>
    


// cmpb-r8-imm8-semantics


// cmpb-rh-imm8

  rule <k>
    execinstr (cmpb Imm8:Imm, R2:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
"CF" |-> (#ifMInt (notBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm8, 8, 8))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 0, 1), mi(1, 1))) #then mi(1, 1) #else mi(1, 0) #fi)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm8, 8, 8))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 8, 9), mi(1, 1)) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm8, 8, 8))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 7, 8), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm8, 8, 8))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 6, 7), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm8, 8, 8))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 5, 6), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm8, 8, 8))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 4, 5), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm8, 8, 8))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 3, 4), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm8, 8, 8))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 2, 3), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm8, 8, 8))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 1, 2), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> xorMInt( xorMInt( extractMInt( handleImmediateWithSignExtend(Imm8, 8, 8), 3, 4), extractMInt( getParentValue(R2, RSMap), 51, 52)), extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm8, 8, 8))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 4, 5))

"ZF" |-> (#ifMInt eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm8, 8, 8))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 1, 9), mi(8, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm8, 8, 8))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 1, 2)

"OF" |-> (#ifMInt ((eqMInt( negMInt( extractMInt( handleImmediateWithSignExtend(Imm8, 8, 8), 0, 1)), mi(1, 1)) ==Bool eqMInt( extractMInt( getParentValue(R2, RSMap), 48, 49), mi(1, 1))) andBool (notBool (eqMInt( negMInt( extractMInt( handleImmediateWithSignExtend(Imm8, 8, 8), 0, 1)), mi(1, 1)) ==Bool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm8, 8, 8))), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 1, 2), mi(1, 1))))) #then mi(1, 1) #else mi(1, 0) #fi)
)

    </regstate>
    


// cmpb-rh-imm8-semantics


// cmpb-m8-imm8

  context execinstr(cmpb:Opcode Imm8:Imm, HOLE:Mem,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (cmpb:Opcode Imm8:Imm, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      loadFromMemory( MemOff, 8) ~>
      execinstr (cmpb Imm8, memOffset( MemOff),  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem8:MInt):MemLoadValue ~> execinstr (cmpb:Opcode Imm8:Imm, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      .
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
"CF" |-> (#ifMInt (notBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm8, 8, 8))), mi(9, 1)), concatenateMInt( mi(1, 0), Mem8)), 0, 1), mi(1, 1))) #then mi(1, 1) #else mi(1, 0) #fi)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm8, 8, 8))), mi(9, 1)), concatenateMInt( mi(1, 0), Mem8)), 8, 9), mi(1, 1)) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm8, 8, 8))), mi(9, 1)), concatenateMInt( mi(1, 0), Mem8)), 7, 8), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm8, 8, 8))), mi(9, 1)), concatenateMInt( mi(1, 0), Mem8)), 6, 7), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm8, 8, 8))), mi(9, 1)), concatenateMInt( mi(1, 0), Mem8)), 5, 6), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm8, 8, 8))), mi(9, 1)), concatenateMInt( mi(1, 0), Mem8)), 4, 5), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm8, 8, 8))), mi(9, 1)), concatenateMInt( mi(1, 0), Mem8)), 3, 4), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm8, 8, 8))), mi(9, 1)), concatenateMInt( mi(1, 0), Mem8)), 2, 3), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm8, 8, 8))), mi(9, 1)), concatenateMInt( mi(1, 0), Mem8)), 1, 2), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> xorMInt( xorMInt( extractMInt( handleImmediateWithSignExtend(Imm8, 8, 8), 3, 4), extractMInt( Mem8, 3, 4)), extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm8, 8, 8))), mi(9, 1)), concatenateMInt( mi(1, 0), Mem8)), 4, 5))

"ZF" |-> (#ifMInt eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm8, 8, 8))), mi(9, 1)), concatenateMInt( mi(1, 0), Mem8)), 1, 9), mi(8, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm8, 8, 8))), mi(9, 1)), concatenateMInt( mi(1, 0), Mem8)), 1, 2)

"OF" |-> (#ifMInt ((eqMInt( negMInt( extractMInt( handleImmediateWithSignExtend(Imm8, 8, 8), 0, 1)), mi(1, 1)) ==Bool eqMInt( extractMInt( Mem8, 0, 1), mi(1, 1))) andBool (notBool (eqMInt( negMInt( extractMInt( handleImmediateWithSignExtend(Imm8, 8, 8), 0, 1)), mi(1, 1)) ==Bool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( handleImmediateWithSignExtend(Imm8, 8, 8))), mi(9, 1)), concatenateMInt( mi(1, 0), Mem8)), 1, 2), mi(1, 1))))) #then mi(1, 1) #else mi(1, 0) #fi)
      )
    </regstate>


// cmpb-m8-r8

  context execinstr(cmpb:Opcode R1:R8, HOLE:Mem,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (cmpb:Opcode R1:R8, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      loadFromMemory( MemOff, 8) ~>
      execinstr (cmpb R1, memOffset( MemOff),  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem8:MInt):MemLoadValue ~> execinstr (cmpb:Opcode R1:R8, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      .
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
"CF" |-> (#ifMInt (notBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 56, 64))), mi(9, 1)), concatenateMInt( mi(1, 0), Mem8)), 0, 1), mi(1, 1))) #then mi(1, 1) #else mi(1, 0) #fi)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 56, 64))), mi(9, 1)), concatenateMInt( mi(1, 0), Mem8)), 8, 9), mi(1, 1)) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 56, 64))), mi(9, 1)), concatenateMInt( mi(1, 0), Mem8)), 7, 8), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 56, 64))), mi(9, 1)), concatenateMInt( mi(1, 0), Mem8)), 6, 7), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 56, 64))), mi(9, 1)), concatenateMInt( mi(1, 0), Mem8)), 5, 6), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 56, 64))), mi(9, 1)), concatenateMInt( mi(1, 0), Mem8)), 4, 5), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 56, 64))), mi(9, 1)), concatenateMInt( mi(1, 0), Mem8)), 3, 4), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 56, 64))), mi(9, 1)), concatenateMInt( mi(1, 0), Mem8)), 2, 3), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 56, 64))), mi(9, 1)), concatenateMInt( mi(1, 0), Mem8)), 1, 2), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> xorMInt( xorMInt( extractMInt( getParentValue(R1, RSMap), 59, 60), extractMInt( Mem8, 3, 4)), extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 56, 64))), mi(9, 1)), concatenateMInt( mi(1, 0), Mem8)), 4, 5))

"ZF" |-> (#ifMInt eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 56, 64))), mi(9, 1)), concatenateMInt( mi(1, 0), Mem8)), 1, 9), mi(8, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 56, 64))), mi(9, 1)), concatenateMInt( mi(1, 0), Mem8)), 1, 2)

"OF" |-> (#ifMInt ((eqMInt( negMInt( extractMInt( getParentValue(R1, RSMap), 56, 57)), mi(1, 1)) ==Bool eqMInt( extractMInt( Mem8, 0, 1), mi(1, 1))) andBool (notBool (eqMInt( negMInt( extractMInt( getParentValue(R1, RSMap), 56, 57)), mi(1, 1)) ==Bool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 56, 64))), mi(9, 1)), concatenateMInt( mi(1, 0), Mem8)), 1, 2), mi(1, 1))))) #then mi(1, 1) #else mi(1, 0) #fi)
      )
    </regstate>


// cmpb-m8-rh

  context execinstr(cmpb:Opcode R1:Rh, HOLE:Mem,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (cmpb:Opcode R1:Rh, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      loadFromMemory( MemOff, 8) ~>
      execinstr (cmpb R1:Rh, memOffset( MemOff),  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem8:MInt):MemLoadValue ~> execinstr (cmpb:Opcode R1:Rh, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      .
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
"CF" |-> (#ifMInt (notBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 48, 56))), mi(9, 1)), concatenateMInt( mi(1, 0), Mem8)), 0, 1), mi(1, 1))) #then mi(1, 1) #else mi(1, 0) #fi)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 48, 56))), mi(9, 1)), concatenateMInt( mi(1, 0), Mem8)), 8, 9), mi(1, 1)) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 48, 56))), mi(9, 1)), concatenateMInt( mi(1, 0), Mem8)), 7, 8), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 48, 56))), mi(9, 1)), concatenateMInt( mi(1, 0), Mem8)), 6, 7), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 48, 56))), mi(9, 1)), concatenateMInt( mi(1, 0), Mem8)), 5, 6), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 48, 56))), mi(9, 1)), concatenateMInt( mi(1, 0), Mem8)), 4, 5), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 48, 56))), mi(9, 1)), concatenateMInt( mi(1, 0), Mem8)), 3, 4), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 48, 56))), mi(9, 1)), concatenateMInt( mi(1, 0), Mem8)), 2, 3), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 48, 56))), mi(9, 1)), concatenateMInt( mi(1, 0), Mem8)), 1, 2), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> xorMInt( xorMInt( extractMInt( getParentValue(R1, RSMap), 51, 52), extractMInt( Mem8, 3, 4)), extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 48, 56))), mi(9, 1)), concatenateMInt( mi(1, 0), Mem8)), 4, 5))

"ZF" |-> (#ifMInt eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 48, 56))), mi(9, 1)), concatenateMInt( mi(1, 0), Mem8)), 1, 9), mi(8, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 48, 56))), mi(9, 1)), concatenateMInt( mi(1, 0), Mem8)), 1, 2)

"OF" |-> (#ifMInt ((eqMInt( negMInt( extractMInt( getParentValue(R1, RSMap), 48, 49)), mi(1, 1)) ==Bool eqMInt( extractMInt( Mem8, 0, 1), mi(1, 1))) andBool (notBool (eqMInt( negMInt( extractMInt( getParentValue(R1, RSMap), 48, 49)), mi(1, 1)) ==Bool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 48, 56))), mi(9, 1)), concatenateMInt( mi(1, 0), Mem8)), 1, 2), mi(1, 1))))) #then mi(1, 1) #else mi(1, 0) #fi)
      )
    </regstate>


// cmpb-r8-m8

  context execinstr(cmpb:Opcode HOLE:Mem, R2:R8,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (cmpb:Opcode memOffset( MemOff:MInt):MemOffset, R2:R8,  .Operands) =>
      loadFromMemory( MemOff, 8) ~>
      execinstr (cmpb memOffset( MemOff), R2,  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem8:MInt):MemLoadValue ~> execinstr (cmpb:Opcode memOffset( MemOff:MInt):MemOffset, R2:R8,  .Operands) =>
      .
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
"CF" |-> (#ifMInt (notBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem8)), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 0, 1), mi(1, 1))) #then mi(1, 1) #else mi(1, 0) #fi)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem8)), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 8, 9), mi(1, 1)) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem8)), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 7, 8), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem8)), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 6, 7), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem8)), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 5, 6), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem8)), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 4, 5), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem8)), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 3, 4), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem8)), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 2, 3), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem8)), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 1, 2), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> xorMInt( xorMInt( extractMInt( Mem8, 3, 4), extractMInt( getParentValue(R2, RSMap), 59, 60)), extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem8)), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 4, 5))

"ZF" |-> (#ifMInt eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem8)), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 1, 9), mi(8, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem8)), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 1, 2)

"OF" |-> (#ifMInt ((eqMInt( negMInt( extractMInt( Mem8, 0, 1)), mi(1, 1)) ==Bool eqMInt( extractMInt( getParentValue(R2, RSMap), 56, 57), mi(1, 1))) andBool (notBool (eqMInt( negMInt( extractMInt( Mem8, 0, 1)), mi(1, 1)) ==Bool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem8)), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 1, 2), mi(1, 1))))) #then mi(1, 1) #else mi(1, 0) #fi)
      )
    </regstate>


// cmpb-rh-m8

  context execinstr(cmpb:Opcode HOLE:Mem, R2:Rh,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (cmpb:Opcode memOffset( MemOff:MInt):MemOffset, R2:Rh,  .Operands) =>
      loadFromMemory( MemOff, 8) ~>
      execinstr (cmpb memOffset( MemOff), R2:Rh,  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem8:MInt):MemLoadValue ~> execinstr (cmpb:Opcode memOffset( MemOff:MInt):MemOffset, R2:Rh,  .Operands) =>
      .
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
"CF" |-> (#ifMInt (notBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem8)), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 0, 1), mi(1, 1))) #then mi(1, 1) #else mi(1, 0) #fi)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem8)), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 8, 9), mi(1, 1)) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem8)), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 7, 8), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem8)), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 6, 7), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem8)), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 5, 6), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem8)), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 4, 5), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem8)), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 3, 4), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem8)), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 2, 3), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem8)), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 1, 2), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> xorMInt( xorMInt( extractMInt( Mem8, 3, 4), extractMInt( getParentValue(R2, RSMap), 51, 52)), extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem8)), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 4, 5))

"ZF" |-> (#ifMInt eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem8)), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 1, 9), mi(8, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem8)), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 1, 2)

"OF" |-> (#ifMInt ((eqMInt( negMInt( extractMInt( Mem8, 0, 1)), mi(1, 1)) ==Bool eqMInt( extractMInt( getParentValue(R2, RSMap), 48, 49), mi(1, 1))) andBool (notBool (eqMInt( negMInt( extractMInt( Mem8, 0, 1)), mi(1, 1)) ==Bool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( Mem8)), mi(9, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 1, 2), mi(1, 1))))) #then mi(1, 1) #else mi(1, 0) #fi)
      )
    </regstate>

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


// vmovq-xmm-xmm

  rule <k>
    execinstr (vmovq R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( mi(192, 0), extractMInt( getParentValue(R1, RSMap), 192, 256))
)

    </regstate>
    


// vmovq-xmm-xmm-semantics



// jmpq-label

  rule <k> 
    execinstr (jmp LabelId:X86Id, .Operands) => .
  ...</k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> Target))
      </regstate>
      <functargets>... LabelId |-> Target  ...</functargets>



// movbel-m32-r32

  context execinstr(movbel:Opcode R1:R32, HOLE:Mem,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (movbel:Opcode R1:R32, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      loadFromMemory( MemOff, 32) ~>
      execinstr (movbel R1, memOffset( MemOff),  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem32:MInt):MemLoadValue ~> execinstr (movbel:Opcode R1:R32, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      
            storeToMemory(
              concatenateMInt( concatenateMInt( concatenateMInt( extractMInt( getParentValue(R1, RSMap), 56, 64), extractMInt( getParentValue(R1, RSMap), 48, 56)), extractMInt( getParentValue(R1, RSMap), 40, 48)), extractMInt( getParentValue(R1, RSMap), 32, 40)),
              MemOff,
              32
            )
          
  ...</k>
    <regstate> RSMap:Map </regstate>


// movbel-r32-m32

  context execinstr(movbel:Opcode HOLE:Mem, R2:R32,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (movbel:Opcode memOffset( MemOff:MInt):MemOffset, R2:R32,  .Operands) =>
      loadFromMemory( MemOff, 32) ~>
      execinstr (movbel memOffset( MemOff), R2,  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem32:MInt):MemLoadValue ~> execinstr (movbel:Opcode memOffset( MemOff:MInt):MemOffset, R2:R32,  .Operands) =>
      .
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( mi(32, 0), concatenateMInt( concatenateMInt( concatenateMInt( extractMInt( Mem32, 24, 32), extractMInt( Mem32, 16, 24)), extractMInt( Mem32, 8, 16)), extractMInt( Mem32, 0, 8)))
      )
    </regstate>


// movbeq-m64-r64

  context execinstr(movbeq:Opcode R1:R64, HOLE:Mem,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (movbeq:Opcode R1:R64, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      loadFromMemory( MemOff, 64) ~>
      execinstr (movbeq R1, memOffset( MemOff),  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem64:MInt):MemLoadValue ~> execinstr (movbeq:Opcode R1:R64, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      
            storeToMemory(
              concatenateMInt( concatenateMInt( concatenateMInt( concatenateMInt( concatenateMInt( concatenateMInt( concatenateMInt( extractMInt( getParentValue(R1, RSMap), 56, 64), extractMInt( getParentValue(R1, RSMap), 48, 56)), extractMInt( getParentValue(R1, RSMap), 40, 48)), extractMInt( getParentValue(R1, RSMap), 32, 40)), extractMInt( getParentValue(R1, RSMap), 24, 32)), extractMInt( getParentValue(R1, RSMap), 16, 24)), extractMInt( getParentValue(R1, RSMap), 8, 16)), extractMInt( getParentValue(R1, RSMap), 0, 8)),
              MemOff,
              64
            )
          
  ...</k>
    <regstate> RSMap:Map </regstate>


// movbeq-r64-m64

  context execinstr(movbeq:Opcode HOLE:Mem, R2:R64,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (movbeq:Opcode memOffset( MemOff:MInt):MemOffset, R2:R64,  .Operands) =>
      loadFromMemory( MemOff, 64) ~>
      execinstr (movbeq memOffset( MemOff), R2,  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem64:MInt):MemLoadValue ~> execinstr (movbeq:Opcode memOffset( MemOff:MInt):MemOffset, R2:R64,  .Operands) =>
      .
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( concatenateMInt( concatenateMInt( concatenateMInt( concatenateMInt( concatenateMInt( concatenateMInt( extractMInt( Mem64, 56, 64), extractMInt( Mem64, 48, 56)), extractMInt( Mem64, 40, 48)), extractMInt( Mem64, 32, 40)), extractMInt( Mem64, 24, 32)), extractMInt( Mem64, 16, 24)), extractMInt( Mem64, 8, 16)), extractMInt( Mem64, 0, 8))
      )
    </regstate>


// movbew-m16-r16

  context execinstr(movbew:Opcode R1:R16, HOLE:Mem,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (movbew:Opcode R1:R16, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      loadFromMemory( MemOff, 16) ~>
      execinstr (movbew R1, memOffset( MemOff),  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem16:MInt):MemLoadValue ~> execinstr (movbew:Opcode R1:R16, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      
            storeToMemory(
              concatenateMInt( extractMInt( getParentValue(R1, RSMap), 56, 64), extractMInt( getParentValue(R1, RSMap), 48, 56)),
              MemOff,
              16
            )
          
  ...</k>
    <regstate> RSMap:Map </regstate>


// movbew-r16-m16

  context execinstr(movbew:Opcode HOLE:Mem, R2:R16,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (movbew:Opcode memOffset( MemOff:MInt):MemOffset, R2:R16,  .Operands) =>
      loadFromMemory( MemOff, 16) ~>
      execinstr (movbew memOffset( MemOff), R2,  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem16:MInt):MemLoadValue ~> execinstr (movbew:Opcode memOffset( MemOff:MInt):MemOffset, R2:R16,  .Operands) =>
      .
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 48), concatenateMInt( extractMInt( Mem16, 8, 16), extractMInt( Mem16, 0, 8)))
      )
    </regstate>



// jnbe-label

  rule <k> 
    execinstr (jnbe LabelId:X86Id, .Operands) => .
  ...</k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> Target))
      </regstate>
      <functargets>... LabelId |-> Target  ...</functargets>
        requires  eqMInt({RSMap["CF"]}:>MInt, mi(1, 0)) andBool eqMInt({RSMap["ZF"]}:>MInt, mi(1, 0))

  rule <k> 
    execinstr (jnbe LabelId:X86Id, .Operands) => .
  ...</k>
      <regstate> RSMap:Map </regstate> 
        requires  notBool eqMInt({RSMap["CF"]}:>MInt, mi(1, 0)) 
          orBool notBool eqMInt({RSMap["ZF"]}:>MInt, mi(1, 0))



// jecxz-label

  rule <k> 
    execinstr (jecxz LabelId:X86Id, .Operands) => .
  ...</k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> Target))
      </regstate>
      <functargets>... LabelId |-> Target  ...</functargets>
        requires eqMInt(getRegisterValue(%ecx, RSMap), mi(32, 0))

  rule <k> 
    execinstr (jecxz LabelId:X86Id, .Operands) => .
  ...</k>
      <regstate> RSMap:Map </regstate> 
        requires notBool eqMInt(getRegisterValue(%ecx, RSMap), mi(32, 0))


// vmovapd-ymm-ymm

  rule <k>
    execinstr (vmovapd R1:Ymm, R2:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> getParentValue(R1, RSMap)
)

    </regstate>
    


// vmovapd-ymm-ymm-semantics


// vmovaps-xmm-xmm

  rule <k>
    execinstr (vmovaps R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( mi(128, 0), extractMInt( getParentValue(R1, RSMap), 128, 256))
)

    </regstate>
    


// vmovaps-xmm-xmm-semantics


// vmovaps-ymm-ymm

  rule <k>
    execinstr (vmovaps R1:Ymm, R2:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> getParentValue(R1, RSMap)
)

    </regstate>
    


// vmovaps-ymm-ymm-semantics


// vcvtss2sd-xmm-xmm-m32

  context execinstr(vcvtss2sd:Opcode HOLE:Mem, R2:Xmm, R3:Xmm,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (vcvtss2sd:Opcode memOffset( MemOff:MInt):MemOffset, R2:Xmm, R3:Xmm,  .Operands) =>
      loadFromMemory( MemOff, 32) ~>
      execinstr (vcvtss2sd memOffset( MemOff), R2:Xmm, R3:Xmm,  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem32:MInt):MemLoadValue ~> execinstr (vcvtss2sd:Opcode memOffset( MemOff:MInt):MemOffset, R2:Xmm, R3:Xmm,  .Operands) =>
      .
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> concatenateMInt( mi(128, 0), concatenateMInt( extractMInt( getParentValue(R2, RSMap), 128, 192), cvt_single_to_double(Mem32)))
      )
    </regstate>


// movw-m16-imm16

  context execinstr(movw:Opcode Imm16:Imm, HOLE:Mem,  .Operands) [result(MemOffset)]
  
  rule <k>
     execinstr (movw:Opcode Imm16:Imm, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      
            storeToMemory(
              handleImmediateWithSignExtend(Imm16, 16, 16),
              MemOff,
              16
            )
          
  ...</k>
    <regstate> RSMap:Map </regstate>


// movw-m16-r16

  context execinstr(movw:Opcode R1:R16, HOLE:Mem,  .Operands) [result(MemOffset)]
  
  rule <k>
     execinstr (movw:Opcode R1:R16, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      
            storeToMemory(
              extractMInt( getParentValue(R1, RSMap), 48, 64),
              MemOff,
              16
            )
          
  ...</k>
    <regstate> RSMap:Map </regstate>


// testl-r32-r32

  rule <k>
    execinstr (testl R1:R32, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
"CF" |-> mi(1, 0)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 63, 64), extractMInt( getParentValue(R1, RSMap), 63, 64)), mi(1, 1)) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 62, 63), extractMInt( getParentValue(R1, RSMap), 62, 63)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 61, 62), extractMInt( getParentValue(R1, RSMap), 61, 62)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 60, 61), extractMInt( getParentValue(R1, RSMap), 60, 61)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 59, 60), extractMInt( getParentValue(R1, RSMap), 59, 60)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 58, 59), extractMInt( getParentValue(R1, RSMap), 58, 59)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 57, 58), extractMInt( getParentValue(R1, RSMap), 57, 58)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 56, 57), extractMInt( getParentValue(R1, RSMap), 56, 57)), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> (undefMInt)

"ZF" |-> (#ifMInt eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 32, 64), extractMInt( getParentValue(R1, RSMap), 32, 64)), mi(32, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> andMInt( extractMInt( getParentValue(R2, RSMap), 32, 33), extractMInt( getParentValue(R1, RSMap), 32, 33))

"OF" |-> mi(1, 0)
)

    </regstate>
    


// testl-r32-r32-semantics


// testl-m32-imm32

  context execinstr(testl:Opcode Imm32:Imm, HOLE:Mem,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (testl:Opcode Imm32:Imm, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      loadFromMemory( MemOff, 32) ~>
      execinstr (testl Imm32, memOffset( MemOff),  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem32:MInt):MemLoadValue ~> execinstr (testl:Opcode Imm32:Imm, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      .
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
"CF" |-> mi(1, 0)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( andMInt( extractMInt( Mem32, 31, 32), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 31, 32)), mi(1, 1)) xorBool eqMInt( andMInt( extractMInt( Mem32, 30, 31), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 30, 31)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( Mem32, 29, 30), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 29, 30)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( Mem32, 28, 29), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 28, 29)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( Mem32, 27, 28), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 27, 28)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( Mem32, 26, 27), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 26, 27)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( Mem32, 25, 26), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 25, 26)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( Mem32, 24, 25), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 24, 25)), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> (undefMInt)

"ZF" |-> (#ifMInt eqMInt( andMInt( Mem32, handleImmediateWithSignExtend(Imm32, 32, 32)), mi(32, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> andMInt( extractMInt( Mem32, 0, 1), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 0, 1))

"OF" |-> mi(1, 0)
      )
    </regstate>


// testl-m32-r32

  context execinstr(testl:Opcode R1:R32, HOLE:Mem,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (testl:Opcode R1:R32, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      loadFromMemory( MemOff, 32) ~>
      execinstr (testl R1, memOffset( MemOff),  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem32:MInt):MemLoadValue ~> execinstr (testl:Opcode R1:R32, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      .
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
"CF" |-> mi(1, 0)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( andMInt( extractMInt( Mem32, 31, 32), extractMInt( getParentValue(R1, RSMap), 63, 64)), mi(1, 1)) xorBool eqMInt( andMInt( extractMInt( Mem32, 30, 31), extractMInt( getParentValue(R1, RSMap), 62, 63)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( Mem32, 29, 30), extractMInt( getParentValue(R1, RSMap), 61, 62)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( Mem32, 28, 29), extractMInt( getParentValue(R1, RSMap), 60, 61)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( Mem32, 27, 28), extractMInt( getParentValue(R1, RSMap), 59, 60)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( Mem32, 26, 27), extractMInt( getParentValue(R1, RSMap), 58, 59)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( Mem32, 25, 26), extractMInt( getParentValue(R1, RSMap), 57, 58)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( Mem32, 24, 25), extractMInt( getParentValue(R1, RSMap), 56, 57)), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> (undefMInt)

"ZF" |-> (#ifMInt eqMInt( andMInt( Mem32, extractMInt( getParentValue(R1, RSMap), 32, 64)), mi(32, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> andMInt( extractMInt( Mem32, 0, 1), extractMInt( getParentValue(R1, RSMap), 32, 33))

"OF" |-> mi(1, 0)
      )
    </regstate>


// testl-r32-imm32

  rule <k>
    execinstr (testl Imm32:Imm, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
"CF" |-> mi(1, 0)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 63, 64), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 31, 32)), mi(1, 1)) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 62, 63), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 30, 31)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 61, 62), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 29, 30)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 60, 61), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 28, 29)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 59, 60), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 27, 28)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 58, 59), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 26, 27)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 57, 58), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 25, 26)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 56, 57), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 24, 25)), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> (undefMInt)

"ZF" |-> (#ifMInt eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 32, 64), handleImmediateWithSignExtend(Imm32, 32, 32)), mi(32, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> andMInt( extractMInt( getParentValue(R2, RSMap), 32, 33), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 0, 1))

"OF" |-> mi(1, 0)
)

    </regstate>
    


// testl-r32-imm32-semantics


// testq-r64-r64

  rule <k>
    execinstr (testq R1:R64, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
"CF" |-> mi(1, 0)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 63, 64), extractMInt( getParentValue(R1, RSMap), 63, 64)), mi(1, 1)) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 62, 63), extractMInt( getParentValue(R1, RSMap), 62, 63)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 61, 62), extractMInt( getParentValue(R1, RSMap), 61, 62)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 60, 61), extractMInt( getParentValue(R1, RSMap), 60, 61)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 59, 60), extractMInt( getParentValue(R1, RSMap), 59, 60)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 58, 59), extractMInt( getParentValue(R1, RSMap), 58, 59)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 57, 58), extractMInt( getParentValue(R1, RSMap), 57, 58)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 56, 57), extractMInt( getParentValue(R1, RSMap), 56, 57)), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> (undefMInt)

"ZF" |-> (#ifMInt eqMInt( andMInt( getParentValue(R2, RSMap), getParentValue(R1, RSMap)), mi(64, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> andMInt( extractMInt( getParentValue(R2, RSMap), 0, 1), extractMInt( getParentValue(R1, RSMap), 0, 1))

"OF" |-> mi(1, 0)
)

    </regstate>
    


// testq-r64-r64-semantics


// testq-m64-imm32

  context execinstr(testq:Opcode Imm32:Imm, HOLE:Mem,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (testq:Opcode Imm32:Imm, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      loadFromMemory( MemOff, 64) ~>
      execinstr (testq Imm32, memOffset( MemOff),  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem64:MInt):MemLoadValue ~> execinstr (testq:Opcode Imm32:Imm, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      .
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
"CF" |-> mi(1, 0)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( andMInt( extractMInt( Mem64, 63, 64), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 31, 32)), mi(1, 1)) xorBool eqMInt( andMInt( extractMInt( Mem64, 62, 63), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 30, 31)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( Mem64, 61, 62), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 29, 30)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( Mem64, 60, 61), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 28, 29)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( Mem64, 59, 60), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 27, 28)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( Mem64, 58, 59), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 26, 27)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( Mem64, 57, 58), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 25, 26)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( Mem64, 56, 57), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 24, 25)), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> (undefMInt)

"ZF" |-> (#ifMInt eqMInt( andMInt( Mem64, mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32)))), mi(64, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> andMInt( extractMInt( Mem64, 0, 1), extractMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32))), 0, 1))

"OF" |-> mi(1, 0)
      )
    </regstate>


// testq-m64-r64

  context execinstr(testq:Opcode R1:R64, HOLE:Mem,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (testq:Opcode R1:R64, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      loadFromMemory( MemOff, 64) ~>
      execinstr (testq R1, memOffset( MemOff),  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem64:MInt):MemLoadValue ~> execinstr (testq:Opcode R1:R64, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      .
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
"CF" |-> mi(1, 0)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( andMInt( extractMInt( Mem64, 63, 64), extractMInt( getParentValue(R1, RSMap), 63, 64)), mi(1, 1)) xorBool eqMInt( andMInt( extractMInt( Mem64, 62, 63), extractMInt( getParentValue(R1, RSMap), 62, 63)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( Mem64, 61, 62), extractMInt( getParentValue(R1, RSMap), 61, 62)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( Mem64, 60, 61), extractMInt( getParentValue(R1, RSMap), 60, 61)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( Mem64, 59, 60), extractMInt( getParentValue(R1, RSMap), 59, 60)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( Mem64, 58, 59), extractMInt( getParentValue(R1, RSMap), 58, 59)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( Mem64, 57, 58), extractMInt( getParentValue(R1, RSMap), 57, 58)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( Mem64, 56, 57), extractMInt( getParentValue(R1, RSMap), 56, 57)), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> (undefMInt)

"ZF" |-> (#ifMInt eqMInt( andMInt( Mem64, getParentValue(R1, RSMap)), mi(64, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> andMInt( extractMInt( Mem64, 0, 1), extractMInt( getParentValue(R1, RSMap), 0, 1))

"OF" |-> mi(1, 0)
      )
    </regstate>


// testq-r64-imm32

  rule <k>
    execinstr (testq Imm32:Imm, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
"CF" |-> mi(1, 0)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 63, 64), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 31, 32)), mi(1, 1)) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 62, 63), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 30, 31)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 61, 62), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 29, 30)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 60, 61), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 28, 29)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 59, 60), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 27, 28)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 58, 59), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 26, 27)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 57, 58), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 25, 26)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 56, 57), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 24, 25)), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> (undefMInt)

"ZF" |-> (#ifMInt eqMInt( andMInt( getParentValue(R2, RSMap), mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32)))), mi(64, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> andMInt( extractMInt( getParentValue(R2, RSMap), 0, 1), extractMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32))), 0, 1))

"OF" |-> mi(1, 0)
)

    </regstate>
    


// testq-r64-imm32-semantics

endmodule
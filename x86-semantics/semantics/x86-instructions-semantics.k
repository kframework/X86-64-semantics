requires "x86-configuration.k"
requires "x86-flag-checks-syntax.k"

module X86-INSTRUCTIONS-SEMANTICS
  imports X86-CONFIGURATION
  imports X86-FLAG-CHECKS-SYNTAX

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


// addb-r8-r8

  rule <k>
    execinstr (addb R1:R8, R2:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 56), extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 56, 64)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 1, 9))

"CF" |-> extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 56, 64)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 0, 1)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 56, 64)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 8, 9), mi(1, 1)) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 56, 64)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 7, 8), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 56, 64)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 6, 7), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 56, 64)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 5, 6), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 56, 64)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 4, 5), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 56, 64)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 3, 4), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 56, 64)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 2, 3), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 56, 64)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 1, 2), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> xorMInt( xorMInt( extractMInt( getParentValue(R1, RSMap), 59, 60), extractMInt( getParentValue(R2, RSMap), 59, 60)), extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 56, 64)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 4, 5))

"ZF" |-> (#ifMInt eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 56, 64)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 1, 9), mi(8, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 56, 64)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 1, 2)

"OF" |-> (#ifMInt ((eqMInt( extractMInt( getParentValue(R1, RSMap), 56, 57), mi(1, 1)) ==Bool eqMInt( extractMInt( getParentValue(R2, RSMap), 56, 57), mi(1, 1))) andBool (notBool (eqMInt( extractMInt( getParentValue(R1, RSMap), 56, 57), mi(1, 1)) ==Bool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 56, 64)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 1, 2), mi(1, 1))))) #then mi(1, 1) #else mi(1, 0) #fi)
)

    </regstate>
    


// addb-r8-r8-semantics


// orq-r64-r64

  rule <k>
    execinstr (orq R1:R64, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> orMInt( getParentValue(R2, RSMap), getParentValue(R1, RSMap))

"CF" |-> mi(1, 0)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( orMInt( extractMInt( getParentValue(R2, RSMap), 63, 64), extractMInt( getParentValue(R1, RSMap), 63, 64)), mi(1, 1)) xorBool eqMInt( orMInt( extractMInt( getParentValue(R2, RSMap), 62, 63), extractMInt( getParentValue(R1, RSMap), 62, 63)), mi(1, 1))) xorBool eqMInt( orMInt( extractMInt( getParentValue(R2, RSMap), 61, 62), extractMInt( getParentValue(R1, RSMap), 61, 62)), mi(1, 1))) xorBool eqMInt( orMInt( extractMInt( getParentValue(R2, RSMap), 60, 61), extractMInt( getParentValue(R1, RSMap), 60, 61)), mi(1, 1))) xorBool eqMInt( orMInt( extractMInt( getParentValue(R2, RSMap), 59, 60), extractMInt( getParentValue(R1, RSMap), 59, 60)), mi(1, 1))) xorBool eqMInt( orMInt( extractMInt( getParentValue(R2, RSMap), 58, 59), extractMInt( getParentValue(R1, RSMap), 58, 59)), mi(1, 1))) xorBool eqMInt( orMInt( extractMInt( getParentValue(R2, RSMap), 57, 58), extractMInt( getParentValue(R1, RSMap), 57, 58)), mi(1, 1))) xorBool eqMInt( orMInt( extractMInt( getParentValue(R2, RSMap), 56, 57), extractMInt( getParentValue(R1, RSMap), 56, 57)), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> (undefMInt)

"ZF" |-> (#ifMInt eqMInt( orMInt( getParentValue(R2, RSMap), getParentValue(R1, RSMap)), mi(64, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> orMInt( extractMInt( getParentValue(R2, RSMap), 0, 1), extractMInt( getParentValue(R1, RSMap), 0, 1))

"OF" |-> mi(1, 0)
)

    </regstate>
    


// orq-r64-r64-semantics


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


// divl-r32

  rule <k>
    execinstr (divl R1:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
"RAX" |-> concatenateMInt( mi(32, 0), div_quotient_int32(concatenateMInt( extractMInt( getParentValue(%rdx, RSMap), 32, 64), extractMInt( getParentValue(%rax, RSMap), 32, 64)), extractMInt( getParentValue(R1, RSMap), 32, 64)))

"RDX" |-> concatenateMInt( mi(32, 0), div_remainder_int32(concatenateMInt( extractMInt( getParentValue(%rdx, RSMap), 32, 64), extractMInt( getParentValue(%rax, RSMap), 32, 64)), extractMInt( getParentValue(R1, RSMap), 32, 64)))

"CF" |-> (undefMInt)

"PF" |-> (undefMInt)

"AF" |-> (undefMInt)

"ZF" |-> (undefMInt)

"SF" |-> (undefMInt)

"OF" |-> (undefMInt)
)

    </regstate>
    


// divl-r32-semantics


// xorb-rh-rh

  rule <k>
    execinstr (xorb R1:Rh, R2:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 48), xorMInt( extractMInt( getParentValue(R2, RSMap), 48, 56), extractMInt( getParentValue(R1, RSMap), 48, 56))), extractMInt( getParentValue(R2, RSMap), 56, 64))

"CF" |-> mi(1, 0)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 55, 56), extractMInt( getParentValue(R1, RSMap), 55, 56)), mi(1, 1)) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 54, 55), extractMInt( getParentValue(R1, RSMap), 54, 55)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 53, 54), extractMInt( getParentValue(R1, RSMap), 53, 54)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 52, 53), extractMInt( getParentValue(R1, RSMap), 52, 53)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 51, 52), extractMInt( getParentValue(R1, RSMap), 51, 52)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 50, 51), extractMInt( getParentValue(R1, RSMap), 50, 51)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 49, 50), extractMInt( getParentValue(R1, RSMap), 49, 50)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 48, 49), extractMInt( getParentValue(R1, RSMap), 48, 49)), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> (undefMInt)

"ZF" |-> (#ifMInt eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 48, 56), extractMInt( getParentValue(R1, RSMap), 48, 56)), mi(8, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> xorMInt( extractMInt( getParentValue(R2, RSMap), 48, 49), extractMInt( getParentValue(R1, RSMap), 48, 49))

"OF" |-> mi(1, 0)
)

    </regstate>
    


// xorb-rh-rh-semantics


// idivb-r8

  rule <k>
    execinstr (idivb R1:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
"RAX" |-> concatenateMInt( concatenateMInt( extractMInt( getParentValue(%rax, RSMap), 0, 48), idiv_remainder_int8(extractMInt( getParentValue(%rax, RSMap), 48, 64), extractMInt( getParentValue(R1, RSMap), 56, 64))), idiv_quotient_int8(extractMInt( getParentValue(%rax, RSMap), 48, 64), extractMInt( getParentValue(R1, RSMap), 56, 64)))

"CF" |-> (undefMInt)

"PF" |-> (undefMInt)

"AF" |-> (undefMInt)

"ZF" |-> (undefMInt)

"SF" |-> (undefMInt)

"OF" |-> (undefMInt)
)

    </regstate>
    


// idivb-r8-semantics


// divl-m32

  context execinstr(divl:Opcode HOLE:Mem,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (divl:Opcode memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      loadFromMemory( MemOff, 32) ~>
      execinstr (divl memOffset( MemOff),  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem32:MInt):MemLoadValue ~> execinstr (divl:Opcode memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      .
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
"RAX" |-> concatenateMInt( mi(32, 0), div_quotient_int32(concatenateMInt( extractMInt( getParentValue(%rdx, RSMap), 32, 64), extractMInt( getParentValue(%rax, RSMap), 32, 64)), Mem32))

"RDX" |-> concatenateMInt( mi(32, 0), div_remainder_int32(concatenateMInt( extractMInt( getParentValue(%rdx, RSMap), 32, 64), extractMInt( getParentValue(%rax, RSMap), 32, 64)), Mem32))

"CF" |-> (undefMInt)

"PF" |-> (undefMInt)

"AF" |-> (undefMInt)

"ZF" |-> (undefMInt)

"SF" |-> (undefMInt)

"OF" |-> (undefMInt)
      )
    </regstate>


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


// pushw-r16

  rule <k> 
    execinstr (pushw R1:R16, .Operands) =>
      storeToMemory(
          getRegisterValue(R1, RSMap), 
          subMInt(getRegisterValue(%rsp, RSMap), mi(64, 2)),
          16) ~>    
      decRSPInBytes(2)
  ...</k>
  <regstate> RSMap </regstate>


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


// divb-m8

  context execinstr(divb:Opcode HOLE:Mem,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (divb:Opcode memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      loadFromMemory( MemOff, 8) ~>
      execinstr (divb memOffset( MemOff),  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem8:MInt):MemLoadValue ~> execinstr (divb:Opcode memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      .
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
"RAX" |-> concatenateMInt( concatenateMInt( extractMInt( getParentValue(%rax, RSMap), 0, 48), div_remainder_int8(extractMInt( getParentValue(%rax, RSMap), 48, 64), Mem8)), div_quotient_int8(extractMInt( getParentValue(%rax, RSMap), 48, 64), Mem8))

"CF" |-> (undefMInt)

"PF" |-> (undefMInt)

"AF" |-> (undefMInt)

"ZF" |-> (undefMInt)

"SF" |-> (undefMInt)

"OF" |-> (undefMInt)
      )
    </regstate>


// imulw-r16

  rule <k>
    execinstr (imulw R1:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
"RAX" |-> concatenateMInt( extractMInt( getParentValue(%rax, RSMap), 0, 48), extractMInt( mulMInt( mi(32, svalueMInt(extractMInt( getParentValue(R1, RSMap), 48, 64))), mi(32, svalueMInt(extractMInt( getParentValue(%rax, RSMap), 48, 64)))), 16, 32))

"RDX" |-> concatenateMInt( extractMInt( getParentValue(%rdx, RSMap), 0, 48), extractMInt( mulMInt( mi(32, svalueMInt(extractMInt( getParentValue(R1, RSMap), 48, 64))), mi(32, svalueMInt(extractMInt( getParentValue(%rax, RSMap), 48, 64)))), 0, 16))

"CF" |-> (#ifMInt (notBool eqMInt( mulMInt( mi(32, svalueMInt(extractMInt( getParentValue(R1, RSMap), 48, 64))), mi(32, svalueMInt(extractMInt( getParentValue(%rax, RSMap), 48, 64)))), mi(32, svalueMInt(extractMInt( mulMInt( mi(32, svalueMInt(extractMInt( getParentValue(R1, RSMap), 48, 64))), mi(32, svalueMInt(extractMInt( getParentValue(%rax, RSMap), 48, 64)))), 16, 32))))) #then mi(1, 1) #else mi(1, 0) #fi)

"PF" |-> (undefMInt)

"AF" |-> (undefMInt)

"ZF" |-> (undefMInt)

"SF" |-> (undefMInt)

"OF" |-> (#ifMInt (notBool eqMInt( mulMInt( mi(32, svalueMInt(extractMInt( getParentValue(R1, RSMap), 48, 64))), mi(32, svalueMInt(extractMInt( getParentValue(%rax, RSMap), 48, 64)))), mi(32, svalueMInt(extractMInt( mulMInt( mi(32, svalueMInt(extractMInt( getParentValue(R1, RSMap), 48, 64))), mi(32, svalueMInt(extractMInt( getParentValue(%rax, RSMap), 48, 64)))), 16, 32))))) #then mi(1, 1) #else mi(1, 0) #fi)
)

    </regstate>
    


// imulw-r16-semantics


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


// andq-r64-r64

  rule <k>
    execinstr (andq R1:R64, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> andMInt( getParentValue(R2, RSMap), getParentValue(R1, RSMap))

"CF" |-> mi(1, 0)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 63, 64), extractMInt( getParentValue(R1, RSMap), 63, 64)), mi(1, 1)) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 62, 63), extractMInt( getParentValue(R1, RSMap), 62, 63)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 61, 62), extractMInt( getParentValue(R1, RSMap), 61, 62)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 60, 61), extractMInt( getParentValue(R1, RSMap), 60, 61)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 59, 60), extractMInt( getParentValue(R1, RSMap), 59, 60)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 58, 59), extractMInt( getParentValue(R1, RSMap), 58, 59)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 57, 58), extractMInt( getParentValue(R1, RSMap), 57, 58)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 56, 57), extractMInt( getParentValue(R1, RSMap), 56, 57)), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> (undefMInt)

"ZF" |-> (#ifMInt eqMInt( andMInt( getParentValue(R2, RSMap), getParentValue(R1, RSMap)), mi(64, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> andMInt( extractMInt( getParentValue(R2, RSMap), 0, 1), extractMInt( getParentValue(R1, RSMap), 0, 1))

"OF" |-> mi(1, 0)
)

    </regstate>
    


// andq-r64-r64-semantics


// cmpw-r16-r16

  rule <k>
    execinstr (cmpw R1:R16, R2:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
"CF" |-> (#ifMInt (notBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 48, 64))), mi(17, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 64))), 0, 1), mi(1, 1))) #then mi(1, 1) #else mi(1, 0) #fi)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 48, 64))), mi(17, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 64))), 16, 17), mi(1, 1)) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 48, 64))), mi(17, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 64))), 15, 16), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 48, 64))), mi(17, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 64))), 14, 15), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 48, 64))), mi(17, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 64))), 13, 14), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 48, 64))), mi(17, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 64))), 12, 13), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 48, 64))), mi(17, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 64))), 11, 12), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 48, 64))), mi(17, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 64))), 10, 11), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 48, 64))), mi(17, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 64))), 9, 10), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> xorMInt( xorMInt( extractMInt( getParentValue(R1, RSMap), 59, 60), extractMInt( getParentValue(R2, RSMap), 59, 60)), extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 48, 64))), mi(17, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 64))), 12, 13))

"ZF" |-> (#ifMInt eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 48, 64))), mi(17, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 64))), 1, 17), mi(16, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 48, 64))), mi(17, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 64))), 1, 2)

"OF" |-> (#ifMInt ((eqMInt( negMInt( extractMInt( getParentValue(R1, RSMap), 48, 49)), mi(1, 1)) ==Bool eqMInt( extractMInt( getParentValue(R2, RSMap), 48, 49), mi(1, 1))) andBool (notBool (eqMInt( negMInt( extractMInt( getParentValue(R1, RSMap), 48, 49)), mi(1, 1)) ==Bool eqMInt( extractMInt( addMInt( addMInt( concatenateMInt( mi(1, 0), negMInt( extractMInt( getParentValue(R1, RSMap), 48, 64))), mi(17, 1)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 64))), 1, 2), mi(1, 1))))) #then mi(1, 1) #else mi(1, 0) #fi)
)

    </regstate>
    


// cmpw-r16-r16-semantics


// xorb-rh-r8

  rule <k>
    execinstr (xorb R1:R8, R2:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 48), xorMInt( extractMInt( getParentValue(R2, RSMap), 48, 56), extractMInt( getParentValue(R1, RSMap), 56, 64))), extractMInt( getParentValue(R2, RSMap), 56, 64))

"CF" |-> mi(1, 0)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 55, 56), extractMInt( getParentValue(R1, RSMap), 63, 64)), mi(1, 1)) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 54, 55), extractMInt( getParentValue(R1, RSMap), 62, 63)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 53, 54), extractMInt( getParentValue(R1, RSMap), 61, 62)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 52, 53), extractMInt( getParentValue(R1, RSMap), 60, 61)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 51, 52), extractMInt( getParentValue(R1, RSMap), 59, 60)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 50, 51), extractMInt( getParentValue(R1, RSMap), 58, 59)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 49, 50), extractMInt( getParentValue(R1, RSMap), 57, 58)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 48, 49), extractMInt( getParentValue(R1, RSMap), 56, 57)), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> (undefMInt)

"ZF" |-> (#ifMInt eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 48, 56), extractMInt( getParentValue(R1, RSMap), 56, 64)), mi(8, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> xorMInt( extractMInt( getParentValue(R2, RSMap), 48, 49), extractMInt( getParentValue(R1, RSMap), 56, 57))

"OF" |-> mi(1, 0)
)

    </regstate>
    


// xorb-rh-r8-semantics


// leaw-r16-m32

  context execinstr(leaw:Opcode HOLE:Mem, R2:R16,  .Operands) [result(MemOffset)]
  
  rule <k>
     execinstr (leaw:Opcode memOffset( MemOff:MInt):MemOffset, R2:R16,  .Operands) =>
      .
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 48), extractMInt( MemOff, 48, 64))
      )
    </regstate>


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


// xorpd-xmm-xmm

  rule <k>
    execinstr (xorpd R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 128), xorMInt( extractMInt( getParentValue(R2, RSMap), 128, 256), extractMInt( getParentValue(R1, RSMap), 128, 256)))
)

    </regstate>
    


// xorpd-xmm-xmm-semantics


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


// divq-m64

  context execinstr(divq:Opcode HOLE:Mem,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (divq:Opcode memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      loadFromMemory( MemOff, 64) ~>
      execinstr (divq memOffset( MemOff),  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem64:MInt):MemLoadValue ~> execinstr (divq:Opcode memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      .
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
"RAX" |-> div_quotient_int64(concatenateMInt( getParentValue(%rdx, RSMap), getParentValue(%rax, RSMap)), Mem64)

"RDX" |-> div_remainder_int64(concatenateMInt( getParentValue(%rdx, RSMap), getParentValue(%rax, RSMap)), Mem64)

"CF" |-> (undefMInt)

"PF" |-> (undefMInt)

"AF" |-> (undefMInt)

"ZF" |-> (undefMInt)

"SF" |-> (undefMInt)

"OF" |-> (undefMInt)
      )
    </regstate>


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


// movzbq-r64-r8

  rule <k>
    execinstr (movzbq R1:R8, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( mi(56, 0), extractMInt( getParentValue(R1, RSMap), 56, 64))
)

    </regstate>
    


// movzbq-r64-r8-semantics


// movzwq-r64-r16

  rule <k>
    execinstr (movzwq R1:R16, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( mi(48, 0), extractMInt( getParentValue(R1, RSMap), 48, 64))
)

    </regstate>
    


// movzwq-r64-r16-semantics


// movzbw-r16-r8

  rule <k>
    execinstr (movzbw R1:R8, R2:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 48), concatenateMInt( mi(8, 0), extractMInt( getParentValue(R1, RSMap), 56, 64)))
)

    </regstate>
    


// movzbw-r16-r8-semantics


// andps-xmm-xmm

  rule <k>
    execinstr (andps R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 128), andMInt( extractMInt( getParentValue(R2, RSMap), 128, 256), extractMInt( getParentValue(R1, RSMap), 128, 256)))
)

    </regstate>
    


// andps-xmm-xmm-semantics


// movzbq-r64-m8

  context execinstr(movzbq:Opcode HOLE:Mem, R2:R64,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (movzbq:Opcode memOffset( MemOff:MInt):MemOffset, R2:R64,  .Operands) =>
      loadFromMemory( MemOff, 8) ~>
      execinstr (movzbq memOffset( MemOff), R2,  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem8:MInt):MemLoadValue ~> execinstr (movzbq:Opcode memOffset( MemOff:MInt):MemOffset, R2:R64,  .Operands) =>
      .
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( mi(56, 0), Mem8)
      )
    </regstate>


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


// imull-r32

  rule <k>
    execinstr (imull R1:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
"RAX" |-> concatenateMInt( mi(32, 0), extractMInt( mulMInt( mi(64, svalueMInt(extractMInt( getParentValue(R1, RSMap), 32, 64))), mi(64, svalueMInt(extractMInt( getParentValue(%rax, RSMap), 32, 64)))), 32, 64))

"RDX" |-> concatenateMInt( mi(32, 0), extractMInt( mulMInt( mi(64, svalueMInt(extractMInt( getParentValue(R1, RSMap), 32, 64))), mi(64, svalueMInt(extractMInt( getParentValue(%rax, RSMap), 32, 64)))), 0, 32))

"CF" |-> (#ifMInt (notBool eqMInt( mulMInt( mi(64, svalueMInt(extractMInt( getParentValue(R1, RSMap), 32, 64))), mi(64, svalueMInt(extractMInt( getParentValue(%rax, RSMap), 32, 64)))), mi(64, svalueMInt(extractMInt( mulMInt( mi(64, svalueMInt(extractMInt( getParentValue(R1, RSMap), 32, 64))), mi(64, svalueMInt(extractMInt( getParentValue(%rax, RSMap), 32, 64)))), 32, 64))))) #then mi(1, 1) #else mi(1, 0) #fi)

"PF" |-> (undefMInt)

"AF" |-> (undefMInt)

"ZF" |-> (undefMInt)

"SF" |-> (undefMInt)

"OF" |-> (#ifMInt (notBool eqMInt( mulMInt( mi(64, svalueMInt(extractMInt( getParentValue(R1, RSMap), 32, 64))), mi(64, svalueMInt(extractMInt( getParentValue(%rax, RSMap), 32, 64)))), mi(64, svalueMInt(extractMInt( mulMInt( mi(64, svalueMInt(extractMInt( getParentValue(R1, RSMap), 32, 64))), mi(64, svalueMInt(extractMInt( getParentValue(%rax, RSMap), 32, 64)))), 32, 64))))) #then mi(1, 1) #else mi(1, 0) #fi)
)

    </regstate>
    


// imull-r32-semantics


// movzwl-r32-m16

  context execinstr(movzwl:Opcode HOLE:Mem, R2:R32,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (movzwl:Opcode memOffset( MemOff:MInt):MemOffset, R2:R32,  .Operands) =>
      loadFromMemory( MemOff, 16) ~>
      execinstr (movzwl memOffset( MemOff), R2,  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem16:MInt):MemLoadValue ~> execinstr (movzwl:Opcode memOffset( MemOff:MInt):MemOffset, R2:R32,  .Operands) =>
      .
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( mi(48, 0), Mem16)
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


// orb-r8-rh

  rule <k>
    execinstr (orb R1:Rh, R2:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 56), orMInt( extractMInt( getParentValue(R2, RSMap), 56, 64), extractMInt( getParentValue(R1, RSMap), 48, 56)))

"CF" |-> mi(1, 0)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( orMInt( extractMInt( getParentValue(R2, RSMap), 63, 64), extractMInt( getParentValue(R1, RSMap), 55, 56)), mi(1, 1)) xorBool eqMInt( orMInt( extractMInt( getParentValue(R2, RSMap), 62, 63), extractMInt( getParentValue(R1, RSMap), 54, 55)), mi(1, 1))) xorBool eqMInt( orMInt( extractMInt( getParentValue(R2, RSMap), 61, 62), extractMInt( getParentValue(R1, RSMap), 53, 54)), mi(1, 1))) xorBool eqMInt( orMInt( extractMInt( getParentValue(R2, RSMap), 60, 61), extractMInt( getParentValue(R1, RSMap), 52, 53)), mi(1, 1))) xorBool eqMInt( orMInt( extractMInt( getParentValue(R2, RSMap), 59, 60), extractMInt( getParentValue(R1, RSMap), 51, 52)), mi(1, 1))) xorBool eqMInt( orMInt( extractMInt( getParentValue(R2, RSMap), 58, 59), extractMInt( getParentValue(R1, RSMap), 50, 51)), mi(1, 1))) xorBool eqMInt( orMInt( extractMInt( getParentValue(R2, RSMap), 57, 58), extractMInt( getParentValue(R1, RSMap), 49, 50)), mi(1, 1))) xorBool eqMInt( orMInt( extractMInt( getParentValue(R2, RSMap), 56, 57), extractMInt( getParentValue(R1, RSMap), 48, 49)), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> (undefMInt)

"ZF" |-> (#ifMInt eqMInt( orMInt( extractMInt( getParentValue(R2, RSMap), 56, 64), extractMInt( getParentValue(R1, RSMap), 48, 56)), mi(8, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> orMInt( extractMInt( getParentValue(R2, RSMap), 56, 57), extractMInt( getParentValue(R1, RSMap), 48, 49))

"OF" |-> mi(1, 0)
)

    </regstate>
    


// orb-r8-rh-semantics


// andnps-xmm-xmm

  rule <k>
    execinstr (andnps R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 128), andMInt( negMInt( extractMInt( getParentValue(R2, RSMap), 128, 256)), extractMInt( getParentValue(R1, RSMap), 128, 256)))
)

    </regstate>
    


// andnps-xmm-xmm-semantics


// xorq-m64-imm8

  context execinstr(xorq:Opcode Imm8:Imm, HOLE:Mem,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (xorq:Opcode Imm8:Imm, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      loadFromMemory( MemOff, 64) ~>
      execinstr (xorq Imm8, memOffset( MemOff),  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem64:MInt):MemLoadValue ~> execinstr (xorq:Opcode Imm8:Imm, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      
            storeToMemory(
              xorMInt( Mem64, mi(64, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8)))),
              MemOff,
              64
            )
          
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
"CF" |-> mi(1, 0)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( xorMInt( extractMInt( Mem64, 63, 64), extractMInt( handleImmediateWithSignExtend(Imm8, 8, 8), 7, 8)), mi(1, 1)) xorBool eqMInt( xorMInt( extractMInt( Mem64, 62, 63), extractMInt( handleImmediateWithSignExtend(Imm8, 8, 8), 6, 7)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( Mem64, 61, 62), extractMInt( handleImmediateWithSignExtend(Imm8, 8, 8), 5, 6)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( Mem64, 60, 61), extractMInt( handleImmediateWithSignExtend(Imm8, 8, 8), 4, 5)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( Mem64, 59, 60), extractMInt( handleImmediateWithSignExtend(Imm8, 8, 8), 3, 4)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( Mem64, 58, 59), extractMInt( handleImmediateWithSignExtend(Imm8, 8, 8), 2, 3)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( Mem64, 57, 58), extractMInt( handleImmediateWithSignExtend(Imm8, 8, 8), 1, 2)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( Mem64, 56, 57), extractMInt( handleImmediateWithSignExtend(Imm8, 8, 8), 0, 1)), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> (undefMInt)

"ZF" |-> (#ifMInt eqMInt( xorMInt( Mem64, mi(64, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8)))), mi(64, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> xorMInt( extractMInt( Mem64, 0, 1), extractMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8))), 0, 1))

"OF" |-> mi(1, 0)
      )
    </regstate>


// idivb-rh

  rule <k>
    execinstr (idivb R1:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
"RAX" |-> concatenateMInt( concatenateMInt( extractMInt( getParentValue(%rax, RSMap), 0, 48), idiv_remainder_int8(extractMInt( getParentValue(%rax, RSMap), 48, 64), extractMInt( getParentValue(R1, RSMap), 48, 56))), idiv_quotient_int8(extractMInt( getParentValue(%rax, RSMap), 48, 64), extractMInt( getParentValue(R1, RSMap), 48, 56)))

"CF" |-> (undefMInt)

"PF" |-> (undefMInt)

"AF" |-> (undefMInt)

"ZF" |-> (undefMInt)

"SF" |-> (undefMInt)

"OF" |-> (undefMInt)
)

    </regstate>
    


// idivb-rh-semantics


// leal-r32-m64

  context execinstr(leal:Opcode HOLE:Mem, R2:R32,  .Operands) [result(MemOffset)]
  
  rule <k>
     execinstr (leal:Opcode memOffset( MemOff:MInt):MemOffset, R2:R32,  .Operands) =>
      .
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( mi(32, 0), extractMInt( MemOff, 32, 64))
      )
    </regstate>


// idivb-m8

  context execinstr(idivb:Opcode HOLE:Mem,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (idivb:Opcode memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      loadFromMemory( MemOff, 8) ~>
      execinstr (idivb memOffset( MemOff),  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem8:MInt):MemLoadValue ~> execinstr (idivb:Opcode memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      .
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
"RAX" |-> concatenateMInt( concatenateMInt( extractMInt( getParentValue(%rax, RSMap), 0, 48), idiv_remainder_int8(extractMInt( getParentValue(%rax, RSMap), 48, 64), Mem8)), idiv_quotient_int8(extractMInt( getParentValue(%rax, RSMap), 48, 64), Mem8))

"CF" |-> (undefMInt)

"PF" |-> (undefMInt)

"AF" |-> (undefMInt)

"ZF" |-> (undefMInt)

"SF" |-> (undefMInt)

"OF" |-> (undefMInt)
      )
    </regstate>


// idivl-r32

  rule <k>
    execinstr (idivl R1:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
"RAX" |-> concatenateMInt( mi(32, 0), idiv_quotient_int32(concatenateMInt( extractMInt( getParentValue(%rdx, RSMap), 32, 64), extractMInt( getParentValue(%rax, RSMap), 32, 64)), extractMInt( getParentValue(R1, RSMap), 32, 64)))

"RDX" |-> concatenateMInt( mi(32, 0), idiv_remainder_int32(concatenateMInt( extractMInt( getParentValue(%rdx, RSMap), 32, 64), extractMInt( getParentValue(%rax, RSMap), 32, 64)), extractMInt( getParentValue(R1, RSMap), 32, 64)))

"CF" |-> (undefMInt)

"PF" |-> (undefMInt)

"AF" |-> (undefMInt)

"ZF" |-> (undefMInt)

"SF" |-> (undefMInt)

"OF" |-> (undefMInt)
)

    </regstate>
    


// idivl-r32-semantics

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


// andpd-xmm-xmm

  rule <k>
    execinstr (andpd R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 128), andMInt( extractMInt( getParentValue(R2, RSMap), 128, 256), extractMInt( getParentValue(R1, RSMap), 128, 256)))
)

    </regstate>
    


// andpd-xmm-xmm-semantics


// movq-r64-imm32

  rule <k>
    execinstr (movq Imm32:Imm, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32)))
)

    </regstate>
    


// movq-r64-imm32-semantics


// addps-xmm-xmm

  rule <k>
    execinstr (addps R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 128), concatenateMInt( add_single(extractMInt( getParentValue(R2, RSMap), 128, 160), extractMInt( getParentValue(R1, RSMap), 128, 160)), concatenateMInt( add_single(extractMInt( getParentValue(R2, RSMap), 160, 192), extractMInt( getParentValue(R1, RSMap), 160, 192)), concatenateMInt( add_single(extractMInt( getParentValue(R2, RSMap), 192, 224), extractMInt( getParentValue(R1, RSMap), 192, 224)), add_single(extractMInt( getParentValue(R2, RSMap), 224, 256), extractMInt( getParentValue(R1, RSMap), 224, 256))))))
)

    </regstate>
    


// addps-xmm-xmm-semantics


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

// jl-label

  rule <k> 
    execinstr (jl LabelId:X86Id, .Operands) => .
  ...</k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> Target))
      </regstate>
      <functargets>... LabelId |-> Target  ...</functargets>
        requires notBool eqMInt({RSMap["SF"]}:>MInt, {RSMap["OF"]}:>MInt)
                
  rule <k> 
    execinstr (jl LabelId:X86Id, .Operands) => .
  ...</k>
      <regstate> RSMap:Map </regstate> 
        requires eqMInt({RSMap["SF"]}:>MInt, {RSMap["OF"]}:>MInt)


// orb-r8-r8

  rule <k>
    execinstr (orb R1:R8, R2:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 56), orMInt( extractMInt( getParentValue(R2, RSMap), 56, 64), extractMInt( getParentValue(R1, RSMap), 56, 64)))

"CF" |-> mi(1, 0)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( orMInt( extractMInt( getParentValue(R2, RSMap), 63, 64), extractMInt( getParentValue(R1, RSMap), 63, 64)), mi(1, 1)) xorBool eqMInt( orMInt( extractMInt( getParentValue(R2, RSMap), 62, 63), extractMInt( getParentValue(R1, RSMap), 62, 63)), mi(1, 1))) xorBool eqMInt( orMInt( extractMInt( getParentValue(R2, RSMap), 61, 62), extractMInt( getParentValue(R1, RSMap), 61, 62)), mi(1, 1))) xorBool eqMInt( orMInt( extractMInt( getParentValue(R2, RSMap), 60, 61), extractMInt( getParentValue(R1, RSMap), 60, 61)), mi(1, 1))) xorBool eqMInt( orMInt( extractMInt( getParentValue(R2, RSMap), 59, 60), extractMInt( getParentValue(R1, RSMap), 59, 60)), mi(1, 1))) xorBool eqMInt( orMInt( extractMInt( getParentValue(R2, RSMap), 58, 59), extractMInt( getParentValue(R1, RSMap), 58, 59)), mi(1, 1))) xorBool eqMInt( orMInt( extractMInt( getParentValue(R2, RSMap), 57, 58), extractMInt( getParentValue(R1, RSMap), 57, 58)), mi(1, 1))) xorBool eqMInt( orMInt( extractMInt( getParentValue(R2, RSMap), 56, 57), extractMInt( getParentValue(R1, RSMap), 56, 57)), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> (undefMInt)

"ZF" |-> (#ifMInt eqMInt( orMInt( extractMInt( getParentValue(R2, RSMap), 56, 64), extractMInt( getParentValue(R1, RSMap), 56, 64)), mi(8, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> orMInt( extractMInt( getParentValue(R2, RSMap), 56, 57), extractMInt( getParentValue(R1, RSMap), 56, 57))

"OF" |-> mi(1, 0)
)

    </regstate>
    


// orb-r8-r8-semantics


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


// orw-r16-r16

  rule <k>
    execinstr (orw R1:R16, R2:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 48), orMInt( extractMInt( getParentValue(R2, RSMap), 48, 64), extractMInt( getParentValue(R1, RSMap), 48, 64)))

"CF" |-> mi(1, 0)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( orMInt( extractMInt( getParentValue(R2, RSMap), 63, 64), extractMInt( getParentValue(R1, RSMap), 63, 64)), mi(1, 1)) xorBool eqMInt( orMInt( extractMInt( getParentValue(R2, RSMap), 62, 63), extractMInt( getParentValue(R1, RSMap), 62, 63)), mi(1, 1))) xorBool eqMInt( orMInt( extractMInt( getParentValue(R2, RSMap), 61, 62), extractMInt( getParentValue(R1, RSMap), 61, 62)), mi(1, 1))) xorBool eqMInt( orMInt( extractMInt( getParentValue(R2, RSMap), 60, 61), extractMInt( getParentValue(R1, RSMap), 60, 61)), mi(1, 1))) xorBool eqMInt( orMInt( extractMInt( getParentValue(R2, RSMap), 59, 60), extractMInt( getParentValue(R1, RSMap), 59, 60)), mi(1, 1))) xorBool eqMInt( orMInt( extractMInt( getParentValue(R2, RSMap), 58, 59), extractMInt( getParentValue(R1, RSMap), 58, 59)), mi(1, 1))) xorBool eqMInt( orMInt( extractMInt( getParentValue(R2, RSMap), 57, 58), extractMInt( getParentValue(R1, RSMap), 57, 58)), mi(1, 1))) xorBool eqMInt( orMInt( extractMInt( getParentValue(R2, RSMap), 56, 57), extractMInt( getParentValue(R1, RSMap), 56, 57)), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> (undefMInt)

"ZF" |-> (#ifMInt eqMInt( orMInt( extractMInt( getParentValue(R2, RSMap), 48, 64), extractMInt( getParentValue(R1, RSMap), 48, 64)), mi(16, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> orMInt( extractMInt( getParentValue(R2, RSMap), 48, 49), extractMInt( getParentValue(R1, RSMap), 48, 49))

"OF" |-> mi(1, 0)
)

    </regstate>
    


// orw-r16-r16-semantics


// orq-m64-r64

  context execinstr(orq:Opcode R1:R64, HOLE:Mem,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (orq:Opcode R1:R64, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      loadFromMemory( MemOff, 64) ~>
      execinstr (orq R1, memOffset( MemOff),  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem64:MInt):MemLoadValue ~> execinstr (orq:Opcode R1:R64, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      
            storeToMemory(
              orMInt( Mem64, getParentValue(R1, RSMap)),
              MemOff,
              64
            )
          
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
"CF" |-> mi(1, 0)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( orMInt( extractMInt( Mem64, 63, 64), extractMInt( getParentValue(R1, RSMap), 63, 64)), mi(1, 1)) xorBool eqMInt( orMInt( extractMInt( Mem64, 62, 63), extractMInt( getParentValue(R1, RSMap), 62, 63)), mi(1, 1))) xorBool eqMInt( orMInt( extractMInt( Mem64, 61, 62), extractMInt( getParentValue(R1, RSMap), 61, 62)), mi(1, 1))) xorBool eqMInt( orMInt( extractMInt( Mem64, 60, 61), extractMInt( getParentValue(R1, RSMap), 60, 61)), mi(1, 1))) xorBool eqMInt( orMInt( extractMInt( Mem64, 59, 60), extractMInt( getParentValue(R1, RSMap), 59, 60)), mi(1, 1))) xorBool eqMInt( orMInt( extractMInt( Mem64, 58, 59), extractMInt( getParentValue(R1, RSMap), 58, 59)), mi(1, 1))) xorBool eqMInt( orMInt( extractMInt( Mem64, 57, 58), extractMInt( getParentValue(R1, RSMap), 57, 58)), mi(1, 1))) xorBool eqMInt( orMInt( extractMInt( Mem64, 56, 57), extractMInt( getParentValue(R1, RSMap), 56, 57)), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> (undefMInt)

"ZF" |-> (#ifMInt eqMInt( orMInt( Mem64, getParentValue(R1, RSMap)), mi(64, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> orMInt( extractMInt( Mem64, 0, 1), extractMInt( getParentValue(R1, RSMap), 0, 1))

"OF" |-> mi(1, 0)
      )
    </regstate>


// andb-rh-rh

  rule <k>
    execinstr (andb R1:Rh, R2:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 48), andMInt( extractMInt( getParentValue(R2, RSMap), 48, 56), extractMInt( getParentValue(R1, RSMap), 48, 56))), extractMInt( getParentValue(R2, RSMap), 56, 64))

"CF" |-> mi(1, 0)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 55, 56), extractMInt( getParentValue(R1, RSMap), 55, 56)), mi(1, 1)) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 54, 55), extractMInt( getParentValue(R1, RSMap), 54, 55)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 53, 54), extractMInt( getParentValue(R1, RSMap), 53, 54)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 52, 53), extractMInt( getParentValue(R1, RSMap), 52, 53)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 51, 52), extractMInt( getParentValue(R1, RSMap), 51, 52)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 50, 51), extractMInt( getParentValue(R1, RSMap), 50, 51)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 49, 50), extractMInt( getParentValue(R1, RSMap), 49, 50)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 48, 49), extractMInt( getParentValue(R1, RSMap), 48, 49)), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> (undefMInt)

"ZF" |-> (#ifMInt eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 48, 56), extractMInt( getParentValue(R1, RSMap), 48, 56)), mi(8, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> andMInt( extractMInt( getParentValue(R2, RSMap), 48, 49), extractMInt( getParentValue(R1, RSMap), 48, 49))

"OF" |-> mi(1, 0)
)

    </regstate>
    


// andb-rh-rh-semantics


// idivw-r16

  rule <k>
    execinstr (idivw R1:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
"RAX" |-> concatenateMInt( extractMInt( getParentValue(%rax, RSMap), 0, 48), idiv_quotient_int16(concatenateMInt( extractMInt( getParentValue(%rdx, RSMap), 48, 64), extractMInt( getParentValue(%rax, RSMap), 48, 64)), extractMInt( getParentValue(R1, RSMap), 48, 64)))

"RDX" |-> concatenateMInt( extractMInt( getParentValue(%rdx, RSMap), 0, 48), idiv_remainder_int16(concatenateMInt( extractMInt( getParentValue(%rdx, RSMap), 48, 64), extractMInt( getParentValue(%rax, RSMap), 48, 64)), extractMInt( getParentValue(R1, RSMap), 48, 64)))

"CF" |-> (undefMInt)

"PF" |-> (undefMInt)

"AF" |-> (undefMInt)

"ZF" |-> (undefMInt)

"SF" |-> (undefMInt)

"OF" |-> (undefMInt)
)

    </regstate>
    


// idivw-r16-semantics


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


// movl-r32-label

  rule <k>
    execinstr (movl $ LabelId:X86Id, R2:R32,  .Operands) => 
      execinstr (movl $ uvalueMInt(Target), R2:R32,  .Operands)
  ...</k>
      <functargets>... LabelId |-> Target:MInt  ...</functargets>
    




// movq-m64-imm32

  context execinstr(movq:Opcode $ LabelId:X86Id, HOLE:Mem,  .Operands) [result(MemOffset)]
  
  rule <k>
     execinstr (movq:Opcode $ LabelId:X86Id, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      execinstr (movq $ uvalueMInt(Target), memOffset( MemOff),  .Operands)
  ...</k>
      <functargets>... LabelId |-> Target:MInt  ...</functargets>


// xorps-xmm-xmm

  rule <k>
    execinstr (xorps R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 128), xorMInt( extractMInt( getParentValue(R2, RSMap), 128, 256), extractMInt( getParentValue(R1, RSMap), 128, 256)))
)

    </regstate>
    


// xorps-xmm-xmm-semantics


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


// addb-rh-r8

  rule <k>
    execinstr (addb R1:R8, R2:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 48), extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 56, 64)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 1, 9)), extractMInt( getParentValue(R2, RSMap), 56, 64))

"CF" |-> extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 56, 64)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 0, 1)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 56, 64)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 8, 9), mi(1, 1)) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 56, 64)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 7, 8), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 56, 64)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 6, 7), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 56, 64)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 5, 6), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 56, 64)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 4, 5), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 56, 64)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 3, 4), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 56, 64)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 2, 3), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 56, 64)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 1, 2), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> xorMInt( xorMInt( extractMInt( getParentValue(R1, RSMap), 59, 60), extractMInt( getParentValue(R2, RSMap), 51, 52)), extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 56, 64)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 4, 5))

"ZF" |-> (#ifMInt eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 56, 64)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 1, 9), mi(8, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 56, 64)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 1, 2)

"OF" |-> (#ifMInt ((eqMInt( extractMInt( getParentValue(R1, RSMap), 56, 57), mi(1, 1)) ==Bool eqMInt( extractMInt( getParentValue(R2, RSMap), 48, 49), mi(1, 1))) andBool (notBool (eqMInt( extractMInt( getParentValue(R1, RSMap), 56, 57), mi(1, 1)) ==Bool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 56, 64)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 1, 2), mi(1, 1))))) #then mi(1, 1) #else mi(1, 0) #fi)
)

    </regstate>
    


// addb-rh-r8-semantics


// imulb-rh

  rule <k>
    execinstr (imulb R1:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
"RAX" |-> concatenateMInt( extractMInt( getParentValue(%rax, RSMap), 0, 48), mulMInt( mi(16, svalueMInt(extractMInt( getParentValue(R1, RSMap), 48, 56))), mi(16, svalueMInt(extractMInt( getParentValue(%rax, RSMap), 56, 64)))))

"CF" |-> (#ifMInt (notBool eqMInt( mulMInt( mi(16, svalueMInt(extractMInt( getParentValue(R1, RSMap), 48, 56))), mi(16, svalueMInt(extractMInt( getParentValue(%rax, RSMap), 56, 64)))), mi(16, svalueMInt(extractMInt( mulMInt( mi(16, svalueMInt(extractMInt( getParentValue(R1, RSMap), 48, 56))), mi(16, svalueMInt(extractMInt( getParentValue(%rax, RSMap), 56, 64)))), 8, 16))))) #then mi(1, 1) #else mi(1, 0) #fi)

"PF" |-> (undefMInt)

"AF" |-> (undefMInt)

"ZF" |-> (undefMInt)

"SF" |-> (undefMInt)

"OF" |-> (#ifMInt (notBool eqMInt( mulMInt( mi(16, svalueMInt(extractMInt( getParentValue(R1, RSMap), 48, 56))), mi(16, svalueMInt(extractMInt( getParentValue(%rax, RSMap), 56, 64)))), mi(16, svalueMInt(extractMInt( mulMInt( mi(16, svalueMInt(extractMInt( getParentValue(R1, RSMap), 48, 56))), mi(16, svalueMInt(extractMInt( getParentValue(%rax, RSMap), 56, 64)))), 8, 16))))) #then mi(1, 1) #else mi(1, 0) #fi)
)

    </regstate>
    


// imulb-rh-semantics


// xorw-r16-r16

  rule <k>
    execinstr (xorw R1:R16, R2:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 48), xorMInt( extractMInt( getParentValue(R2, RSMap), 48, 64), extractMInt( getParentValue(R1, RSMap), 48, 64)))

"CF" |-> mi(1, 0)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 63, 64), extractMInt( getParentValue(R1, RSMap), 63, 64)), mi(1, 1)) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 62, 63), extractMInt( getParentValue(R1, RSMap), 62, 63)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 61, 62), extractMInt( getParentValue(R1, RSMap), 61, 62)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 60, 61), extractMInt( getParentValue(R1, RSMap), 60, 61)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 59, 60), extractMInt( getParentValue(R1, RSMap), 59, 60)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 58, 59), extractMInt( getParentValue(R1, RSMap), 58, 59)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 57, 58), extractMInt( getParentValue(R1, RSMap), 57, 58)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 56, 57), extractMInt( getParentValue(R1, RSMap), 56, 57)), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> (undefMInt)

"ZF" |-> (#ifMInt eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 48, 64), extractMInt( getParentValue(R1, RSMap), 48, 64)), mi(16, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> xorMInt( extractMInt( getParentValue(R2, RSMap), 48, 49), extractMInt( getParentValue(R1, RSMap), 48, 49))

"OF" |-> mi(1, 0)
)

    </regstate>
    


// xorw-r16-r16-semantics


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


// movzbw-r16-m8

  context execinstr(movzbw:Opcode HOLE:Mem, R2:R16,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (movzbw:Opcode memOffset( MemOff:MInt):MemOffset, R2:R16,  .Operands) =>
      loadFromMemory( MemOff, 8) ~>
      execinstr (movzbw memOffset( MemOff), R2,  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem8:MInt):MemLoadValue ~> execinstr (movzbw:Opcode memOffset( MemOff:MInt):MemOffset, R2:R16,  .Operands) =>
      .
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 48), concatenateMInt( mi(8, 0), Mem8))
      )
    </regstate>


// popw-r16

  rule <k> 
    execinstr (popw R1:R16, .Operands) =>
      incRSPInBytes(2) ~>
      setRegisterValue(
          loadFromMemory(getRegisterValue(%rsp, RSMap), 16), 
          R1) 
  ...</k>
  <regstate> RSMap </regstate>



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


// andl-r32-r32

  rule <k>
    execinstr (andl R1:R32, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( mi(32, 0), andMInt( extractMInt( getParentValue(R2, RSMap), 32, 64), extractMInt( getParentValue(R1, RSMap), 32, 64)))

"CF" |-> mi(1, 0)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 63, 64), extractMInt( getParentValue(R1, RSMap), 63, 64)), mi(1, 1)) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 62, 63), extractMInt( getParentValue(R1, RSMap), 62, 63)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 61, 62), extractMInt( getParentValue(R1, RSMap), 61, 62)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 60, 61), extractMInt( getParentValue(R1, RSMap), 60, 61)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 59, 60), extractMInt( getParentValue(R1, RSMap), 59, 60)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 58, 59), extractMInt( getParentValue(R1, RSMap), 58, 59)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 57, 58), extractMInt( getParentValue(R1, RSMap), 57, 58)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 56, 57), extractMInt( getParentValue(R1, RSMap), 56, 57)), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> (undefMInt)

"ZF" |-> (#ifMInt eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 32, 64), extractMInt( getParentValue(R1, RSMap), 32, 64)), mi(32, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> andMInt( extractMInt( getParentValue(R2, RSMap), 32, 33), extractMInt( getParentValue(R1, RSMap), 32, 33))

"OF" |-> mi(1, 0)
)

    </regstate>
    


// andl-r32-r32-semantics


// idivq-r64

  rule <k>
    execinstr (idivq R1:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
"RAX" |-> idiv_quotient_int64(concatenateMInt( getParentValue(%rdx, RSMap), getParentValue(%rax, RSMap)), getParentValue(R1, RSMap))

"RDX" |-> idiv_remainder_int64(concatenateMInt( getParentValue(%rdx, RSMap), getParentValue(%rax, RSMap)), getParentValue(R1, RSMap))

"CF" |-> (undefMInt)

"PF" |-> (undefMInt)

"AF" |-> (undefMInt)

"ZF" |-> (undefMInt)

"SF" |-> (undefMInt)

"OF" |-> (undefMInt)
)

    </regstate>
    


// idivq-r64-semantics


// addb-r8-rh

  rule <k>
    execinstr (addb R1:Rh, R2:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 56), extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 48, 56)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 1, 9))

"CF" |-> extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 48, 56)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 0, 1)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 48, 56)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 8, 9), mi(1, 1)) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 48, 56)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 7, 8), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 48, 56)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 6, 7), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 48, 56)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 5, 6), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 48, 56)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 4, 5), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 48, 56)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 3, 4), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 48, 56)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 2, 3), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 48, 56)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 1, 2), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> xorMInt( xorMInt( extractMInt( getParentValue(R1, RSMap), 51, 52), extractMInt( getParentValue(R2, RSMap), 59, 60)), extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 48, 56)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 4, 5))

"ZF" |-> (#ifMInt eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 48, 56)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 1, 9), mi(8, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 48, 56)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 1, 2)

"OF" |-> (#ifMInt ((eqMInt( extractMInt( getParentValue(R1, RSMap), 48, 49), mi(1, 1)) ==Bool eqMInt( extractMInt( getParentValue(R2, RSMap), 56, 57), mi(1, 1))) andBool (notBool (eqMInt( extractMInt( getParentValue(R1, RSMap), 48, 49), mi(1, 1)) ==Bool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 48, 56)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 56, 64))), 1, 2), mi(1, 1))))) #then mi(1, 1) #else mi(1, 0) #fi)
)

    </regstate>
    


// addb-r8-rh-semantics


// addw-r16-r16

  rule <k>
    execinstr (addw R1:R16, R2:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 48), extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 48, 64)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 64))), 1, 17))

"CF" |-> extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 48, 64)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 64))), 0, 1)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 48, 64)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 64))), 16, 17), mi(1, 1)) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 48, 64)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 64))), 15, 16), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 48, 64)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 64))), 14, 15), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 48, 64)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 64))), 13, 14), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 48, 64)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 64))), 12, 13), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 48, 64)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 64))), 11, 12), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 48, 64)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 64))), 10, 11), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 48, 64)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 64))), 9, 10), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> xorMInt( xorMInt( extractMInt( getParentValue(R1, RSMap), 59, 60), extractMInt( getParentValue(R2, RSMap), 59, 60)), extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 48, 64)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 64))), 12, 13))

"ZF" |-> (#ifMInt eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 48, 64)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 64))), 1, 17), mi(16, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 48, 64)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 64))), 1, 2)

"OF" |-> (#ifMInt ((eqMInt( extractMInt( getParentValue(R1, RSMap), 48, 49), mi(1, 1)) ==Bool eqMInt( extractMInt( getParentValue(R2, RSMap), 48, 49), mi(1, 1))) andBool (notBool (eqMInt( extractMInt( getParentValue(R1, RSMap), 48, 49), mi(1, 1)) ==Bool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 48, 64)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 64))), 1, 2), mi(1, 1))))) #then mi(1, 1) #else mi(1, 0) #fi)
)

    </regstate>
    


// addw-r16-r16-semantics


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


// imulq-r64

  rule <k>
    execinstr (imulq R1:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
"RAX" |-> extractMInt( mulMInt( mi(128, svalueMInt(getParentValue(R1, RSMap))), mi(128, svalueMInt(getParentValue(%rax, RSMap)))), 64, 128)

"RDX" |-> extractMInt( mulMInt( mi(128, svalueMInt(getParentValue(R1, RSMap))), mi(128, svalueMInt(getParentValue(%rax, RSMap)))), 0, 64)

"CF" |-> (#ifMInt (notBool eqMInt( mulMInt( mi(128, svalueMInt(getParentValue(R1, RSMap))), mi(128, svalueMInt(getParentValue(%rax, RSMap)))), mi(128, svalueMInt(extractMInt( mulMInt( mi(128, svalueMInt(getParentValue(R1, RSMap))), mi(128, svalueMInt(getParentValue(%rax, RSMap)))), 64, 128))))) #then mi(1, 1) #else mi(1, 0) #fi)

"PF" |-> (undefMInt)

"AF" |-> (undefMInt)

"ZF" |-> (undefMInt)

"SF" |-> (undefMInt)

"OF" |-> (#ifMInt (notBool eqMInt( mulMInt( mi(128, svalueMInt(getParentValue(R1, RSMap))), mi(128, svalueMInt(getParentValue(%rax, RSMap)))), mi(128, svalueMInt(extractMInt( mulMInt( mi(128, svalueMInt(getParentValue(R1, RSMap))), mi(128, svalueMInt(getParentValue(%rax, RSMap)))), 64, 128))))) #then mi(1, 1) #else mi(1, 0) #fi)
)

    </regstate>
    


// imulq-r64-semantics


// idivw-m16

  context execinstr(idivw:Opcode HOLE:Mem,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (idivw:Opcode memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      loadFromMemory( MemOff, 16) ~>
      execinstr (idivw memOffset( MemOff),  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem16:MInt):MemLoadValue ~> execinstr (idivw:Opcode memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      .
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
"RAX" |-> concatenateMInt( extractMInt( getParentValue(%rax, RSMap), 0, 48), idiv_quotient_int16(concatenateMInt( extractMInt( getParentValue(%rdx, RSMap), 48, 64), extractMInt( getParentValue(%rax, RSMap), 48, 64)), Mem16))

"RDX" |-> concatenateMInt( extractMInt( getParentValue(%rdx, RSMap), 0, 48), idiv_remainder_int16(concatenateMInt( extractMInt( getParentValue(%rdx, RSMap), 48, 64), extractMInt( getParentValue(%rax, RSMap), 48, 64)), Mem16))

"CF" |-> (undefMInt)

"PF" |-> (undefMInt)

"AF" |-> (undefMInt)

"ZF" |-> (undefMInt)

"SF" |-> (undefMInt)

"OF" |-> (undefMInt)
      )
    </regstate>


// divb-r8

  rule <k>
    execinstr (divb R1:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
"RAX" |-> concatenateMInt( concatenateMInt( extractMInt( getParentValue(%rax, RSMap), 0, 48), div_remainder_int8(extractMInt( getParentValue(%rax, RSMap), 48, 64), extractMInt( getParentValue(R1, RSMap), 56, 64))), div_quotient_int8(extractMInt( getParentValue(%rax, RSMap), 48, 64), extractMInt( getParentValue(R1, RSMap), 56, 64)))

"CF" |-> (undefMInt)

"PF" |-> (undefMInt)

"AF" |-> (undefMInt)

"ZF" |-> (undefMInt)

"SF" |-> (undefMInt)

"OF" |-> (undefMInt)
)

    </regstate>
    


// divb-r8-semantics



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



// jns-label

  rule <k> 
    execinstr (jns LabelId:X86Id, .Operands) => .
  ...</k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> Target))
      </regstate>
      <functargets>... LabelId |-> Target  ...</functargets>
        requires  eqMInt({RSMap["SF"]}:>MInt, mi(1, 0))

  rule <k> 
    execinstr (jns LabelId:X86Id, .Operands) => .
  ...</k>
      <regstate> RSMap:Map </regstate> 
        requires  eqMInt({RSMap["SF"]}:>MInt, mi(1, 1))


// andb-r8-r8

  rule <k>
    execinstr (andb R1:R8, R2:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 56), andMInt( extractMInt( getParentValue(R2, RSMap), 56, 64), extractMInt( getParentValue(R1, RSMap), 56, 64)))

"CF" |-> mi(1, 0)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 63, 64), extractMInt( getParentValue(R1, RSMap), 63, 64)), mi(1, 1)) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 62, 63), extractMInt( getParentValue(R1, RSMap), 62, 63)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 61, 62), extractMInt( getParentValue(R1, RSMap), 61, 62)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 60, 61), extractMInt( getParentValue(R1, RSMap), 60, 61)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 59, 60), extractMInt( getParentValue(R1, RSMap), 59, 60)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 58, 59), extractMInt( getParentValue(R1, RSMap), 58, 59)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 57, 58), extractMInt( getParentValue(R1, RSMap), 57, 58)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 56, 57), extractMInt( getParentValue(R1, RSMap), 56, 57)), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> (undefMInt)

"ZF" |-> (#ifMInt eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 56, 64), extractMInt( getParentValue(R1, RSMap), 56, 64)), mi(8, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> andMInt( extractMInt( getParentValue(R2, RSMap), 56, 57), extractMInt( getParentValue(R1, RSMap), 56, 57))

"OF" |-> mi(1, 0)
)

    </regstate>
    


// andb-r8-r8-semantics


// leaw-r16-m64

  context execinstr(leaw:Opcode HOLE:Mem, R2:R16,  .Operands) [result(MemOffset)]
  
  rule <k>
     execinstr (leaw:Opcode memOffset( MemOff:MInt):MemOffset, R2:R16,  .Operands) =>
      .
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 48), extractMInt( MemOff, 48, 64))
      )
    </regstate>


// divw-r16

  rule <k>
    execinstr (divw R1:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
"RAX" |-> concatenateMInt( extractMInt( getParentValue(%rax, RSMap), 0, 48), div_quotient_int16(concatenateMInt( extractMInt( getParentValue(%rdx, RSMap), 48, 64), extractMInt( getParentValue(%rax, RSMap), 48, 64)), extractMInt( getParentValue(R1, RSMap), 48, 64)))

"RDX" |-> concatenateMInt( extractMInt( getParentValue(%rdx, RSMap), 0, 48), div_remainder_int16(concatenateMInt( extractMInt( getParentValue(%rdx, RSMap), 48, 64), extractMInt( getParentValue(%rax, RSMap), 48, 64)), extractMInt( getParentValue(R1, RSMap), 48, 64)))

"CF" |-> (undefMInt)

"PF" |-> (undefMInt)

"AF" |-> (undefMInt)

"ZF" |-> (undefMInt)

"SF" |-> (undefMInt)

"OF" |-> (undefMInt)
)

    </regstate>
    


// divw-r16-semantics


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


// divps-xmm-xmm

  rule <k>
    execinstr (divps R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 128), concatenateMInt( div_single(extractMInt( getParentValue(R2, RSMap), 128, 160), extractMInt( getParentValue(R1, RSMap), 128, 160)), concatenateMInt( div_single(extractMInt( getParentValue(R2, RSMap), 160, 192), extractMInt( getParentValue(R1, RSMap), 160, 192)), concatenateMInt( div_single(extractMInt( getParentValue(R2, RSMap), 192, 224), extractMInt( getParentValue(R1, RSMap), 192, 224)), div_single(extractMInt( getParentValue(R2, RSMap), 224, 256), extractMInt( getParentValue(R1, RSMap), 224, 256))))))
)

    </regstate>
    


// divps-xmm-xmm-semantics


// orb-rh-r8

  rule <k>
    execinstr (orb R1:R8, R2:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 48), orMInt( extractMInt( getParentValue(R2, RSMap), 48, 56), extractMInt( getParentValue(R1, RSMap), 56, 64))), extractMInt( getParentValue(R2, RSMap), 56, 64))

"CF" |-> mi(1, 0)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( orMInt( extractMInt( getParentValue(R2, RSMap), 55, 56), extractMInt( getParentValue(R1, RSMap), 63, 64)), mi(1, 1)) xorBool eqMInt( orMInt( extractMInt( getParentValue(R2, RSMap), 54, 55), extractMInt( getParentValue(R1, RSMap), 62, 63)), mi(1, 1))) xorBool eqMInt( orMInt( extractMInt( getParentValue(R2, RSMap), 53, 54), extractMInt( getParentValue(R1, RSMap), 61, 62)), mi(1, 1))) xorBool eqMInt( orMInt( extractMInt( getParentValue(R2, RSMap), 52, 53), extractMInt( getParentValue(R1, RSMap), 60, 61)), mi(1, 1))) xorBool eqMInt( orMInt( extractMInt( getParentValue(R2, RSMap), 51, 52), extractMInt( getParentValue(R1, RSMap), 59, 60)), mi(1, 1))) xorBool eqMInt( orMInt( extractMInt( getParentValue(R2, RSMap), 50, 51), extractMInt( getParentValue(R1, RSMap), 58, 59)), mi(1, 1))) xorBool eqMInt( orMInt( extractMInt( getParentValue(R2, RSMap), 49, 50), extractMInt( getParentValue(R1, RSMap), 57, 58)), mi(1, 1))) xorBool eqMInt( orMInt( extractMInt( getParentValue(R2, RSMap), 48, 49), extractMInt( getParentValue(R1, RSMap), 56, 57)), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> (undefMInt)

"ZF" |-> (#ifMInt eqMInt( orMInt( extractMInt( getParentValue(R2, RSMap), 48, 56), extractMInt( getParentValue(R1, RSMap), 56, 64)), mi(8, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> orMInt( extractMInt( getParentValue(R2, RSMap), 48, 49), extractMInt( getParentValue(R1, RSMap), 56, 57))

"OF" |-> mi(1, 0)
)

    </regstate>
    


// orb-rh-r8-semantics


// divpd-xmm-m128

  context execinstr(divpd:Opcode HOLE:Mem, R2:Xmm,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (divpd:Opcode memOffset( MemOff:MInt):MemOffset, R2:Xmm,  .Operands) =>
      loadFromMemory( MemOff, 128) ~>
      execinstr (divpd memOffset( MemOff), R2:Xmm,  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem128:MInt):MemLoadValue ~> execinstr (divpd:Opcode memOffset( MemOff:MInt):MemOffset, R2:Xmm,  .Operands) =>
      .
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 128), concatenateMInt( div_double(extractMInt( getParentValue(R2, RSMap), 128, 192), extractMInt( Mem128, 0, 64)), div_double(extractMInt( getParentValue(R2, RSMap), 192, 256), extractMInt( Mem128, 64, 128))))
      )
    </regstate>


// andb-r8-rh

  rule <k>
    execinstr (andb R1:Rh, R2:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 56), andMInt( extractMInt( getParentValue(R2, RSMap), 56, 64), extractMInt( getParentValue(R1, RSMap), 48, 56)))

"CF" |-> mi(1, 0)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 63, 64), extractMInt( getParentValue(R1, RSMap), 55, 56)), mi(1, 1)) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 62, 63), extractMInt( getParentValue(R1, RSMap), 54, 55)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 61, 62), extractMInt( getParentValue(R1, RSMap), 53, 54)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 60, 61), extractMInt( getParentValue(R1, RSMap), 52, 53)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 59, 60), extractMInt( getParentValue(R1, RSMap), 51, 52)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 58, 59), extractMInt( getParentValue(R1, RSMap), 50, 51)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 57, 58), extractMInt( getParentValue(R1, RSMap), 49, 50)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 56, 57), extractMInt( getParentValue(R1, RSMap), 48, 49)), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> (undefMInt)

"ZF" |-> (#ifMInt eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 56, 64), extractMInt( getParentValue(R1, RSMap), 48, 56)), mi(8, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> andMInt( extractMInt( getParentValue(R2, RSMap), 56, 57), extractMInt( getParentValue(R1, RSMap), 48, 49))

"OF" |-> mi(1, 0)
)

    </regstate>
    


// andb-r8-rh-semantics


// imulb-r8

  rule <k>
    execinstr (imulb R1:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
"RAX" |-> concatenateMInt( extractMInt( getParentValue(%rax, RSMap), 0, 48), mulMInt( mi(16, svalueMInt(extractMInt( getParentValue(R1, RSMap), 56, 64))), mi(16, svalueMInt(extractMInt( getParentValue(%rax, RSMap), 56, 64)))))

"CF" |-> (#ifMInt (notBool eqMInt( mulMInt( mi(16, svalueMInt(extractMInt( getParentValue(R1, RSMap), 56, 64))), mi(16, svalueMInt(extractMInt( getParentValue(%rax, RSMap), 56, 64)))), mi(16, svalueMInt(extractMInt( mulMInt( mi(16, svalueMInt(extractMInt( getParentValue(R1, RSMap), 56, 64))), mi(16, svalueMInt(extractMInt( getParentValue(%rax, RSMap), 56, 64)))), 8, 16))))) #then mi(1, 1) #else mi(1, 0) #fi)

"PF" |-> (undefMInt)

"AF" |-> (undefMInt)

"ZF" |-> (undefMInt)

"SF" |-> (undefMInt)

"OF" |-> (#ifMInt (notBool eqMInt( mulMInt( mi(16, svalueMInt(extractMInt( getParentValue(R1, RSMap), 56, 64))), mi(16, svalueMInt(extractMInt( getParentValue(%rax, RSMap), 56, 64)))), mi(16, svalueMInt(extractMInt( mulMInt( mi(16, svalueMInt(extractMInt( getParentValue(R1, RSMap), 56, 64))), mi(16, svalueMInt(extractMInt( getParentValue(%rax, RSMap), 56, 64)))), 8, 16))))) #then mi(1, 1) #else mi(1, 0) #fi)
)

    </regstate>
    


// imulb-r8-semantics


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


// andw-r16-r16

  rule <k>
    execinstr (andw R1:R16, R2:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 48), andMInt( extractMInt( getParentValue(R2, RSMap), 48, 64), extractMInt( getParentValue(R1, RSMap), 48, 64)))

"CF" |-> mi(1, 0)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 63, 64), extractMInt( getParentValue(R1, RSMap), 63, 64)), mi(1, 1)) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 62, 63), extractMInt( getParentValue(R1, RSMap), 62, 63)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 61, 62), extractMInt( getParentValue(R1, RSMap), 61, 62)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 60, 61), extractMInt( getParentValue(R1, RSMap), 60, 61)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 59, 60), extractMInt( getParentValue(R1, RSMap), 59, 60)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 58, 59), extractMInt( getParentValue(R1, RSMap), 58, 59)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 57, 58), extractMInt( getParentValue(R1, RSMap), 57, 58)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 56, 57), extractMInt( getParentValue(R1, RSMap), 56, 57)), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> (undefMInt)

"ZF" |-> (#ifMInt eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 48, 64), extractMInt( getParentValue(R1, RSMap), 48, 64)), mi(16, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> andMInt( extractMInt( getParentValue(R2, RSMap), 48, 49), extractMInt( getParentValue(R1, RSMap), 48, 49))

"OF" |-> mi(1, 0)
)

    </regstate>
    


// andw-r16-r16-semantics



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


// divpd-xmm-xmm

  rule <k>
    execinstr (divpd R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 128), concatenateMInt( div_double(extractMInt( getParentValue(R2, RSMap), 128, 192), extractMInt( getParentValue(R1, RSMap), 128, 192)), div_double(extractMInt( getParentValue(R2, RSMap), 192, 256), extractMInt( getParentValue(R1, RSMap), 192, 256))))
)

    </regstate>
    


// divpd-xmm-xmm-semantics



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


// idivq-m64

  context execinstr(idivq:Opcode HOLE:Mem,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (idivq:Opcode memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      loadFromMemory( MemOff, 64) ~>
      execinstr (idivq memOffset( MemOff),  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem64:MInt):MemLoadValue ~> execinstr (idivq:Opcode memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      .
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
"RAX" |-> idiv_quotient_int64(concatenateMInt( getParentValue(%rdx, RSMap), getParentValue(%rax, RSMap)), Mem64)

"RDX" |-> idiv_remainder_int64(concatenateMInt( getParentValue(%rdx, RSMap), getParentValue(%rax, RSMap)), Mem64)

"CF" |-> (undefMInt)

"PF" |-> (undefMInt)

"AF" |-> (undefMInt)

"ZF" |-> (undefMInt)

"SF" |-> (undefMInt)

"OF" |-> (undefMInt)
      )
    </regstate>


// movzbw-r16-rh

  rule <k>
    execinstr (movzbw R1:Rh, R2:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 48), concatenateMInt( mi(8, 0), extractMInt( getParentValue(R1, RSMap), 48, 56)))
)

    </regstate>
    


// movzbw-r16-rh-semantics


// leaw-r16-m16

  context execinstr(leaw:Opcode HOLE:Mem, R2:R16,  .Operands) [result(MemOffset)]
  
  rule <k>
     execinstr (leaw:Opcode memOffset( MemOff:MInt):MemOffset, R2:R16,  .Operands) =>
      .
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 48), extractMInt( MemOff, 48, 64))
      )
    </regstate>


// xorb-r8-r8

  rule <k>
    execinstr (xorb R1:R8, R2:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 56), xorMInt( extractMInt( getParentValue(R2, RSMap), 56, 64), extractMInt( getParentValue(R1, RSMap), 56, 64)))

"CF" |-> mi(1, 0)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 63, 64), extractMInt( getParentValue(R1, RSMap), 63, 64)), mi(1, 1)) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 62, 63), extractMInt( getParentValue(R1, RSMap), 62, 63)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 61, 62), extractMInt( getParentValue(R1, RSMap), 61, 62)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 60, 61), extractMInt( getParentValue(R1, RSMap), 60, 61)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 59, 60), extractMInt( getParentValue(R1, RSMap), 59, 60)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 58, 59), extractMInt( getParentValue(R1, RSMap), 58, 59)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 57, 58), extractMInt( getParentValue(R1, RSMap), 57, 58)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 56, 57), extractMInt( getParentValue(R1, RSMap), 56, 57)), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> (undefMInt)

"ZF" |-> (#ifMInt eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 56, 64), extractMInt( getParentValue(R1, RSMap), 56, 64)), mi(8, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> xorMInt( extractMInt( getParentValue(R2, RSMap), 56, 57), extractMInt( getParentValue(R1, RSMap), 56, 57))

"OF" |-> mi(1, 0)
)

    </regstate>
    


// xorb-r8-r8-semantics


// orps-xmm-xmm

  rule <k>
    execinstr (orps R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 128), orMInt( extractMInt( getParentValue(R2, RSMap), 128, 256), extractMInt( getParentValue(R1, RSMap), 128, 256)))
)

    </regstate>
    


// orps-xmm-xmm-semantics


// andb-rh-r8

  rule <k>
    execinstr (andb R1:R8, R2:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 48), andMInt( extractMInt( getParentValue(R2, RSMap), 48, 56), extractMInt( getParentValue(R1, RSMap), 56, 64))), extractMInt( getParentValue(R2, RSMap), 56, 64))

"CF" |-> mi(1, 0)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 55, 56), extractMInt( getParentValue(R1, RSMap), 63, 64)), mi(1, 1)) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 54, 55), extractMInt( getParentValue(R1, RSMap), 62, 63)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 53, 54), extractMInt( getParentValue(R1, RSMap), 61, 62)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 52, 53), extractMInt( getParentValue(R1, RSMap), 60, 61)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 51, 52), extractMInt( getParentValue(R1, RSMap), 59, 60)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 50, 51), extractMInt( getParentValue(R1, RSMap), 58, 59)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 49, 50), extractMInt( getParentValue(R1, RSMap), 57, 58)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 48, 49), extractMInt( getParentValue(R1, RSMap), 56, 57)), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> (undefMInt)

"ZF" |-> (#ifMInt eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 48, 56), extractMInt( getParentValue(R1, RSMap), 56, 64)), mi(8, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> andMInt( extractMInt( getParentValue(R2, RSMap), 48, 49), extractMInt( getParentValue(R1, RSMap), 56, 57))

"OF" |-> mi(1, 0)
)

    </regstate>
    


// andb-rh-r8-semantics



// retq

  rule <k> 
    execinstr (leave .Operands) => 
      execinstr(movq %rbp, %rsp, .Operands) ~> 
      execinstr(popq %rbp, .Operands)
  ...</k>


// imulw-r16-r16

  rule <k>
    execinstr (imulw R1:R16, R2:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 48), extractMInt( mulMInt( mi(32, svalueMInt(extractMInt( getParentValue(R2, RSMap), 48, 64))), mi(32, svalueMInt(extractMInt( getParentValue(R1, RSMap), 48, 64)))), 16, 32))

"CF" |-> (#ifMInt (notBool eqMInt( mulMInt( mi(32, svalueMInt(extractMInt( getParentValue(R2, RSMap), 48, 64))), mi(32, svalueMInt(extractMInt( getParentValue(R1, RSMap), 48, 64)))), mi(32, svalueMInt(extractMInt( mulMInt( mi(32, svalueMInt(extractMInt( getParentValue(R2, RSMap), 48, 64))), mi(32, svalueMInt(extractMInt( getParentValue(R1, RSMap), 48, 64)))), 16, 32))))) #then mi(1, 1) #else mi(1, 0) #fi)

"PF" |-> (undefMInt)

"AF" |-> (undefMInt)

"ZF" |-> (undefMInt)

"SF" |-> (undefMInt)

"OF" |-> (#ifMInt (notBool eqMInt( mulMInt( mi(32, svalueMInt(extractMInt( getParentValue(R2, RSMap), 48, 64))), mi(32, svalueMInt(extractMInt( getParentValue(R1, RSMap), 48, 64)))), mi(32, svalueMInt(extractMInt( mulMInt( mi(32, svalueMInt(extractMInt( getParentValue(R2, RSMap), 48, 64))), mi(32, svalueMInt(extractMInt( getParentValue(R1, RSMap), 48, 64)))), 16, 32))))) #then mi(1, 1) #else mi(1, 0) #fi)
)

    </regstate>
    


// imulw-r16-r16-semantics


// leal-r32-m32

  context execinstr(leal:Opcode HOLE:Mem, R2:R32,  .Operands) [result(MemOffset)]
  
  rule <k>
     execinstr (leal:Opcode memOffset( MemOff:MInt):MemOffset, R2:R32,  .Operands) =>
      .
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( mi(32, 0), extractMInt( MemOff, 32, 64))
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


// divb-rh

  rule <k>
    execinstr (divb R1:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
"RAX" |-> concatenateMInt( concatenateMInt( extractMInt( getParentValue(%rax, RSMap), 0, 48), div_remainder_int8(extractMInt( getParentValue(%rax, RSMap), 48, 64), extractMInt( getParentValue(R1, RSMap), 48, 56))), div_quotient_int8(extractMInt( getParentValue(%rax, RSMap), 48, 64), extractMInt( getParentValue(R1, RSMap), 48, 56)))

"CF" |-> (undefMInt)

"PF" |-> (undefMInt)

"AF" |-> (undefMInt)

"ZF" |-> (undefMInt)

"SF" |-> (undefMInt)

"OF" |-> (undefMInt)
)

    </regstate>
    


// divb-rh-semantics

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


// andl-r32-imm32

  rule <k>
    execinstr (andl Imm32:Imm, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( mi(32, 0), andMInt( extractMInt( getParentValue(R2, RSMap), 32, 64), handleImmediateWithSignExtend(Imm32, 32, 32)))

"CF" |-> mi(1, 0)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 63, 64), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 31, 32)), mi(1, 1)) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 62, 63), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 30, 31)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 61, 62), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 29, 30)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 60, 61), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 28, 29)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 59, 60), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 27, 28)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 58, 59), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 26, 27)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 57, 58), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 25, 26)), mi(1, 1))) xorBool eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 56, 57), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 24, 25)), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> (undefMInt)

"ZF" |-> (#ifMInt eqMInt( andMInt( extractMInt( getParentValue(R2, RSMap), 32, 64), handleImmediateWithSignExtend(Imm32, 32, 32)), mi(32, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> andMInt( extractMInt( getParentValue(R2, RSMap), 32, 33), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 0, 1))

"OF" |-> mi(1, 0)
)

    </regstate>
    


// andl-r32-imm32-semantics


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


// addsubps-xmm-xmm

  rule <k>
    execinstr (addsubps R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 128), concatenateMInt( concatenateMInt( add_single(extractMInt( getParentValue(R2, RSMap), 128, 160), extractMInt( getParentValue(R1, RSMap), 128, 160)), sub_single(extractMInt( getParentValue(R2, RSMap), 160, 192), extractMInt( getParentValue(R1, RSMap), 160, 192))), concatenateMInt( add_single(extractMInt( getParentValue(R2, RSMap), 192, 224), extractMInt( getParentValue(R1, RSMap), 192, 224)), sub_single(extractMInt( getParentValue(R2, RSMap), 224, 256), extractMInt( getParentValue(R1, RSMap), 224, 256)))))
)

    </regstate>
    


// addsubps-xmm-xmm-semantics


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


// orq-m64-imm32

  context execinstr(orq:Opcode Imm32:Imm, HOLE:Mem,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (orq:Opcode Imm32:Imm, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      loadFromMemory( MemOff, 64) ~>
      execinstr (orq Imm32, memOffset( MemOff),  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem64:MInt):MemLoadValue ~> execinstr (orq:Opcode Imm32:Imm, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      
            storeToMemory(
              orMInt( Mem64, mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32)))),
              MemOff,
              64
            )
          
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
"CF" |-> mi(1, 0)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( orMInt( extractMInt( Mem64, 63, 64), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 31, 32)), mi(1, 1)) xorBool eqMInt( orMInt( extractMInt( Mem64, 62, 63), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 30, 31)), mi(1, 1))) xorBool eqMInt( orMInt( extractMInt( Mem64, 61, 62), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 29, 30)), mi(1, 1))) xorBool eqMInt( orMInt( extractMInt( Mem64, 60, 61), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 28, 29)), mi(1, 1))) xorBool eqMInt( orMInt( extractMInt( Mem64, 59, 60), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 27, 28)), mi(1, 1))) xorBool eqMInt( orMInt( extractMInt( Mem64, 58, 59), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 26, 27)), mi(1, 1))) xorBool eqMInt( orMInt( extractMInt( Mem64, 57, 58), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 25, 26)), mi(1, 1))) xorBool eqMInt( orMInt( extractMInt( Mem64, 56, 57), extractMInt( handleImmediateWithSignExtend(Imm32, 32, 32), 24, 25)), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> (undefMInt)

"ZF" |-> (#ifMInt eqMInt( orMInt( Mem64, mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32)))), mi(64, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> orMInt( extractMInt( Mem64, 0, 1), extractMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm32, 32, 32))), 0, 1))

"OF" |-> mi(1, 0)
      )
    </regstate>


// andnl-r32-r32-r32

  rule <k>
    execinstr (andnl R1:R32, R2:R32, R3:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> concatenateMInt( mi(32, 0), andMInt( negMInt( extractMInt( getParentValue(R2, RSMap), 32, 64)), extractMInt( getParentValue(R1, RSMap), 32, 64)))

"CF" |-> mi(1, 0)

"PF" |-> (undefMInt)

"AF" |-> (undefMInt)

"ZF" |-> (#ifMInt eqMInt( andMInt( negMInt( extractMInt( getParentValue(R2, RSMap), 32, 64)), extractMInt( getParentValue(R1, RSMap), 32, 64)), mi(32, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> andMInt( negMInt( extractMInt( getParentValue(R2, RSMap), 32, 33)), extractMInt( getParentValue(R1, RSMap), 32, 33))

"OF" |-> mi(1, 0)
)

    </regstate>
    


// andnl-r32-r32-r32-semantics


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


// orb-rh-rh

  rule <k>
    execinstr (orb R1:Rh, R2:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 48), orMInt( extractMInt( getParentValue(R2, RSMap), 48, 56), extractMInt( getParentValue(R1, RSMap), 48, 56))), extractMInt( getParentValue(R2, RSMap), 56, 64))

"CF" |-> mi(1, 0)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( orMInt( extractMInt( getParentValue(R2, RSMap), 55, 56), extractMInt( getParentValue(R1, RSMap), 55, 56)), mi(1, 1)) xorBool eqMInt( orMInt( extractMInt( getParentValue(R2, RSMap), 54, 55), extractMInt( getParentValue(R1, RSMap), 54, 55)), mi(1, 1))) xorBool eqMInt( orMInt( extractMInt( getParentValue(R2, RSMap), 53, 54), extractMInt( getParentValue(R1, RSMap), 53, 54)), mi(1, 1))) xorBool eqMInt( orMInt( extractMInt( getParentValue(R2, RSMap), 52, 53), extractMInt( getParentValue(R1, RSMap), 52, 53)), mi(1, 1))) xorBool eqMInt( orMInt( extractMInt( getParentValue(R2, RSMap), 51, 52), extractMInt( getParentValue(R1, RSMap), 51, 52)), mi(1, 1))) xorBool eqMInt( orMInt( extractMInt( getParentValue(R2, RSMap), 50, 51), extractMInt( getParentValue(R1, RSMap), 50, 51)), mi(1, 1))) xorBool eqMInt( orMInt( extractMInt( getParentValue(R2, RSMap), 49, 50), extractMInt( getParentValue(R1, RSMap), 49, 50)), mi(1, 1))) xorBool eqMInt( orMInt( extractMInt( getParentValue(R2, RSMap), 48, 49), extractMInt( getParentValue(R1, RSMap), 48, 49)), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> (undefMInt)

"ZF" |-> (#ifMInt eqMInt( orMInt( extractMInt( getParentValue(R2, RSMap), 48, 56), extractMInt( getParentValue(R1, RSMap), 48, 56)), mi(8, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> orMInt( extractMInt( getParentValue(R2, RSMap), 48, 49), extractMInt( getParentValue(R1, RSMap), 48, 49))

"OF" |-> mi(1, 0)
)

    </regstate>
    


// orb-rh-rh-semantics


// divw-m16

  context execinstr(divw:Opcode HOLE:Mem,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (divw:Opcode memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      loadFromMemory( MemOff, 16) ~>
      execinstr (divw memOffset( MemOff),  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem16:MInt):MemLoadValue ~> execinstr (divw:Opcode memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      .
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
"RAX" |-> concatenateMInt( extractMInt( getParentValue(%rax, RSMap), 0, 48), div_quotient_int16(concatenateMInt( extractMInt( getParentValue(%rdx, RSMap), 48, 64), extractMInt( getParentValue(%rax, RSMap), 48, 64)), Mem16))

"RDX" |-> concatenateMInt( extractMInt( getParentValue(%rdx, RSMap), 0, 48), div_remainder_int16(concatenateMInt( extractMInt( getParentValue(%rdx, RSMap), 48, 64), extractMInt( getParentValue(%rax, RSMap), 48, 64)), Mem16))

"CF" |-> (undefMInt)

"PF" |-> (undefMInt)

"AF" |-> (undefMInt)

"ZF" |-> (undefMInt)

"SF" |-> (undefMInt)

"OF" |-> (undefMInt)
      )
    </regstate>


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


// addsubpd-xmm-xmm

  rule <k>
    execinstr (addsubpd R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 128), concatenateMInt( add_double(extractMInt( getParentValue(R2, RSMap), 128, 192), extractMInt( getParentValue(R1, RSMap), 128, 192)), sub_double(extractMInt( getParentValue(R2, RSMap), 192, 256), extractMInt( getParentValue(R1, RSMap), 192, 256))))
)

    </regstate>
    


// addsubpd-xmm-xmm-semantics


// movzwl-r32-r16

  rule <k>
    execinstr (movzwl R1:R16, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( mi(48, 0), extractMInt( getParentValue(R1, RSMap), 48, 64))
)

    </regstate>
    


// movzwl-r32-r16-semantics


// andnq-r64-r64-r64

  rule <k>
    execinstr (andnq R1:R64, R2:R64, R3:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> andMInt( negMInt( getParentValue(R2, RSMap)), getParentValue(R1, RSMap))

"CF" |-> mi(1, 0)

"PF" |-> (undefMInt)

"AF" |-> (undefMInt)

"ZF" |-> (#ifMInt eqMInt( andMInt( negMInt( getParentValue(R2, RSMap)), getParentValue(R1, RSMap)), mi(64, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> andMInt( negMInt( extractMInt( getParentValue(R2, RSMap), 0, 1)), extractMInt( getParentValue(R1, RSMap), 0, 1))

"OF" |-> mi(1, 0)
)

    </regstate>
    


// andnq-r64-r64-r64-semantics


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



// jnc-label

  rule <k> 
    execinstr (jnc LabelId:X86Id, .Operands) => .
  ...</k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> Target))
      </regstate>
      <functargets>... LabelId |-> Target  ...</functargets>
        requires  eqMInt({RSMap["CF"]}:>MInt, mi(1, 0))

  rule <k> 
    execinstr (jnc LabelId:X86Id, .Operands) => .
  ...</k>
      <regstate> RSMap:Map </regstate> 
        requires  eqMInt({RSMap["CF"]}:>MInt, mi(1, 1))


// andnpd-xmm-xmm

  rule <k>
    execinstr (andnpd R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 128), andMInt( negMInt( extractMInt( getParentValue(R2, RSMap), 128, 256)), extractMInt( getParentValue(R1, RSMap), 128, 256)))
)

    </regstate>
    


// andnpd-xmm-xmm-semantics


// imulq-r64-r64

  rule <k>
    execinstr (imulq R1:R64, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> extractMInt( mulMInt( mi(128, svalueMInt(getParentValue(R2, RSMap))), mi(128, svalueMInt(getParentValue(R1, RSMap)))), 64, 128)

"CF" |-> (#ifMInt (notBool eqMInt( mulMInt( mi(128, svalueMInt(getParentValue(R2, RSMap))), mi(128, svalueMInt(getParentValue(R1, RSMap)))), mi(128, svalueMInt(extractMInt( mulMInt( mi(128, svalueMInt(getParentValue(R2, RSMap))), mi(128, svalueMInt(getParentValue(R1, RSMap)))), 64, 128))))) #then mi(1, 1) #else mi(1, 0) #fi)

"PF" |-> (undefMInt)

"AF" |-> (undefMInt)

"ZF" |-> (undefMInt)

"SF" |-> (undefMInt)

"OF" |-> (#ifMInt (notBool eqMInt( mulMInt( mi(128, svalueMInt(getParentValue(R2, RSMap))), mi(128, svalueMInt(getParentValue(R1, RSMap)))), mi(128, svalueMInt(extractMInt( mulMInt( mi(128, svalueMInt(getParentValue(R2, RSMap))), mi(128, svalueMInt(getParentValue(R1, RSMap)))), 64, 128))))) #then mi(1, 1) #else mi(1, 0) #fi)
)

    </regstate>
    


// imulq-r64-r64-semantics


// divq-r64

  rule <k>
    execinstr (divq R1:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
"RAX" |-> div_quotient_int64(concatenateMInt( getParentValue(%rdx, RSMap), getParentValue(%rax, RSMap)), getParentValue(R1, RSMap))

"RDX" |-> div_remainder_int64(concatenateMInt( getParentValue(%rdx, RSMap), getParentValue(%rax, RSMap)), getParentValue(R1, RSMap))

"CF" |-> (undefMInt)

"PF" |-> (undefMInt)

"AF" |-> (undefMInt)

"ZF" |-> (undefMInt)

"SF" |-> (undefMInt)

"OF" |-> (undefMInt)
)

    </regstate>
    


// divq-r64-semantics

// jg-label

  rule <k> 
    execinstr (jg LabelId:X86Id, .Operands) => .
  ...</k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> Target))
      </regstate>
      <functargets>... LabelId |-> Target  ...</functargets>
        requires  eqMInt({RSMap["ZF"]}:>MInt, mi(1, 0)) 
                    andBool 
                  eqMInt({RSMap["SF"]}:>MInt, {RSMap["OF"]}:>MInt)

  rule <k> 
    execinstr (jg LabelId:X86Id, .Operands) => .
  ...</k>
      <regstate> RSMap:Map </regstate> 
        requires  notBool eqMInt({RSMap["ZF"]}:>MInt, mi(1, 0)) 
                    orBool 
                  notBool eqMInt({RSMap["SF"]}:>MInt, {RSMap["OF"]}:>MInt)


// xorb-r8-rh

  rule <k>
    execinstr (xorb R1:Rh, R2:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 56), xorMInt( extractMInt( getParentValue(R2, RSMap), 56, 64), extractMInt( getParentValue(R1, RSMap), 48, 56)))

"CF" |-> mi(1, 0)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 63, 64), extractMInt( getParentValue(R1, RSMap), 55, 56)), mi(1, 1)) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 62, 63), extractMInt( getParentValue(R1, RSMap), 54, 55)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 61, 62), extractMInt( getParentValue(R1, RSMap), 53, 54)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 60, 61), extractMInt( getParentValue(R1, RSMap), 52, 53)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 59, 60), extractMInt( getParentValue(R1, RSMap), 51, 52)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 58, 59), extractMInt( getParentValue(R1, RSMap), 50, 51)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 57, 58), extractMInt( getParentValue(R1, RSMap), 49, 50)), mi(1, 1))) xorBool eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 56, 57), extractMInt( getParentValue(R1, RSMap), 48, 49)), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> (undefMInt)

"ZF" |-> (#ifMInt eqMInt( xorMInt( extractMInt( getParentValue(R2, RSMap), 56, 64), extractMInt( getParentValue(R1, RSMap), 48, 56)), mi(8, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> xorMInt( extractMInt( getParentValue(R2, RSMap), 56, 57), extractMInt( getParentValue(R1, RSMap), 48, 49))

"OF" |-> mi(1, 0)
)

    </regstate>
    


// xorb-r8-rh-semantics


// orpd-xmm-xmm

  rule <k>
    execinstr (orpd R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 128), orMInt( extractMInt( getParentValue(R2, RSMap), 128, 256), extractMInt( getParentValue(R1, RSMap), 128, 256)))
)

    </regstate>
    


// orpd-xmm-xmm-semantics


// orq-m64-imm8

  context execinstr(orq:Opcode Imm8:Imm, HOLE:Mem,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (orq:Opcode Imm8:Imm, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      loadFromMemory( MemOff, 64) ~>
      execinstr (orq Imm8, memOffset( MemOff),  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem64:MInt):MemLoadValue ~> execinstr (orq:Opcode Imm8:Imm, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      
            storeToMemory(
              orMInt( Mem64, mi(64, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8)))),
              MemOff,
              64
            )
          
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
"CF" |-> mi(1, 0)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( orMInt( extractMInt( Mem64, 63, 64), extractMInt( handleImmediateWithSignExtend(Imm8, 8, 8), 7, 8)), mi(1, 1)) xorBool eqMInt( orMInt( extractMInt( Mem64, 62, 63), extractMInt( handleImmediateWithSignExtend(Imm8, 8, 8), 6, 7)), mi(1, 1))) xorBool eqMInt( orMInt( extractMInt( Mem64, 61, 62), extractMInt( handleImmediateWithSignExtend(Imm8, 8, 8), 5, 6)), mi(1, 1))) xorBool eqMInt( orMInt( extractMInt( Mem64, 60, 61), extractMInt( handleImmediateWithSignExtend(Imm8, 8, 8), 4, 5)), mi(1, 1))) xorBool eqMInt( orMInt( extractMInt( Mem64, 59, 60), extractMInt( handleImmediateWithSignExtend(Imm8, 8, 8), 3, 4)), mi(1, 1))) xorBool eqMInt( orMInt( extractMInt( Mem64, 58, 59), extractMInt( handleImmediateWithSignExtend(Imm8, 8, 8), 2, 3)), mi(1, 1))) xorBool eqMInt( orMInt( extractMInt( Mem64, 57, 58), extractMInt( handleImmediateWithSignExtend(Imm8, 8, 8), 1, 2)), mi(1, 1))) xorBool eqMInt( orMInt( extractMInt( Mem64, 56, 57), extractMInt( handleImmediateWithSignExtend(Imm8, 8, 8), 0, 1)), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> (undefMInt)

"ZF" |-> (#ifMInt eqMInt( orMInt( Mem64, mi(64, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8)))), mi(64, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> orMInt( extractMInt( Mem64, 0, 1), extractMInt( mi(64, svalueMInt(handleImmediateWithSignExtend(Imm8, 8, 8))), 0, 1))

"OF" |-> mi(1, 0)
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


// imull-r32-r32

  rule <k>
    execinstr (imull R1:R32, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( mi(32, 0), extractMInt( mulMInt( mi(64, svalueMInt(extractMInt( getParentValue(R2, RSMap), 32, 64))), mi(64, svalueMInt(extractMInt( getParentValue(R1, RSMap), 32, 64)))), 32, 64))

"CF" |-> (#ifMInt (notBool eqMInt( mulMInt( mi(64, svalueMInt(extractMInt( getParentValue(R2, RSMap), 32, 64))), mi(64, svalueMInt(extractMInt( getParentValue(R1, RSMap), 32, 64)))), mi(64, svalueMInt(extractMInt( mulMInt( mi(64, svalueMInt(extractMInt( getParentValue(R2, RSMap), 32, 64))), mi(64, svalueMInt(extractMInt( getParentValue(R1, RSMap), 32, 64)))), 32, 64))))) #then mi(1, 1) #else mi(1, 0) #fi)

"PF" |-> (undefMInt)

"AF" |-> (undefMInt)

"ZF" |-> (undefMInt)

"SF" |-> (undefMInt)

"OF" |-> (#ifMInt (notBool eqMInt( mulMInt( mi(64, svalueMInt(extractMInt( getParentValue(R2, RSMap), 32, 64))), mi(64, svalueMInt(extractMInt( getParentValue(R1, RSMap), 32, 64)))), mi(64, svalueMInt(extractMInt( mulMInt( mi(64, svalueMInt(extractMInt( getParentValue(R2, RSMap), 32, 64))), mi(64, svalueMInt(extractMInt( getParentValue(R1, RSMap), 32, 64)))), 32, 64))))) #then mi(1, 1) #else mi(1, 0) #fi)
)

    </regstate>
    


// imull-r32-r32-semantics


// addpd-xmm-xmm

  rule <k>
    execinstr (addpd R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 128), concatenateMInt( add_double(extractMInt( getParentValue(R2, RSMap), 128, 192), extractMInt( getParentValue(R1, RSMap), 128, 192)), add_double(extractMInt( getParentValue(R2, RSMap), 192, 256), extractMInt( getParentValue(R1, RSMap), 192, 256))))
)

    </regstate>
    


// addpd-xmm-xmm-semantics


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


// movzwq-r64-m16

  context execinstr(movzwq:Opcode HOLE:Mem, R2:R64,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (movzwq:Opcode memOffset( MemOff:MInt):MemOffset, R2:R64,  .Operands) =>
      loadFromMemory( MemOff, 16) ~>
      execinstr (movzwq memOffset( MemOff), R2,  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem16:MInt):MemLoadValue ~> execinstr (movzwq:Opcode memOffset( MemOff:MInt):MemOffset, R2:R64,  .Operands) =>
      .
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( mi(48, 0), Mem16)
      )
    </regstate>


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


// orl-r32-r32

  rule <k>
    execinstr (orl R1:R32, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( mi(32, 0), orMInt( extractMInt( getParentValue(R2, RSMap), 32, 64), extractMInt( getParentValue(R1, RSMap), 32, 64)))

"CF" |-> mi(1, 0)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( orMInt( extractMInt( getParentValue(R2, RSMap), 63, 64), extractMInt( getParentValue(R1, RSMap), 63, 64)), mi(1, 1)) xorBool eqMInt( orMInt( extractMInt( getParentValue(R2, RSMap), 62, 63), extractMInt( getParentValue(R1, RSMap), 62, 63)), mi(1, 1))) xorBool eqMInt( orMInt( extractMInt( getParentValue(R2, RSMap), 61, 62), extractMInt( getParentValue(R1, RSMap), 61, 62)), mi(1, 1))) xorBool eqMInt( orMInt( extractMInt( getParentValue(R2, RSMap), 60, 61), extractMInt( getParentValue(R1, RSMap), 60, 61)), mi(1, 1))) xorBool eqMInt( orMInt( extractMInt( getParentValue(R2, RSMap), 59, 60), extractMInt( getParentValue(R1, RSMap), 59, 60)), mi(1, 1))) xorBool eqMInt( orMInt( extractMInt( getParentValue(R2, RSMap), 58, 59), extractMInt( getParentValue(R1, RSMap), 58, 59)), mi(1, 1))) xorBool eqMInt( orMInt( extractMInt( getParentValue(R2, RSMap), 57, 58), extractMInt( getParentValue(R1, RSMap), 57, 58)), mi(1, 1))) xorBool eqMInt( orMInt( extractMInt( getParentValue(R2, RSMap), 56, 57), extractMInt( getParentValue(R1, RSMap), 56, 57)), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> (undefMInt)

"ZF" |-> (#ifMInt eqMInt( orMInt( extractMInt( getParentValue(R2, RSMap), 32, 64), extractMInt( getParentValue(R1, RSMap), 32, 64)), mi(32, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> orMInt( extractMInt( getParentValue(R2, RSMap), 32, 33), extractMInt( getParentValue(R1, RSMap), 32, 33))

"OF" |-> mi(1, 0)
)

    </regstate>
    


// orl-r32-r32-semantics


// divps-xmm-m128

  context execinstr(divps:Opcode HOLE:Mem, R2:Xmm,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (divps:Opcode memOffset( MemOff:MInt):MemOffset, R2:Xmm,  .Operands) =>
      loadFromMemory( MemOff, 128) ~>
      execinstr (divps memOffset( MemOff), R2:Xmm,  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem128:MInt):MemLoadValue ~> execinstr (divps:Opcode memOffset( MemOff:MInt):MemOffset, R2:Xmm,  .Operands) =>
      .
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 128), concatenateMInt( div_single(extractMInt( getParentValue(R2, RSMap), 128, 160), extractMInt( Mem128, 0, 32)), concatenateMInt( div_single(extractMInt( getParentValue(R2, RSMap), 160, 192), extractMInt( Mem128, 32, 64)), concatenateMInt( div_single(extractMInt( getParentValue(R2, RSMap), 192, 224), extractMInt( Mem128, 64, 96)), div_single(extractMInt( getParentValue(R2, RSMap), 224, 256), extractMInt( Mem128, 96, 128))))))
      )
    </regstate>




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


// idivl-m32

  context execinstr(idivl:Opcode HOLE:Mem,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (idivl:Opcode memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      loadFromMemory( MemOff, 32) ~>
      execinstr (idivl memOffset( MemOff),  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem32:MInt):MemLoadValue ~> execinstr (idivl:Opcode memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      .
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
"RAX" |-> concatenateMInt( mi(32, 0), idiv_quotient_int32(concatenateMInt( extractMInt( getParentValue(%rdx, RSMap), 32, 64), extractMInt( getParentValue(%rax, RSMap), 32, 64)), Mem32))

"RDX" |-> concatenateMInt( mi(32, 0), idiv_remainder_int32(concatenateMInt( extractMInt( getParentValue(%rdx, RSMap), 32, 64), extractMInt( getParentValue(%rax, RSMap), 32, 64)), Mem32))

"CF" |-> (undefMInt)

"PF" |-> (undefMInt)

"AF" |-> (undefMInt)

"ZF" |-> (undefMInt)

"SF" |-> (undefMInt)

"OF" |-> (undefMInt)
      )
    </regstate>


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


// orq-r64-m64

  context execinstr(orq:Opcode HOLE:Mem, R2:R64,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (orq:Opcode memOffset( MemOff:MInt):MemOffset, R2:R64,  .Operands) =>
      loadFromMemory( MemOff, 64) ~>
      execinstr (orq memOffset( MemOff), R2,  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem64:MInt):MemLoadValue ~> execinstr (orq:Opcode memOffset( MemOff:MInt):MemOffset, R2:R64,  .Operands) =>
      .
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> orMInt( getParentValue(R2, RSMap), Mem64)

"CF" |-> mi(1, 0)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( orMInt( extractMInt( getParentValue(R2, RSMap), 63, 64), extractMInt( Mem64, 63, 64)), mi(1, 1)) xorBool eqMInt( orMInt( extractMInt( getParentValue(R2, RSMap), 62, 63), extractMInt( Mem64, 62, 63)), mi(1, 1))) xorBool eqMInt( orMInt( extractMInt( getParentValue(R2, RSMap), 61, 62), extractMInt( Mem64, 61, 62)), mi(1, 1))) xorBool eqMInt( orMInt( extractMInt( getParentValue(R2, RSMap), 60, 61), extractMInt( Mem64, 60, 61)), mi(1, 1))) xorBool eqMInt( orMInt( extractMInt( getParentValue(R2, RSMap), 59, 60), extractMInt( Mem64, 59, 60)), mi(1, 1))) xorBool eqMInt( orMInt( extractMInt( getParentValue(R2, RSMap), 58, 59), extractMInt( Mem64, 58, 59)), mi(1, 1))) xorBool eqMInt( orMInt( extractMInt( getParentValue(R2, RSMap), 57, 58), extractMInt( Mem64, 57, 58)), mi(1, 1))) xorBool eqMInt( orMInt( extractMInt( getParentValue(R2, RSMap), 56, 57), extractMInt( Mem64, 56, 57)), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> (undefMInt)

"ZF" |-> (#ifMInt eqMInt( orMInt( getParentValue(R2, RSMap), Mem64), mi(64, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> orMInt( extractMInt( getParentValue(R2, RSMap), 0, 1), extractMInt( Mem64, 0, 1))

"OF" |-> mi(1, 0)
      )
    </regstate>


// leal-r32-m16

  context execinstr(leal:Opcode HOLE:Mem, R2:R32,  .Operands) [result(MemOffset)]
  
  rule <k>
     execinstr (leal:Opcode memOffset( MemOff:MInt):MemOffset, R2:R32,  .Operands) =>
      .
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( mi(32, 0), extractMInt( MemOff, 32, 64))
      )
    </regstate>


// addb-rh-rh

  rule <k>
    execinstr (addb R1:Rh, R2:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 48), extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 48, 56)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 1, 9)), extractMInt( getParentValue(R2, RSMap), 56, 64))

"CF" |-> extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 48, 56)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 0, 1)

"PF" |-> (#ifMInt (notBool (((((((eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 48, 56)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 8, 9), mi(1, 1)) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 48, 56)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 7, 8), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 48, 56)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 6, 7), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 48, 56)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 5, 6), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 48, 56)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 4, 5), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 48, 56)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 3, 4), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 48, 56)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 2, 3), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 48, 56)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 1, 2), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> xorMInt( xorMInt( extractMInt( getParentValue(R1, RSMap), 51, 52), extractMInt( getParentValue(R2, RSMap), 51, 52)), extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 48, 56)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 4, 5))

"ZF" |-> (#ifMInt eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 48, 56)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 1, 9), mi(8, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 48, 56)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 1, 2)

"OF" |-> (#ifMInt ((eqMInt( extractMInt( getParentValue(R1, RSMap), 48, 49), mi(1, 1)) ==Bool eqMInt( extractMInt( getParentValue(R2, RSMap), 48, 49), mi(1, 1))) andBool (notBool (eqMInt( extractMInt( getParentValue(R1, RSMap), 48, 49), mi(1, 1)) ==Bool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 48, 56)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 56))), 1, 2), mi(1, 1))))) #then mi(1, 1) #else mi(1, 0) #fi)
)

    </regstate>
    


// addb-rh-rh-semantics

endmodule
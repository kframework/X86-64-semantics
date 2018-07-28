requires "x86-configuration.k"
requires "x86-flag-checks-syntax.k"

module X86-INSTRUCTIONS-SEMANTICS
  imports X86-CONFIGURATION
  imports X86-FLAG-CHECKS-SYNTAX

// bsfq-r64-r64

  context execinstr(bsfq:Opcode HOLE:Mem,  R2:R64, .Operands) [result(MemOffset)]

  rule <k>
    execinstr (bsfq memOffset( MemOff:MInt):MemOffset, R2:R64,  .Operands) =>
      loadFromMemory( MemOff, 64) ~>
      execinstr (bsfq memOffset( MemOff), R2,  .Operands)  
  ...</k>

  rule <k>
    memLoadValue(Mem64:MInt):MemLoadValue ~> 
      execinstr (bsfq memOffset( MemOff:MInt):MemOffset, R2:R64,  .Operands) => .
  ...</k>
   <regstate>
RSMap:Map => updateMap(RSMap,
  convToRegKeys(R2) |-> (undefMInt)
  "ZF" |-> mi(1,1)
  "SF" |-> (undefMInt)
  "CF" |-> (undefMInt)
  "OF" |-> (undefMInt)
  "PF" |-> (undefMInt)
  "AF" |-> (undefMInt)
  )
   </regstate>
    requires eqMInt(Mem64, mi(64, 0))


  rule <k>
    memLoadValue(Mem64:MInt):MemLoadValue ~> 
      execinstr (bsfq memOffset( MemOff:MInt):MemOffset, R2:R64,  .Operands) => .
  ...</k>
   <regstate>
RSMap:Map => updateMap(RSMap,
  convToRegKeys(R2) |-> mi(64, scanForward(Mem64, 63, 64))
  "ZF" |-> mi(1,0)
  "SF" |-> (undefMInt)
  "CF" |-> (undefMInt)
  "OF" |-> (undefMInt)
  "PF" |-> (undefMInt)
  "AF" |-> (undefMInt)
  )
   </regstate>
    requires notBool eqMInt(Mem64, mi(64, 0))

    


// bsfl-r32-r32

  context execinstr(bsfl:Opcode HOLE:Mem,  R2:R32, .Operands) [result(MemOffset)]

  rule <k>
    execinstr (bsfl memOffset( MemOff:MInt):MemOffset, R2:R32,  .Operands) =>
      loadFromMemory( MemOff, 32) ~>
      execinstr (bsfl memOffset( MemOff), R2,  .Operands)  
  ...</k>

  rule <k>
    memLoadValue(Mem32:MInt):MemLoadValue ~> 
      execinstr (bsfl memOffset( MemOff:MInt):MemOffset, R2:R32,  .Operands) => .
  ...</k>
   <regstate>
RSMap:Map => updateMap(RSMap,
  convToRegKeys(R2) |-> (undefMInt)
  "ZF" |-> mi(1,1)
  "SF" |-> (undefMInt)
  "CF" |-> (undefMInt)
  "OF" |-> (undefMInt)
  "PF" |-> (undefMInt)
  "AF" |-> (undefMInt)
  )
   </regstate>
    requires eqMInt(Mem32, mi(32, 0))


  rule <k>
    memLoadValue(Mem32:MInt):MemLoadValue ~> 
      execinstr (bsfl memOffset( MemOff:MInt):MemOffset, R2:R32,  .Operands) => .
  ...</k>
   <regstate>
RSMap:Map => updateMap(RSMap,
  convToRegKeys(R2) |-> mi(32, scanForward(Mem32, 31, 32))
  "ZF" |-> mi(1,0)
  "SF" |-> (undefMInt)
  "CF" |-> (undefMInt)
  "OF" |-> (undefMInt)
  "PF" |-> (undefMInt)
  "AF" |-> (undefMInt)
  )
   </regstate>
    requires notBool eqMInt(Mem32, mi(32, 0))

    


// nop

  rule <k>
    execinstr (nop  .Operands) => .
  ...</k>


// nop-semantics



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


// bsfw-r16-r16

  context execinstr(bsfw:Opcode HOLE:Mem,  R2:R16, .Operands) [result(MemOffset)]

  rule <k>
    execinstr (bsfw memOffset( MemOff:MInt):MemOffset, R2:R16,  .Operands) =>
      loadFromMemory( MemOff, 16) ~>
      execinstr (bsfw memOffset( MemOff), R2,  .Operands)  
  ...</k>

  rule <k>
    memLoadValue(Mem16:MInt):MemLoadValue ~> 
      execinstr (bsfw memOffset( MemOff:MInt):MemOffset, R2:R16,  .Operands) => .
  ...</k>
   <regstate>
RSMap:Map => updateMap(RSMap,
  convToRegKeys(R2) |-> (undefMInt)
  "ZF" |-> mi(1,1)
  "SF" |-> (undefMInt)
  "CF" |-> (undefMInt)
  "OF" |-> (undefMInt)
  "PF" |-> (undefMInt)
  "AF" |-> (undefMInt)
  )
   </regstate>
    requires eqMInt(Mem16, mi(16, 0))


  rule <k>
    memLoadValue(Mem16:MInt):MemLoadValue ~> 
      execinstr (bsfw memOffset( MemOff:MInt):MemOffset, R2:R16,  .Operands) => .
  ...</k>
   <regstate>
RSMap:Map => updateMap(RSMap,
  convToRegKeys(R2) |-> mi(16, scanForward(Mem16, 15, 16))
  "ZF" |-> mi(1,0)
  "SF" |-> (undefMInt)
  "CF" |-> (undefMInt)
  "OF" |-> (undefMInt)
  "PF" |-> (undefMInt)
  "AF" |-> (undefMInt)
  )
   </regstate>
    requires notBool eqMInt(Mem16, mi(16, 0))

    

endmodule
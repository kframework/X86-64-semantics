requires "x86-configuration.k"

/*@
  Pop (R): 
  1. RSP = RSP + 8
  2. ValTostore = *(RSP - 8)
  3. *R =  ValTostore
*/  
module POPQ-M64
  imports X86-CONFIGURATION


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
endmodule

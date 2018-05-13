requires "x86-configuration.k"

/*@
  Pop (R): 
  1. RSP = RSP + 2
  2. ValTostore = *(RSP - 2)
  3. *R =  ValTostore
*/  
module POPQ-M64
  imports X86-CONFIGURATION


  rule <k> 
    execinstr (popw M16:Mem, .Operands) =>
      incRSPInBytes(2) ~> 
      loadFromMemory(getRegisterValue(%rsp, RSMap), 16) ~>
      execinstr (popw M16, .Operands)
  ...</k>
  <regstate> RSMap </regstate>

  rule <k> 
    memLoadValue(MemVal:MInt):MemLoadValue ~> execinstr (popw M16:Mem, .Operands) =>
      evaluateMemOffset(M16) ~> execinstr (popw M16:Mem, MemVal, .Operands)                          
  ...</k>

  rule <k> 
    evaluateMemOffset( memOffset(MemOff:MInt):MemOffset ) ~> execinstr (popw _:Mem, MemVal:MInt, .Operands) => storeToMemory(MemVal, MemOff, 16) 
  ...</k>


endmodule

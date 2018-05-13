requires "x86-configuration.k"


/*@
  Push (R): 
  1. ValTostore = (R)
  2. *(RSP-8)  = ValTostore
  3. RSP = RSP - 2
*/  
module PUSHW-M16
  imports X86-CONFIGURATION

  context execinstr(pushw:Opcode (HOLE:Mem, .Operands):Operands) [result(MemOffset)]
  rule <k> 
    execinstr (pushw memOffset ( MemOff:MInt ):MemOffset, .Operands) =>
      loadFromMemory(MemOff, 16) ~> execinstr (pushw memOffset ( MemOff ), .Operands)
  ...</k>


  rule <k> 
    memLoadValue(MemVal:MInt):MemLoadValue ~> execinstr (pushw memOffset ( MemOff:MInt ):MemOffset, .Operands)
  =>
      storeToMemory(MemVal, 
          subMInt(getRegisterValue(%rsp, RSMap), mi(64, 2)), 
          16)  ~>  
      decRSPInBytes(2)
  ...</k>
  <regstate> RSMap </regstate>
endmodule

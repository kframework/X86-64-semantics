requires "x86-configuration.k"


/*@
  Push (R): 
  1. ValTostore = *(R)
  2. *(RSP-8)  = ValTostore
  3. RSP = RSP - 8
*/  
module PUSHQ-M64
  imports X86-CONFIGURATION

  context execinstr(pushq:Opcode (HOLE:Mem, .Operands):Operands) [result(MemOffset)]
  rule <k> 
    execinstr (pushq memOffset ( MemOff:MInt ):MemOffset, .Operands) =>
      loadFromMemory(MemOff, 64) ~> execinstr (pushq memOffset ( MemOff ), .Operands)
  ...</k>


  rule <k> 
    memLoadValue(MemVal:MInt):MemLoadValue ~> execinstr (pushq memOffset ( MemOff:MInt ):MemOffset, .Operands)
  =>
      storeToMemory(MemVal, 
          subMInt(getRegisterValue(%rsp, RSMap), mi(64, 8)), 
          64)  ~>  
      decRSPInBytes(8)
  ...</k>
  <regstate> RSMap </regstate>
endmodule

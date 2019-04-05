requires "x86-configuration.k"


/*@
  Push R: 
  1. ValTostore = R
  2. *(RSP-8)  = ValTostore
  3. RSP = RSP - 8
*/  
module PUSHQ-IMM8
  imports X86-CONFIGURATION

  rule <k> 
    execinstr (pushq Imm8:MInt, .Operands) =>
      storeToMemory(
          signExtend(Imm8, 64),
          subMInt(getRegisterValue(%rsp, RSMap), mi(64, 8)), 
          64)  ~>  
      decRSPInBytes(8)
  ...</k>
  <regstate> RSMap </regstate>
      requires bitwidthMInt(Imm8) ==Int 8
endmodule

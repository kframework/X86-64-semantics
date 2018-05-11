requires "x86-configuration.k"

module PUSHQ-R64
  imports X86-CONFIGURATION

  rule <k> 
    execinstr (pushq R1:R64, .Operands) =>
      decRSPInBytes(8) ~> 
      storeToMemory(
          getRegisterValue(R1, RSMap), 
          subMInt(getRegisterValue(%rsp, RSMap), mi(64, 8)), 
          64)    
  ...</k>
  <regstate> RSMap </regstate>
endmodule

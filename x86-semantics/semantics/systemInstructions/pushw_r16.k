requires "x86-configuration.k"

module PUSHW-R16
  imports X86-CONFIGURATION

  rule <k> 
    execinstr (pushw R1:R16, .Operands) =>
      decRSPInBytes(2) ~> 
      storeToMemory(
          getRegisterValue(R1, RSMap), 
          getRegisterValue(%rsp, RSMap), 
          16)    
  ...</k>
  <regstate> RSMap </regstate>
endmodule

requires "x86-configuration.k"

module PUSHW-R16
  imports X86-CONFIGURATION

  rule <k> 
    execinstr (pushw R1:R16, .Operands) =>
      storeToMemory(
          getRegisterValue(R1, RSMap), 
          subMInt(getRegisterValue(%rsp, RSMap), mi(64, 2)),
          16) ~>    
      decRSPInBytes(2)
  ...</k>
  <regstate> RSMap </regstate>
endmodule

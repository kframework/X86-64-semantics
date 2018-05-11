requires "x86-configuration.k"

module PUSHQ-R64
  imports X86-CONFIGURATION

  rule <k> 
    execinstr (pushq R1:R64, .Typedoperands) =>
      decRSPInBytes(8) ~> 
      storeToMemory(
          getRegisterValue(R1, RSMap), 
          getRegisterValue(%rsp, RSMap), 
          64)    
  ...</k>
  <regstate> RSMap </regstate>
endmodule

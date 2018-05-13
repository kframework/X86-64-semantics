requires "x86-configuration.k"

module POPQ-R64
  imports X86-CONFIGURATION

  rule <k> 
    execinstr (popq R1:R64, .Operands) =>
      setRegisterValue(
          loadFromMemory(getRegisterValue(%rsp, RSMap), 64), 
          R1) 
      ~> incRSPInBytes(8)
  ...</k>
  <regstate> RSMap </regstate>
endmodule

requires "x86-configuration.k"

module MOVQ-M64-R64
  imports X86-CONFIGURATION

  rule <k> 
    execinstr (movq R1:R64,  MemOff:MInt, .Operands) => storeToMemory(getRegisterValue(R1, RSMap), MemOff, 64)
  ...</k>
  <regstate> RSMap </regstate>
endmodule

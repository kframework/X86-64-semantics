requires "x86-configuration.k"

module MOVL-M32-R32
  imports X86-CONFIGURATION

  rule <k> 
    execinstr (movl R1:R32,  memoffset( MemOff:MInt ):MemOffset, .Operands) => storeToMemory(getRegisterValue(R1, RSMap), MemOff, 32)
  ...</k>
  <regstate> RSMap </regstate>
endmodule

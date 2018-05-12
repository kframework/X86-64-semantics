requires "x86-configuration.k"

module MOVB-R8-M8
  imports X86-CONFIGURATION

  rule <k> 
    execinstr (movb MemOff:MInt,  R2:R8, .Operands) => setRegisterValue( loadFromMemory( MemOff, 8), R2)                         
  ...</k>
  <regstate> RSMap </regstate>
endmodule

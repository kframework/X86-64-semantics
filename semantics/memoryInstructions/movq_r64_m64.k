requires "x86-configuration.k"

module MOVQ-R64-M64
  imports X86-CONFIGURATION

  rule <k> 
    execinstr (movq memoffset( MemOff:MInt ):MemOffset,  R2:R64, .Operands) => setRegisterValue( loadFromMemory( MemOff, 64), R2)                         
  ...</k>
  <regstate> RSMap </regstate>
endmodule

requires "x86-configuration.k"

module MOVB-R8-M8
  imports X86-CONFIGURATION

  context execinstr(movb:Opcode (HOLE:Mem, _:R8, .Operands):Operands)
  rule <k> 
    execinstr (movb memoffset( MemOff:MInt):MemOffset ,  R2:R8, .Operands) => setRegisterValue( loadFromMemory( MemOff, 8), R2)                         
  ...</k>
  <regstate> RSMap </regstate>
endmodule

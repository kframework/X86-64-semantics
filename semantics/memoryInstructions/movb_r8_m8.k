requires "x86-configuration.k"

module MOVB-R8-M8
  imports X86-CONFIGURATION

  context execinstr(movb:Opcode (HOLE:Mem, _:R8, .Operands):Operands) [result(MemOffset)]
  rule <k> 
    execinstr (movb memOffset( MemOff:MInt):MemOffset ,  R1:R8, .Operands) => 
      setRegisterValue( loadFromMemory( MemOff, 8), R1)                         
  ...</k>
  <regstate> RSMap </regstate>
endmodule

requires "x86-configuration.k"

module MOVQ-R64-M64
  imports X86-CONFIGURATION

  context execinstr(movq:Opcode (HOLE:Mem, _:R64, .Operands):Operands) [result(MemOffset)]

  rule <k> 
    execinstr (movq memoffset( MemOff:MInt ):MemOffset,  R2:R64, .Operands) => 
      loadFromMemory(MemOff, 64)  ~> execinstr (movq memoffset( MemOff ),  R2, .Operands)
  ...</k>

  rule <k> 
   memLoadValue (MemVal:MInt) ~> execinstr (movq memoffset ( MemOff:MInt ):MemOffset,  R2:R64, .Operands) => setRegisterValue( MemVal, R2)                         
  ...</k>
  <regstate> RSMap </regstate>
endmodule

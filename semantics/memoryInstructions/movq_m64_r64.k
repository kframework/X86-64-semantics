requires "x86-configuration.k"

module MOVQ-M64-R64
  imports X86-CONFIGURATION

  context execinstr(movq:Opcode (_:R64, HOLE:Mem, .Operands):Operands) [result(MemOffset)]
  rule <k> 
    execinstr (movq R1:R64,  memOffset( MemOff:MInt ):MemOffset, .Operands) => 
      storeToMemory(getRegisterValue(R1, RSMap), MemOff, 64)
  ...</k>
  <regstate> RSMap </regstate>
endmodule

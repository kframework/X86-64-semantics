requires "x86-configuration.k"


module JMPQ-M64
  imports X86-CONFIGURATION

  context execinstr(jmpq:Opcode (HOLE:Mem, .Operands):Operands) [result(MemOffset)]

  rule <k> 
    execinstr (jmpq memOffset(MemOff:MInt):MemOffset, .Operands) => 
      loadFromMemory(MemOff, 64) ~> execinstr (jmpq memOffset ( MemOff ), .Operands)
  ...</k>

  rule <k> 
    memLoadValue(MemVal:MInt):MemLoadValue ~> execinstr (jmpq memOffset(MemOff:MInt):MemOffset, .Operands) => .
  ...</k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> MemVal))</regstate>
endmodule

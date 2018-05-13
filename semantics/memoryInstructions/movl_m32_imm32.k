requires "x86-configuration.k"

module MOVL-M32-IMM32
  imports X86-CONFIGURATION

  context execinstr(movl:Opcode (_:Imm, HOLE:Mem, .Operands):Operands) [result(MemOffset)]
  rule <k> 
    execinstr(movl IMM:Imm , memOffset( MemOff ):MemOffset , .Operands) => storeToMemory(handleImmediateWithSignExtend(IMM, 32, 32), MemOff,   32)
  ...</k>
  <regstate> RSMap </regstate>
endmodule

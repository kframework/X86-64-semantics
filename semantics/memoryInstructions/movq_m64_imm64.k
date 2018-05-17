requires "x86-configuration.k"

module MOVQ-M64-IMM64
  imports X86-CONFIGURATION

  context execinstr(movq:Opcode (_:Imm, HOLE:Mem, .Operands):Operands) [result(MemOffset)]

  rule <k> 
    execinstr(movq I1_64:Imm, memOffset( MemOff:MInt ):MemOffset, .Operands) =>
      storeToMemory(handleImmediateWithSignExtend(I1_64, 64, 64 ), MemOff, 64)
  ...</k>
  
endmodule

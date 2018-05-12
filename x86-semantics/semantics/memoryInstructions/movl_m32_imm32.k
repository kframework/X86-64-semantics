requires "x86-configuration.k"

module MOVL-M32-IMM32
  imports X86-CONFIGURATION

  rule <k> 
    execinstr(movl IMM:Imm , MemOff , .Operands) => storeToMemory(handleImmediateWithSignExtend(IMM, 32, 32), MemOff,   32)
  ...</k>
  <regstate> RSMap </regstate>
endmodule

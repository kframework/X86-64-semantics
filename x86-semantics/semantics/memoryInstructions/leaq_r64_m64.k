requires "x86-configuration.k"

module LEAQ-R64-M64
  imports X86-CONFIGURATION

  context execinstr(leaq:Opcode (HOLE:Mem, _:R64, .Operands):Operands) [result(MemOffset)]

  rule <k> 
    execinstr (leaq memOffset( MemOff:MInt ):MemOffset,  R2:R64, .Operands) => setRegisterValue( MemOff, R2)
  ...</k>
endmodule

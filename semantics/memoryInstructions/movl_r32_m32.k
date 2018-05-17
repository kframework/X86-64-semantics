requires "x86-configuration.k"

module MOVL-R32-M32
  imports X86-CONFIGURATION

  context execinstr(movl:Opcode ( HOLE:Mem, _:R32, .Operands):Operands) [result(MemOffset)]
  rule <k>
    execinstr (movl memOffset( MemOff:MInt):MemOffset, R1:R32, .Operands) => 
      setRegisterValue( loadFromMemory( MemOff, 32), R1)                                   
  ...</k>
    <regstate> RSMap:Map </regstate>
endmodule

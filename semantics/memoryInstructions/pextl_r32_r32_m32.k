requires "x86-configuration.k"

module PEXTL-R32-R32-M32
  imports X86-CONFIGURATION


  context execinstr(pextl:Opcode (HOLE:Mem, R2:R32, R3:R32, .Operands):Operands) [result(MemOffset)]


  rule <k> 
  execinstr (pextl memOffset( MemOff:MInt):MemOffset, R2:R32, R3:R32,
      .Operands) => 
    loadFromMemory( MemOff, 32) ~> 
    execinstr (pextl memOffset( MemOff), R2, R3, .Operands) 
  ...</k>


  rule <k> 
  memLoadValue(MemVal:MInt):MemLoadValue ~> 
    execinstr (pextl memOffset( MemOff), R2, R3, .Operands) =>
      setRegisterValue(mi(32, 0), R3) ~> 
      parallelBitExtract32(MemVal, R2, R3, 0, 0)
  ...</k>
    <regstate> RSMap:Map </regstate>
endmodule

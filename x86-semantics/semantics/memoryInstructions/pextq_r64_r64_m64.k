requires "x86-configuration.k"

module PEXTQ-R64-R64-M64
  imports X86-CONFIGURATION


  context execinstr(pextq:Opcode (HOLE:Mem, R2:R64, R3:R64, .Operands):Operands) [result(MemOffset)]


  rule <k> 
  execinstr (pextq memOffset( MemOff:MInt):MemOffset, R2:R64, R3:R64,
      .Operands) => 
    loadFromMemory( MemOff, 64) ~> 
    execinstr (pextq memOffset( MemOff), R2, R3, .Operands) 
  ...</k>


  rule <k> 
  memLoadValue(MemVal:MInt):MemLoadValue ~> 
    execinstr (pextq memOffset( MemOff), R2, R3, .Operands) =>
      setRegisterValue(mi(64, 0), R3) ~> 
      parallelBitExtract64(MemVal, R2, R3, 0, 0)
  ...</k>
    <regstate> RSMap:Map </regstate>
endmodule

requires "x86-configuration.k"

module PDEPL-R32-R32-M32
  imports X86-CONFIGURATION


  context execinstr(pdepl:Opcode (HOLE:Mem, R2:R32, R3:R32, .Operands):Operands) [result(MemOffset)]


  rule <k> 
  execinstr (pdepl memOffset( MemOff:MInt):MemOffset, R2:R32, R3:R32,
      .Operands) => 
    loadFromMemory( MemOff, 32) ~> 
    execinstr (pdepl memOffset( MemOff), R2, R3, .Operands) 
  ...</k>


  rule <k> 
  memLoadValue(MemVal:MInt):MemLoadValue ~> 
    execinstr (pdepl memOffset( MemOff), R2, R3, .Operands) =>
      setRegisterValue(mi(32, 0), R3) ~> 
      parallelBitDeposit32(MemVal, R2, R3, 0, 0)
  ...</k>
    <regstate> RSMap:Map </regstate>
endmodule

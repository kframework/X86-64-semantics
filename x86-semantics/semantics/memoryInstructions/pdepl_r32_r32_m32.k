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
      parallelBitDeposit(MemVal, R2, R3, 0, 0)
  ...</k>
    <regstate> RSMap:Map </regstate>

  syntax KItem ::= parallelBitDeposit(MInt, Register, Register, Int, Int)

  // Base Condition
  rule <k>
    parallelBitDeposit(Mask:MInt, TempR:Register, DestR:Register, 31:Int, K:Int) => 
      setRegisterBitsAtPositon(getRegisterBitsAtPositon(TempR, 1, K, RSMap),
          DestR, 31)
  ...</k>  
    <regstate> RSMap:Map </regstate>
      requires eqMInt( extractMInt(Mask, 0, 1), mi(1, 1))

  rule <k>
    parallelBitDeposit(Mask:MInt, TempR:Register, DestR:Register, 31:Int, K:Int) => 
    .
  ...</k>  
    requires eqMInt( extractMInt(Mask, 0, 1), mi(1, 0))

  // General Condition
  rule <k>
    parallelBitDeposit(Mask:MInt, TempR:Register, DestR:Register, M:Int, K:Int) => 
      setRegisterBitsAtPositon(getRegisterBitsAtPositon(TempR, 1, K, RSMap), DestR, M)
  ~>  parallelBitDeposit(Mask, TempR, DestR, M +Int 1, K +Int 1)
  ...</k>  
    <regstate> RSMap:Map </regstate>
      requires eqMInt( extractMInt(Mask, 31 -Int M, 32 -Int M), mi(1, 1))
      
  rule <k>
    parallelBitDeposit(Mask:MInt, TempR:Register, DestR:Register, M:Int, K:Int) => 
        parallelBitDeposit(Mask, TempR, DestR, M +Int 1, K)
  ...</k>  
    requires eqMInt( extractMInt(Mask, 31 -Int M, 32 -Int M), mi(1, 0))
  
 

endmodule

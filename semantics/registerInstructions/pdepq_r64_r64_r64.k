requires "x86-configuration.k"

/*
TEMP ← SRC1;
MASK ← SRC2;
DEST ← 0 ;
m← 0, k← 0;
DO WHILE m< OperandSize
    IF MASK[ m] = 1 THEN
        DEST[ m] ← TEMP[ k];
        k ← k+ 1;
    FI
    m ← m+ 1;
OD
*/

module PDEPQ-R64-R64-R64
  imports X86-CONFIGURATION

  rule <k>
    execinstr (pdepq R1:R64, R2:R64, R3:R64, .Operands) => 
      setRegisterValue(mi(64, 0), R3) ~> parallelBitDeposit(getRegisterValue(R1,
            RSMap), R2, R3, 0, 0)
  ...</k>
    <regstate> RSMap:Map </regstate>


  syntax KItem ::= parallelBitDeposit(MInt, Register, Register, Int, Int)

  // Base Condition
  rule <k>
    parallelBitDeposit(Mask:MInt, TempR:Register, DestR:Register, 63:Int, K:Int) => 
      setRegisterBitsAtPositon(getRegisterBitsAtPositon(TempR, 1, K, RSMap),
          DestR, 63)
  ...</k>  
    <regstate> RSMap:Map </regstate>
      requires eqMInt( extractMInt(Mask, 0, 1), mi(1, 1))

  rule <k>
    parallelBitDeposit(Mask:MInt, TempR:Register, DestR:Register, 63:Int, K:Int) => 
    .
  ...</k>  
    requires eqMInt( extractMInt(Mask, 0, 1), mi(1, 0))

  // General Condition
  rule <k>
    parallelBitDeposit(Mask:MInt, TempR:Register, DestR:Register, M:Int, K:Int) => 
      setRegisterBitsAtPositon(getRegisterBitsAtPositon(TempR, 1, K, RSMap), DestR, M)
  ~>  parallelBitDeposit(Mask, TempR, DestR, M +Int 1, K +Int  1)
  ...</k>  
    <regstate> RSMap:Map </regstate>
      requires eqMInt( extractMInt(Mask, 63 -Int M, 64 -Int M), mi(1, 1))
      
  rule <k>
    parallelBitDeposit(Mask:MInt, TempR:Register, DestR:Register, M:Int, K:Int) => 
        parallelBitDeposit(Mask, TempR, DestR, M +Int 1, K)
  ...</k>  
    requires eqMInt( extractMInt(Mask, 63 -Int M, 64 -Int M), mi(1, 0))


endmodule

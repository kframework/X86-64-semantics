requires "x86-configuration.k"

/*
TEMP ← SRC1;
MASK ← SRC2;
DEST ← 0 ;
m← 0, k← 0;
DO WHILE m< OperandSize
    IF MASK[ m] = 1 THEN
        DEST[ k] ← TEMP[ m];
        k ← k+ 1;
    FI
    m ← m+ 1;
OD
*/   

module PEXTQ-R64-R64-R64
  imports X86-CONFIGURATION

  rule <k>
    execinstr (pextq R1:R64, R2:R64, R3:R64, .Operands) => 
      setRegisterValue(mi(64, 0), R3) ~> parallelBitExtract(getRegisterValue(R1,
            RSMap), R2, R3, 0, 0)
  ...</k>
    <regstate> RSMap:Map </regstate>


  syntax KItem ::= parallelBitExtract(MInt, Register, Register, Int, Int)

  // Base Condition
  rule <k>
    parallelBitExtract(Mask:MInt, TempR:Register, DestR:Register, 63:Int, K:Int) => 
      setRegisterBitsAtPositon(getRegisterBitsAtPositon(TempR, 1, 63, RSMap), DestR, K)
  ...</k>  
    <regstate> RSMap:Map </regstate>
      requires eqMInt( extractMInt(Mask, 0, 1), mi(1, 1))

  rule <k>
    parallelBitExtract(Mask:MInt, TempR:Register, DestR:Register, 63:Int, K:Int) => 
    .
  ...</k>  
    requires eqMInt( extractMInt(Mask, 0, 1), mi(1, 0))

  // General Condition
  rule <k>
    parallelBitExtract(Mask:MInt, TempR:Register, DestR:Register, M:Int, K:Int) => 
      setRegisterBitsAtPositon(getRegisterBitsAtPositon(TempR, 1, M, RSMap), DestR, K)
  ~>  parallelBitExtract(Mask, TempR, DestR, M +Int 1, K +Int 1)
  ...</k>  
    <regstate> RSMap:Map </regstate>
      requires eqMInt( extractMInt(Mask, 63 -Int M, 64 -Int M), mi(1, 1))
      
  rule <k>
    parallelBitExtract(Mask:MInt, TempR:Register, DestR:Register, M:Int, K:Int) => 
        parallelBitExtract(Mask, TempR, DestR, M +Int 1, K)
  ...</k>  
    requires eqMInt( extractMInt(Mask, 63 -Int M, 64 -Int M), mi(1, 0))


endmodule

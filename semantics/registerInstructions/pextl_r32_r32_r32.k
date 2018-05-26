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

module PEXTL-R32-R32-R32
  imports X86-CONFIGURATION

  rule <k>
    execinstr (pextl R1:R32, R2:R32, R3:R32, .Operands) => 
      setRegisterValue(mi(32, 0), R3) ~> parallelBitExtract(getRgisterValue(R1,
            RSMap), getRgisterValue(R2, RSMap), R3, 0, 0)
  ...</k>
    <regstate> RSMap:Map </regstate>


  syntax KItem ::= parallelBitExtract(MInt, Register, Register, Int, Int)

  rule <k>
    parallelBitDeposit(Mask:MInt, TempR:Register, DestR:Register, M:Int, K:Int) => 
      setRegisterBitsAtPositon(getRegisterBitsAtPositon(TempR, 1, M), DestR, K)
  ~>  parallelBitDeposit(Mask, TempR, DestR, M+1, K+1)
  </k>  
    requires eqMInt( extractMInt(Mask, 31 - M, 32 - M), mi(1, 1))
      
  rule <k>
    parallelBitDeposit(Mask:MInt, TempR:Register, DestR:Register, M:Int, K:Int) => 
      setRegisterBitsAtPositon(getRegisterBitsAtPositon(TempR, 1, M), DestR, K)
  ~>  parallelBitDeposit(Mask, TempR, DestR, M+1, K)
  </k>  
    requires eqMInt( extractMInt(Mask, 31 - M, 32 - M), mi(1, 0))


endmodule

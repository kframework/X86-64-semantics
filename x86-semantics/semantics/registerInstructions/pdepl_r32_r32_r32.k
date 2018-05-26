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

module PDEPL-R32-R32-R32
  imports X86-CONFIGURATION

  rule <k>
    execinstr (pdepl R1:R32, R2:R32, R3:R32, .Operands) => 
      setRegisterValue(mi(32, 0), R3) ~> parallelBitDeposit(getRgisterValue(R1,
            RSMap), getRgisterValue(R2, RSMap), R3, 0, 0)
  ...</k>
    <regstate> RSMap:Map </regstate>


  syntax KItem ::= parallelBitDeposit(MInt, Register, Register, Int, Int)

  rule <k>
    parallelBitDeposit(Mask:MInt, TempR:Register, DestR:Register, M:Int, K:Int) => 
      setRegisterBitsAtPositon(getRegisterBitsAtPositon(TempR, 1, K), DestR, M)
  ~>  parallelBitDeposit(Mask, TempR, DestR, M+1, K+1)
  </k>  
    requires eqMInt( extractMInt(Mask, 31 - M, 32 - M), mi(1, 1))
      
  rule <k>
    parallelBitDeposit(Mask:MInt, TempR:Register, DestR:Register, M:Int, K:Int) => 
      setRegisterBitsAtPositon(getRegisterBitsAtPositon(TempR, 1, K), DestR, M)
  ~>  parallelBitDeposit(Mask, TempR, DestR, M+1, K)
  </k>  
    requires eqMInt( extractMInt(Mask, 31 - M, 32 - M), mi(1, 0))


endmodule

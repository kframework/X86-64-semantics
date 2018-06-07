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
      setRegisterValue(mi(64, 0), R3) ~> parallelBitExtract64(getRegisterValue(R1,
            RSMap), R2, R3, 0, 0)
  ...</k>
    <regstate> RSMap:Map </regstate>
endmodule

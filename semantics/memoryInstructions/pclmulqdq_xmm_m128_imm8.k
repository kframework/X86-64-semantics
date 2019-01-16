requires "x86-configuration.k"

/*

IF (Imm8[0] = 0 )
    THEN
        TEMP1←SRC1 [63:0];
    ELSE
        TEMP1←SRC1 [127:64];
FI
IF (Imm8[4] = 0 )
    THEN
        TEMP2←SRC2 [63:0];
    ELSE
        TEMP2←SRC2 [127:64];
FI
For i = 0 to 63 {
    TmpB [ i ]←(TEMP1[ 0 ] and TEMP2[ i ]);
    For j = 1 to i {
        TmpB [ i ]←TmpB [ i ] xor (TEMP1[ j ] and TEMP2[ i - j ])
    }
    DEST[ i ]←TmpB[ i ];
}
For i = 64 to 126 {
    TmpB [ i ]←0;
    For j = i - 63 to 63 {
        TmpB [ i ]←TmpB [ i ] xor (TEMP1[ j ] and TEMP2[ i - j ])
    }
    DEST[ i ]←TmpB[ i ];
}
DEST[127] ← 0;
DEST[MAXVL-1:128] (Unmodified)
*/

module PCLMULQDQ-XMM-M128-IMM8
  imports X86-CONFIGURATION

  context execinstr(pclmulqdq:Opcode (_:Imm,  HOLE:Mem, R3:Xmm, .Operands):Operands) [result(MemOffset)]

  rule <k>
    execinstr (pclmulqdq I:Imm, memOffset( MemOff:MInt):MemOffset,  R3:Xmm, .Operands) => 
      loadFromMemory( MemOff, 128) ~> execinstr (pclmulqdq I, memOffset( MemOff), R3:Xmm, .Operands)                 
  ...</k>

  

  /*
    IF (Imm8[0] = 0 )
        THEN
            TEMP1←SRC1 [63:0];
        ELSE
            TEMP1←SRC1 [127:64];
    FI
    IF (Imm8[4] = 0 )
        THEN
            TEMP2←SRC2 [63:0];
        ELSE
            TEMP2←SRC2 [127:64];
  */   
  rule <k>
    memLoadValue(MemVal:MInt):MemLoadValue ~>
    execinstr (pclmulqdq Imm8:Imm, memOffset( MemOff:MInt):MemOffset, R3:Xmm,  .Operands) => 
      execinstr(pclmulqdq 
          selectSlice(getRegisterValue(R3, RSMap), handleImmediateWithSignExtend(Imm8,
              8, 8), 7, 64, 0),
          selectSlice(MemVal, handleImmediateWithSignExtend(Imm8,
              8, 8), 3, 64, 0), R3
          , .Operands)
  ...</k>
    <regstate> RSMap </regstate>

  rule <k>
    execinstr (pclmulqdq TEMP1:MInt, TEMP2:MInt, R3:Xmm,   .Operands) => 
      setRegisterValue(
          orMInt(
            computePCLMULQDQ1(TEMP1, TEMP2, mi(128, 0), 0, 63), 
            computePCLMULQDQ2(TEMP1, TEMP2, mi(128, 0), 64, 126) 
            ), R3)
  ...</k>
  
endmodule

module PCLMULQDQ-XMM-XMM-IMM8-SEMANTICS
  imports PCLMULQDQ-XMM-XMM-IMM8
endmodule

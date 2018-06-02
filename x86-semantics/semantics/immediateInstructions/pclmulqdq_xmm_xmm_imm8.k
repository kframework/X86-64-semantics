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

module PCLMULQDQ-XMM-XMM-IMM8
  imports X86-CONFIGURATION

  rule <k>
    execinstr (pclmulqdq Imm8:Imm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    
endmodule

module PCLMULQDQ-XMM-XMM-IMM8-SEMANTICS
  imports PCLMULQDQ-XMM-XMM-IMM8
endmodule

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
    execinstr (pclmulqdq Imm8:Imm, R2:Xmm, R3:Xmm,  .Operands) => 
      execinstr(pclmulqdq 
          selectSlice(getRegisterValue(R3, RSMap), handleImmediateWithSignExtend(Imm8,
              8, 8), 7, 64, 0),
          selectSlice(getRegisterValue(R2, RSMap), handleImmediateWithSignExtend(Imm8,
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
  
  /*
    For i = 0 to 63 {
        TmpB [ i ]←(TEMP1[ 0 ] and TEMP2[ i ]);
        For j = 1 to i {
            TmpB [ i ]←TmpB [ i ] xor (TEMP1[ j ] and TEMP2[ i - j ])
        }
        DEST[ i ]←TmpB[ i ];
    }
  */   
  syntax MInt ::= computePCLMULQDQ1(MInt, MInt, MInt, Int, Int) [function]
  syntax MInt ::= computePCLMULQDQ1Refine(MInt, MInt, Int) [function]

  rule computePCLMULQDQ1(TEMP1:MInt, TEMP2:MInt, DEST:MInt, N:Int, N:Int) => DEST

  rule computePCLMULQDQ1(TEMP1:MInt, TEMP2:MInt, DEST:MInt, M:Int, N:Int) =>
    computePCLMULQDQ1( 
        TEMP1, TEMP2, plugInMask(DEST, computePCLMULQDQ1Refine(TEMP1, TEMP2, M), M), M +Int 1, N)

  rule computePCLMULQDQ1Refine(TEMP1:MInt, TEMP2:MInt, M:Int) =>
  refineHelper(TEMP1, TEMP2, 1, M, 
        andMInt( 
          extractMInt(TEMP1, 63, 64), extractMInt(TEMP2, 63 -Int M, 64 -Int M) 
          )
      )

  /*
     For i = 64 to 126 {
    TmpB [ i ]←0;
    For j = i - 63 to 63 {
        TmpB [ i ]←TmpB [ i ] xor (TEMP1[ j ] and TEMP2[ i - j ])
    }
    DEST[ i ]←TmpB[ i ];
  }
  */

  syntax MInt ::= computePCLMULQDQ2(MInt, MInt, MInt, Int, Int) [function]
  syntax MInt ::= computePCLMULQDQ2Refine(MInt, MInt, Int) [function]

  rule computePCLMULQDQ2(TEMP1:MInt, TEMP2:MInt, DEST:MInt, N:Int, N:Int) => DEST

  rule computePCLMULQDQ2(TEMP1:MInt, TEMP2:MInt, DEST:MInt, M:Int, N:Int) =>
    computePCLMULQDQ2( 
        TEMP1, TEMP2, plugInMask(DEST, computePCLMULQDQ2Refine(TEMP1, TEMP2, M), M), M +Int 1, N)

  rule computePCLMULQDQ2Refine(TEMP1:MInt, TEMP2:MInt, M:Int) =>
  refineHelper(TEMP1, TEMP2, M -Int 63, 63,  mi(1, 0))


  // Utils
  syntax MInt ::= refineHelper(MInt, MInt, Int, Int, MInt) [function]
  rule refineHelper(TEMP1:MInt, TEMP2:MInt, Q:Int, Q:Int,
      RES:MInt) => RES

  rule refineHelper(TEMP1:MInt, TEMP2:MInt, P:Int, Q:Int,
      RES:MInt) => 
    refineHelper(TEMP1, TEMP2, P +Int 1, Q, 
        xorMInt(RES, 
          andMInt(
            extractMInt(TEMP1, 63 -Int P,         64 -Int P),
            extractMInt(TEMP2, 63 -Int (P -Int Q), 64 -Int (P -Int Q))
            )))

  syntax MInt ::= selectSlice(MInt, MInt, Int, Int, Int) [function]

  rule selectSlice(SRC1:MInt, Imm8:MInt, CheckBit:Int, Start1:Int, Start2:Int)
  => extractMInt(SRC1, Start1, Start1 +Int 64)
    requires  eqMInt(mi(1, 0), extractMInt(Imm8, CheckBit, CheckBit +Int 1))
    
  rule selectSlice(SRC1:MInt, Imm8:MInt, CheckBit:Int, Start1:Int, Start2:Int)
  => extractMInt(SRC1, Start2, Start2 +Int 64)
    requires  eqMInt(mi(1, 1), extractMInt(Imm8, CheckBit, CheckBit +Int 1))
endmodule

module PCLMULQDQ-XMM-XMM-IMM8-SEMANTICS
  imports PCLMULQDQ-XMM-XMM-IMM8
endmodule

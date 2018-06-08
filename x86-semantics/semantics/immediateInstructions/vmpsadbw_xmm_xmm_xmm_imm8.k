requires "x86-configuration.k"

module VMPSADBW-XMM-XMM-XMM-IMM8
  imports X86-CONFIGURATION

  rule <k>
    execinstr (vmpsadbw Imm8:Imm, R2:Xmm, R3:Xmm, R4:Xmm,  .Operands) => 
      execinstr (vmpsadbw
        selectSliceMPSAD(getRegisterValue(R2, RSMap),
          extractMInt(handleImmediateWithSignExtend(Imm8, 8, 8), 6, 8), 7 , 0 ),
        selectSliceMPSAD(getRegisterValue(R2, RSMap),
          extractMInt(handleImmediateWithSignExtend(Imm8, 8, 8), 6, 8), 15, 8 ),
        selectSliceMPSAD(getRegisterValue(R2, RSMap),
          extractMInt(handleImmediateWithSignExtend(Imm8, 8, 8), 6, 8), 23, 16),
        selectSliceMPSAD(getRegisterValue(R2, RSMap),
          extractMInt(handleImmediateWithSignExtend(Imm8, 8, 8), 6, 8), 31, 24),

        selectSliceMPSAD(getRegisterValue(R3, RSMap),
          extractMInt(handleImmediateWithSignExtend(Imm8, 8, 8), 5, 6), 7 ,  0),
        selectSliceMPSAD(getRegisterValue(R3, RSMap),
          extractMInt(handleImmediateWithSignExtend(Imm8, 8, 8), 5, 6), 15,  8),
        selectSliceMPSAD(getRegisterValue(R3, RSMap),
          extractMInt(handleImmediateWithSignExtend(Imm8, 8, 8), 5, 6), 23, 16),
        selectSliceMPSAD(getRegisterValue(R3, RSMap),
          extractMInt(handleImmediateWithSignExtend(Imm8, 8, 8), 5, 6), 31, 24),
        selectSliceMPSAD(getRegisterValue(R3, RSMap),
          extractMInt(handleImmediateWithSignExtend(Imm8, 8, 8), 5, 6), 39, 32),
        selectSliceMPSAD(getRegisterValue(R3, RSMap),
          extractMInt(handleImmediateWithSignExtend(Imm8, 8, 8), 5, 6), 47, 40),
        selectSliceMPSAD(getRegisterValue(R3, RSMap),
          extractMInt(handleImmediateWithSignExtend(Imm8, 8, 8), 5, 6), 55, 48),
        selectSliceMPSAD(getRegisterValue(R3, RSMap),
          extractMInt(handleImmediateWithSignExtend(Imm8, 8, 8), 5, 6), 63, 56),
        selectSliceMPSAD(getRegisterValue(R3, RSMap),
          extractMInt(handleImmediateWithSignExtend(Imm8, 8, 8), 5, 6), 71, 64),
        selectSliceMPSAD(getRegisterValue(R3, RSMap),
          extractMInt(handleImmediateWithSignExtend(Imm8, 8, 8), 5, 6), 79, 72),
        selectSliceMPSAD(getRegisterValue(R3, RSMap),
          extractMInt(handleImmediateWithSignExtend(Imm8, 8, 8), 5, 6), 87, 80),
        R4:Xmm, 
        .Operands)
  ...</k>   
    <regstate> RSMap </regstate>

  rule <k> 
    execinstr (vmpsadbw 
        SrcByte0:MInt, SrcByte1:MInt, SrcByte2:MInt, SrcByte3:MInt,
        DestByte0:MInt, DestByte1:MInt, DestByte2:MInt, DestByte3:MInt,
        DestByte4:MInt, DestByte5:MInt, DestByte6:MInt, DestByte7:MInt,
        DestByte8:MInt, DestByte9:MInt, DestByte10:MInt,
        R4:Xmm,  .Operands) =>
  setParentValue(
  concatenateMInt(mi(128, 0),
    concatenateMInt(

      concatenateMInt(    
        concatenateMInt(
          addMInt(
            addMInt(
              absoluteUnsignedDifference(DestByte7, SrcByte0),
              absoluteUnsignedDifference(DestByte8, SrcByte1)),
            addMInt(
              absoluteUnsignedDifference(DestByte9, SrcByte2),
              absoluteUnsignedDifference(DestByte10, SrcByte3))
          ),
          addMInt(
            addMInt(
              absoluteUnsignedDifference(DestByte6, SrcByte0),
              absoluteUnsignedDifference(DestByte7, SrcByte1)),
            addMInt(
              absoluteUnsignedDifference(DestByte8, SrcByte2),
              absoluteUnsignedDifference(DestByte9, SrcByte3))
          )),
        concatenateMInt(
          addMInt(
            addMInt(
              absoluteUnsignedDifference(DestByte5, SrcByte0),
              absoluteUnsignedDifference(DestByte6, SrcByte1)),
            addMInt(
              absoluteUnsignedDifference(DestByte7, SrcByte2),
              absoluteUnsignedDifference(DestByte8, SrcByte3))
          ),
          addMInt(
            addMInt(
              absoluteUnsignedDifference(DestByte4, SrcByte0),
              absoluteUnsignedDifference(DestByte5, SrcByte1)),
            addMInt(
              absoluteUnsignedDifference(DestByte6, SrcByte2),
              absoluteUnsignedDifference(DestByte7, SrcByte3))
          ))
        ),
     
      concatenateMInt(
        concatenateMInt(
          addMInt(
            addMInt(
              absoluteUnsignedDifference(DestByte3, SrcByte0),
              absoluteUnsignedDifference(DestByte4, SrcByte1)),
            addMInt(
              absoluteUnsignedDifference(DestByte5, SrcByte2),
              absoluteUnsignedDifference(DestByte6, SrcByte3))
          ),
          addMInt(
            addMInt(
              absoluteUnsignedDifference(DestByte2, SrcByte0),
              absoluteUnsignedDifference(DestByte3, SrcByte1)),
            addMInt(
              absoluteUnsignedDifference(DestByte4, SrcByte2),
              absoluteUnsignedDifference(DestByte5, SrcByte3))
          )),
        concatenateMInt(
          addMInt(
            addMInt(
              absoluteUnsignedDifference(DestByte1, SrcByte0),
              absoluteUnsignedDifference(DestByte2, SrcByte1)),
            addMInt(
              absoluteUnsignedDifference(DestByte3, SrcByte2),
              absoluteUnsignedDifference(DestByte4, SrcByte3))
          ),
          addMInt(
            addMInt(
              absoluteUnsignedDifference(DestByte0, SrcByte0),
              absoluteUnsignedDifference(DestByte1, SrcByte1)),
            addMInt(
              absoluteUnsignedDifference(DestByte2, SrcByte2),
              absoluteUnsignedDifference(DestByte3, SrcByte3))
          ))
      ))) , R4)

  ...</k>
endmodule

module VMPSADBW-XMM-XMM-XMM-IMM8-SEMANTICS
  imports VMPSADBW-XMM-XMM-XMM-IMM8
endmodule

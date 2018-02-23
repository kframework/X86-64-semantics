module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%ymm1, "SPAD1") ~>
execinstr ( vaddps %xmm2, %xmm1, %xmm3 , .Typedoperands ) ~>
splitXmmToR32( %xmm3, %xmm4, %xmm5, %xmm6, %xmm7, 128 ) ~>
execinstr ( vsubps %xmm2, %xmm1, %xmm4 , .Typedoperands ) ~>
execinstr ( vunpckhpd %ymm4, %ymm4, %ymm6 , .Typedoperands ) ~>
splitXmmToR32( %xmm3, %xmm8, %xmm9, %xmm10, %xmm11, 128 ) ~>
execinstr ( vmovss %xmm11, %xmm10, %xmm7 , .Typedoperands ) ~>
combineR32ToXmm( %xmm4, %xmm5, %xmm6, %xmm7, %xmm1 ) ~>
restoreRegister("SPAD1", 128, 128, 0, 0,
          0, 128, %ymm1) ~>
execinstr ( nop .Typedoperands ) ~> inforegisters ~> fetch
 => exit_0
    </k>
    <entrypoint> zeroMIntW64 </entrypoint>
    <nextLoc> zeroMIntW64  </nextLoc>
    <memstate>
      <cmem> .Map </cmem>
      <dmem> .Map </dmem>
    </memstate>

    <regstate>
"RIP" |->    (mi(64, 0) => _)
"SPAD1" |->    (mi(256, 0) => _)
"YMM1" |-> (mi(256, ?I1:Int):MInt => _)
"YMM10" |-> (mi(256, 0):MInt => _)
"YMM11" |-> (mi(256, 0):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM3" |-> (mi(256, 0):MInt => _)
"YMM4" |-> (mi(256, 0):MInt => _)
"YMM5" |-> (mi(256, 0):MInt => _)
"YMM6" |-> (mi(256, 0):MInt => _)
"YMM7" |-> (mi(256, 0):MInt => _)
"YMM8" |-> (mi(256, 0):MInt => _)
"YMM9" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:addsubps_xmm_xmm
instr:addsubps %xmm2, %xmm1
maybe read:{ %xmm1 %xmm2 }
must read:{ %xmm1 %xmm2 }
maybe write:{ %xmm1 }
must write:{ %xmm1 }
maybe undef:{ }
must undef:{ }
required flags:{ pni }

circuit:vaddps %xmm2, %xmm1, %xmm3                      #  1     0     4      OPC=vaddps_xmm_xmm_xmm
circuit:callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7    #  2     0x4   5      OPC=callq_label
circuit:vsubps %xmm2, %xmm1, %xmm4                      #  3     0x9   4      OPC=vsubps_xmm_xmm_xmm
circuit:vunpckhpd %ymm4, %ymm4, %ymm6                   #  4     0xd   4      OPC=vunpckhpd_ymm_ymm_ymm
circuit:callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  5     0x11  5      OPC=callq_label
circuit:vmovss %xmm11, %xmm10, %xmm7                    #  6     0x16  5      OPC=vmovss_xmm_xmm_xmm
circuit:callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1    #  7     0x1b  5      OPC=callq_label
*/
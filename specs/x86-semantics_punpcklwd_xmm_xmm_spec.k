module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%ymm1, "SPAD1") ~>
execinstr ( pmovzxwd %xmm2, %xmm5 , .Typedoperands ) ~>
execinstr ( pmovzxwd %xmm1, %xmm1 , .Typedoperands ) ~>
execinstr ( vpbroadcastw %xmm5, %xmm0 , .Typedoperands ) ~>
execinstr ( vmovsldup %xmm5, %xmm14 , .Typedoperands ) ~>
splitXmmToR32( %xmm2, %xmm4, %xmm5, %xmm6, %xmm7, 128 ) ~>
execinstr ( vpbroadcastw %xmm5, %ymm3 , .Typedoperands ) ~>
execinstr ( vpunpckldq %xmm3, %xmm0, %xmm0 , .Typedoperands ) ~>
execinstr ( vpunpckldq %xmm2, %xmm0, %xmm13 , .Typedoperands ) ~>
execinstr ( vandnpd %ymm13, %ymm14, %ymm13 , .Typedoperands ) ~>
execinstr ( xorps %xmm13, %xmm1 , .Typedoperands ) ~>
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
"YMM0" |-> (mi(256, 0):MInt => _)
"YMM1" |-> (mi(256, ?I1:Int):MInt => _)
"YMM13" |-> (mi(256, 0):MInt => _)
"YMM14" |-> (mi(256, 0):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM3" |-> (mi(256, 0):MInt => _)
"YMM4" |-> (mi(256, 0):MInt => _)
"YMM5" |-> (mi(256, 0):MInt => _)
"YMM6" |-> (mi(256, 0):MInt => _)
"YMM7" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:punpcklwd_xmm_xmm
instr:punpcklwd %xmm2, %xmm1
maybe read:{ %xmm1 %xmm2 }
must read:{ %xmm1 %xmm2 }
maybe write:{ %xmm1 }
must write:{ %xmm1 }
maybe undef:{ }
must undef:{ }
required flags:{ sse2 }

circuit:pmovzxwd %xmm2, %xmm5                         #  1     0     5      OPC=pmovzxwd_xmm_xmm
circuit:pmovzxwd %xmm1, %xmm1                         #  2     0x5   5      OPC=pmovzxwd_xmm_xmm
circuit:vpbroadcastw %xmm5, %xmm0                     #  3     0xa   5      OPC=vpbroadcastw_xmm_xmm
circuit:vmovsldup %xmm5, %xmm14                       #  4     0xf   4      OPC=vmovsldup_xmm_xmm
circuit:callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  5     0x13  5      OPC=callq_label
circuit:vpbroadcastw %xmm5, %ymm3                     #  6     0x18  5      OPC=vpbroadcastw_ymm_xmm
circuit:vpunpckldq %xmm3, %xmm0, %xmm0                #  7     0x1d  4      OPC=vpunpckldq_xmm_xmm_xmm
circuit:vpunpckldq %xmm2, %xmm0, %xmm13               #  8     0x21  4      OPC=vpunpckldq_xmm_xmm_xmm
circuit:vandnpd %ymm13, %ymm14, %ymm13                #  9     0x25  5      OPC=vandnpd_ymm_ymm_ymm
circuit:xorps %xmm13, %xmm1                           #  10    0x2a  4      OPC=xorps_xmm_xmm
*/
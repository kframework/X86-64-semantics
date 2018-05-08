module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( unpckhpd %xmm3, %xmm2 , .Typedoperands ) ~>
splitXmmToR32( %xmm2, %xmm8, %xmm9, %xmm10, %xmm11, 128 ) ~>
execinstr ( vmovddup %xmm9, %xmm1 , .Typedoperands ) ~>
execinstr ( vmovq %xmm1, %xmm10 , .Typedoperands ) ~>
split2NToN(%xmm2,  %xmm8, %xmm9 , 64) ~>
combineR32ToXmm( %xmm8, %xmm9, %xmm10, %xmm11, %xmm1 ) ~>
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
"YMM1" |-> (mi(256, ?I1:Int):MInt => _)
"YMM10" |-> (mi(256, 0):MInt => _)
"YMM11" |-> (mi(256, 0):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM3" |-> (mi(256, ?I3:Int):MInt => _)
"YMM8" |-> (mi(256, 0):MInt => _)
"YMM9" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vunpckhps_xmm_xmm_xmm
instr:vunpckhps %xmm3, %xmm2, %xmm1
maybe read:{ %xmm2 %xmm3 }
must read:{ %xmm2 %xmm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx }

circuit:unpckhpd %xmm3, %xmm2                           #  1     0     4      OPC=unpckhpd_xmm_xmm
circuit:callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label
circuit:vmovddup %xmm9, %xmm1                           #  3     0x9   5      OPC=vmovddup_xmm_xmm
circuit:vmovq %xmm1, %xmm10                             #  4     0xe   4      OPC=vmovq_xmm_xmm
circuit:callq .move_128_64_xmm2_xmm8_xmm9               #  5     0x12  5      OPC=callq_label
circuit:callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  6     0x17  5      OPC=callq_label
*/
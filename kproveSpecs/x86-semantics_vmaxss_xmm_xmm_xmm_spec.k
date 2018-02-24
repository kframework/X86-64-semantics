module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vmovupd %xmm2, %xmm1 , .Typedoperands ) ~>
splitXmmToR32( %xmm1, %xmm4, %xmm5, %xmm6, %xmm7, 128 ) ~>
execinstr ( vmaxps %xmm3, %xmm4, %xmm13 , .Typedoperands ) ~>
execinstr ( movss %xmm13, %xmm1 , .Typedoperands ) ~>
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
"YMM13" |-> (mi(256, 0):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM3" |-> (mi(256, ?I3:Int):MInt => _)
"YMM4" |-> (mi(256, 0):MInt => _)
"YMM5" |-> (mi(256, 0):MInt => _)
"YMM6" |-> (mi(256, 0):MInt => _)
"YMM7" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vmaxss_xmm_xmm_xmm
instr:vmaxss %xmm3, %xmm2, %xmm1
maybe read:{ %xmm2 %xmm3 }
must read:{ %xmm2 %xmm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx }

circuit:vmovupd %xmm2, %xmm1                          #  1     0     4      OPC=vmovupd_xmm_xmm
circuit:callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  2     0x4   5      OPC=callq_label
circuit:vmaxps %xmm3, %xmm4, %xmm13                   #  3     0x9   4      OPC=vmaxps_xmm_xmm_xmm
circuit:movss %xmm13, %xmm1                           #  4     0xd   5      OPC=movss_xmm_xmm
*/
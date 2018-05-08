module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vpmovzxdq %xmm2, %xmm10 , .Typedoperands ) ~>
execinstr ( vunpckhps %xmm10, %xmm2, %xmm12 , .Typedoperands ) ~>
execinstr ( vpunpckhqdq %xmm12, %xmm12, %xmm0 , .Typedoperands ) ~>
execinstr ( vorps %xmm12, %xmm12, %xmm11 , .Typedoperands ) ~>
execinstr ( vmovupd %ymm10, %ymm12 , .Typedoperands ) ~>
execinstr ( vmovss %xmm11, %xmm0, %xmm13 , .Typedoperands ) ~>
combineNTo2N(%xmm12,  %xmm13, %ymm1, 128, 256, 128) ~>
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
"YMM0" |-> (mi(256, 0):MInt => _)
"YMM1" |-> (mi(256, ?I1:Int):MInt => _)
"YMM10" |-> (mi(256, 0):MInt => _)
"YMM11" |-> (mi(256, 0):MInt => _)
"YMM12" |-> (mi(256, 0):MInt => _)
"YMM13" |-> (mi(256, 0):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vpmovzxdq_ymm_xmm
instr:vpmovzxdq %xmm2, %ymm1
maybe read:{ %xmm2 }
must read:{ %xmm2 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx2 }

circuit:vpmovzxdq %xmm2, %xmm10               #  1     0     5      OPC=vpmovzxdq_xmm_xmm
circuit:vunpckhps %xmm10, %xmm2, %xmm12       #  2     0x5   5      OPC=vunpckhps_xmm_xmm_xmm
circuit:vpunpckhqdq %xmm12, %xmm12, %xmm0     #  3     0xa   5      OPC=vpunpckhqdq_xmm_xmm_xmm
circuit:vorps %xmm12, %xmm12, %xmm11          #  4     0xf   5      OPC=vorps_xmm_xmm_xmm
circuit:vmovupd %ymm10, %ymm12                #  5     0x14  5      OPC=vmovupd_ymm_ymm
circuit:vmovss %xmm11, %xmm0, %xmm13          #  6     0x19  5      OPC=vmovss_xmm_xmm_xmm
circuit:callq .move_128_256_xmm12_xmm13_ymm1  #  7     0x1e  5      OPC=callq_label
*/
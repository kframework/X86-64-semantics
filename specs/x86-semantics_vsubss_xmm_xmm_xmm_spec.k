module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vmovaps %xmm2, %xmm13 , .Typedoperands ) ~>
execinstr ( vpmovzxdq %xmm3, %xmm11 , .Typedoperands ) ~>
execinstr ( vsubps %ymm11, %ymm13, %ymm6 , .Typedoperands ) ~>
execinstr ( vmovss %xmm6, %xmm13, %xmm1 , .Typedoperands ) ~>
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
"YMM11" |-> (mi(256, 0):MInt => _)
"YMM13" |-> (mi(256, 0):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM3" |-> (mi(256, ?I3:Int):MInt => _)
"YMM6" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vsubss_xmm_xmm_xmm
instr:vsubss %xmm3, %xmm2, %xmm1
maybe read:{ %xmm2 %xmm3 }
must read:{ %xmm2 %xmm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx }

circuit:vmovaps %xmm2, %xmm13         #  1     0     4      OPC=vmovaps_xmm_xmm
circuit:vpmovzxdq %xmm3, %xmm11       #  2     0x4   5      OPC=vpmovzxdq_xmm_xmm
circuit:vsubps %ymm11, %ymm13, %ymm6  #  3     0x9   5      OPC=vsubps_ymm_ymm_ymm
circuit:vmovss %xmm6, %xmm13, %xmm1   #  4     0xe   4      OPC=vmovss_xmm_xmm_xmm
*/
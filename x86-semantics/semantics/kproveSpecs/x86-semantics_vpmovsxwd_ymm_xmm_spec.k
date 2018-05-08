module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
split2NToN(%xmm2,  %xmm12, %xmm13 , 64) ~>
execinstr ( vmovq %xmm12, %xmm11 , .Typedoperands ) ~>
execinstr ( pmovsxwd %xmm13, %xmm13 , .Typedoperands ) ~>
execinstr ( pmovsxwd %xmm11, %xmm12 , .Typedoperands ) ~>
combineNTo2N(%xmm12,  %xmm13, %ymm3, 128, 256, 128) ~>
execinstr ( vmovaps %ymm3, %ymm1 , .Typedoperands ) ~>
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
"YMM12" |-> (mi(256, 0):MInt => _)
"YMM13" |-> (mi(256, 0):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM3" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vpmovsxwd_ymm_xmm
instr:vpmovsxwd %xmm2, %ymm1
maybe read:{ %xmm2 }
must read:{ %xmm2 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx2 }

circuit:callq .move_128_64_xmm2_xmm12_xmm13   #  1     0     5      OPC=callq_label
circuit:vmovq %xmm12, %xmm11                  #  2     0x5   5      OPC=vmovq_xmm_xmm
circuit:pmovsxwd %xmm13, %xmm13               #  3     0xa   6      OPC=pmovsxwd_xmm_xmm
circuit:pmovsxwd %xmm11, %xmm12               #  4     0x10  6      OPC=pmovsxwd_xmm_xmm
circuit:callq .move_128_256_xmm12_xmm13_ymm3  #  5     0x16  5      OPC=callq_label
circuit:vmovaps %ymm3, %ymm1                  #  6     0x1b  4      OPC=vmovaps_ymm_ymm
*/
module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
split2NToN(%xmm2,  %r12, %r13 , 64) ~>
combineNTo2N(%r12,  %r13, %xmm3, 64, 128, 64) ~>
execinstr ( vbroadcastss %xmm3, %xmm13 , .Typedoperands ) ~>
execinstr ( vmovdqa %xmm13, %xmm12 , .Typedoperands ) ~>
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
"R12" |-> (mi(64, 0):MInt => _)
"R13" |-> (mi(64, 0):MInt => _)
"YMM1" |-> (mi(256, ?I1:Int):MInt => _)
"YMM12" |-> (mi(256, 0):MInt => _)
"YMM13" |-> (mi(256, 0):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM3" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vpbroadcastd_ymm_xmm
instr:vpbroadcastd %xmm2, %ymm1
maybe read:{ %xmm2 }
must read:{ %xmm2 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx2 }

circuit:callq .move_128_064_xmm2_r12_r13      #  1     0     5      OPC=callq_label
circuit:callq .move_064_128_r12_r13_xmm3      #  2     0x5   5      OPC=callq_label
circuit:vbroadcastss %xmm3, %xmm13            #  3     0xa   5      OPC=vbroadcastss_xmm_xmm
circuit:vmovdqa %xmm13, %xmm12                #  4     0xf   5      OPC=vmovdqa_xmm_xmm
circuit:callq .move_128_256_xmm12_xmm13_ymm1  #  5     0x14  5      OPC=callq_label
*/
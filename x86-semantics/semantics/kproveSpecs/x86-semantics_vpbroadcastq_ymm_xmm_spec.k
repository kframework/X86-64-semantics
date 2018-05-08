module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vpbroadcastq %xmm2, %xmm1 , .Typedoperands ) ~>
execinstr ( vmovupd %xmm1, %xmm8 , .Typedoperands ) ~>
execinstr ( vmovdqa %ymm1, %ymm9 , .Typedoperands ) ~>
combineNTo2N(%xmm8,  %xmm9, %ymm1, 128, 256, 128) ~>
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
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM8" |-> (mi(256, 0):MInt => _)
"YMM9" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vpbroadcastq_ymm_xmm
instr:vpbroadcastq %xmm2, %ymm1
maybe read:{ %xmm2 }
must read:{ %xmm2 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx2 }

circuit:vpbroadcastq %xmm2, %xmm1           #  1     0     5      OPC=vpbroadcastq_xmm_xmm
circuit:vmovupd %xmm1, %xmm8                #  2     0x5   4      OPC=vmovupd_xmm_xmm
circuit:vmovdqa %ymm1, %ymm9                #  3     0x9   4      OPC=vmovdqa_ymm_ymm
circuit:callq .move_128_256_xmm8_xmm9_ymm1  #  4     0xd   5      OPC=callq_label
*/
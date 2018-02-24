module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
splitXmmToR32( %xmm2, %xmm4, %xmm5, %xmm6, %xmm7, 128 ) ~>
execinstr ( vpunpckldq %xmm7, %xmm6, %xmm3 , .Typedoperands ) ~>
execinstr ( pmovsxdq %xmm3, %xmm9 , .Typedoperands ) ~>
execinstr ( pmovsxdq %xmm2, %xmm8 , .Typedoperands ) ~>
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
opcode:vpmovsxdq_ymm_xmm
instr:vpmovsxdq %xmm2, %ymm1
maybe read:{ %xmm2 }
must read:{ %xmm2 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx2 }

circuit:callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label
circuit:vpunpckldq %xmm7, %xmm6, %xmm3                #  2     0x5   4      OPC=vpunpckldq_xmm_xmm_xmm
circuit:pmovsxdq %xmm3, %xmm9                         #  3     0x9   6      OPC=pmovsxdq_xmm_xmm
circuit:pmovsxdq %xmm2, %xmm8                         #  4     0xf   6      OPC=pmovsxdq_xmm_xmm
circuit:callq .move_128_256_xmm8_xmm9_ymm1            #  5     0x15  5      OPC=callq_label
*/
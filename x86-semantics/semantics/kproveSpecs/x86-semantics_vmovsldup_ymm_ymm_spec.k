module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
split2NToN(%ymm2,  %xmm12, %xmm13 , 128) ~>
execinstr ( vmovsldup %xmm13, %xmm6 , .Typedoperands ) ~>
execinstr ( vmovsldup %xmm2, %xmm8 , .Typedoperands ) ~>
execinstr ( vmovapd %xmm6, %xmm9 , .Typedoperands ) ~>
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
"YMM12" |-> (mi(256, 0):MInt => _)
"YMM13" |-> (mi(256, 0):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM6" |-> (mi(256, 0):MInt => _)
"YMM8" |-> (mi(256, 0):MInt => _)
"YMM9" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vmovsldup_ymm_ymm
instr:vmovsldup %ymm2, %ymm1
maybe read:{ %ymm2 }
must read:{ %ymm2 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx }

circuit:callq .move_256_128_ymm2_xmm12_xmm13  #  1     0     5      OPC=callq_label
circuit:vmovsldup %xmm13, %xmm6               #  2     0x5   5      OPC=vmovsldup_xmm_xmm
circuit:vmovsldup %xmm2, %xmm8                #  3     0xa   4      OPC=vmovsldup_xmm_xmm
circuit:vmovapd %xmm6, %xmm9                  #  4     0xe   4      OPC=vmovapd_xmm_xmm
circuit:callq .move_128_256_xmm8_xmm9_ymm1    #  5     0x12  5      OPC=callq_label
*/
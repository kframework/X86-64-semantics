module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
split2NToN(%ymm3,  %xmm12, %xmm13 , 128) ~>
execinstr ( vmovdqa %xmm13, %xmm0 , .Typedoperands ) ~>
split2NToN(%ymm2,  %xmm8, %xmm9 , 128) ~>
execinstr ( haddpd %xmm0, %xmm9 , .Typedoperands ) ~>
execinstr ( vhaddpd %xmm3, %xmm2, %xmm8 , .Typedoperands ) ~>
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
"YMM0" |-> (mi(256, 0):MInt => _)
"YMM1" |-> (mi(256, ?I1:Int):MInt => _)
"YMM12" |-> (mi(256, 0):MInt => _)
"YMM13" |-> (mi(256, 0):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM3" |-> (mi(256, ?I3:Int):MInt => _)
"YMM8" |-> (mi(256, 0):MInt => _)
"YMM9" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vhaddpd_ymm_ymm_ymm
instr:vhaddpd %ymm3, %ymm2, %ymm1
maybe read:{ %ymm2 %ymm3 }
must read:{ %ymm2 %ymm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx }

circuit:callq .move_256_128_ymm3_xmm12_xmm13  #  1     0     5      OPC=callq_label
circuit:vmovdqa %xmm13, %xmm0                 #  2     0x5   5      OPC=vmovdqa_xmm_xmm
circuit:callq .move_256_128_ymm2_xmm8_xmm9    #  3     0xa   5      OPC=callq_label
circuit:haddpd %xmm0, %xmm9                   #  4     0xf   5      OPC=haddpd_xmm_xmm
circuit:vhaddpd %xmm3, %xmm2, %xmm8           #  5     0x14  4      OPC=vhaddpd_xmm_xmm_xmm
circuit:callq .move_128_256_xmm8_xmm9_ymm1    #  6     0x18  5      OPC=callq_label
*/
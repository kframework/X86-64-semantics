module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vpmovsxbd %xmm2, %xmm3 , .Typedoperands ) ~>
split2NToN(%xmm3,  %xmm10, %xmm11 , 64) ~>
execinstr ( vpmovsxdq %xmm10, %xmm8 , .Typedoperands ) ~>
execinstr ( vpmovsxdq %xmm11, %xmm9 , .Typedoperands ) ~>
combineNTo2N(%xmm8,  %xmm9, %ymm2, 128, 256, 128) ~>
execinstr ( vmovapd %ymm2, %ymm1 , .Typedoperands ) ~>
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
"YMM3" |-> (mi(256, 0):MInt => _)
"YMM8" |-> (mi(256, 0):MInt => _)
"YMM9" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vpmovsxbq_ymm_xmm
instr:vpmovsxbq %xmm2, %ymm1
maybe read:{ %xmm2 }
must read:{ %xmm2 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx2 }

circuit:vpmovsxbd %xmm2, %xmm3               #  1     0     5      OPC=vpmovsxbd_xmm_xmm
circuit:callq .move_128_64_xmm3_xmm10_xmm11  #  2     0x5   5      OPC=callq_label
circuit:vpmovsxdq %xmm10, %xmm8              #  3     0xa   5      OPC=vpmovsxdq_xmm_xmm
circuit:vpmovsxdq %xmm11, %xmm9              #  4     0xf   5      OPC=vpmovsxdq_xmm_xmm
circuit:callq .move_128_256_xmm8_xmm9_ymm2   #  5     0x14  5      OPC=callq_label
circuit:vmovapd %ymm2, %ymm1                 #  6     0x19  4      OPC=vmovapd_ymm_ymm
*/
module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
split2NToN(%ymm2,  %xmm12, %xmm13 , 128) ~>
split2NToN(%ymm3,  %xmm8, %xmm9 , 128) ~>
execinstr ( vpunpcklwd %xmm8, %xmm2, %xmm10 , .Typedoperands ) ~>
execinstr ( vpunpcklwd %xmm9, %xmm13, %xmm11 , .Typedoperands ) ~>
combineNTo2N(%xmm10,  %xmm11, %ymm1, 128, 256, 128) ~>
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
opcode:vpunpcklwd_ymm_ymm_ymm
instr:vpunpcklwd %ymm3, %ymm2, %ymm1
maybe read:{ %ymm2 %ymm3 }
must read:{ %ymm2 %ymm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx2 }

circuit:callq .move_256_128_ymm2_xmm12_xmm13  #  1     0     5      OPC=callq_label
circuit:callq .move_256_128_ymm3_xmm8_xmm9    #  2     0x5   5      OPC=callq_label
circuit:vpunpcklwd %xmm8, %xmm2, %xmm10       #  3     0xa   5      OPC=vpunpcklwd_xmm_xmm_xmm
circuit:vpunpcklwd %xmm9, %xmm13, %xmm11      #  4     0xf   5      OPC=vpunpcklwd_xmm_xmm_xmm
circuit:callq .move_128_256_xmm10_xmm11_ymm1  #  5     0x14  5      OPC=callq_label
*/
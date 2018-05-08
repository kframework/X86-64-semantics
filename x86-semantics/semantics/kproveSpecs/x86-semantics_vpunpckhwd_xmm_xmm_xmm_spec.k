module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
split2NToN(%xmm2,  %xmm8, %xmm9 , 64) ~>
split2NToN(%xmm3,  %r12, %r13 , 64) ~>
combineNTo2N(%r12,  %r13, %xmm2, 64, 128, 64) ~>
split2NToN(%xmm2,  %xmm10, %xmm11 , 64) ~>
execinstr ( vpunpcklwd %xmm11, %xmm9, %xmm1 , .Typedoperands ) ~>
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
"YMM10" |-> (mi(256, 0):MInt => _)
"YMM11" |-> (mi(256, 0):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM3" |-> (mi(256, ?I3:Int):MInt => _)
"YMM8" |-> (mi(256, 0):MInt => _)
"YMM9" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vpunpckhwd_xmm_xmm_xmm
instr:vpunpckhwd %xmm3, %xmm2, %xmm1
maybe read:{ %xmm2 %xmm3 }
must read:{ %xmm2 %xmm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx }

circuit:callq .move_128_64_xmm2_xmm8_xmm9    #  1     0     5      OPC=callq_label
circuit:callq .move_128_064_xmm3_r12_r13     #  2     0x5   5      OPC=callq_label
circuit:callq .move_064_128_r12_r13_xmm2     #  3     0xa   5      OPC=callq_label
circuit:callq .move_128_64_xmm2_xmm10_xmm11  #  4     0xf   5      OPC=callq_label
circuit:vpunpcklwd %xmm11, %xmm9, %xmm1      #  5     0x14  5      OPC=vpunpcklwd_xmm_xmm_xmm
*/
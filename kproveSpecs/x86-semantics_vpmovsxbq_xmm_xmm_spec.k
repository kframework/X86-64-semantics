module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
split2NToN(%xmm2,  %r10, %r11 , 64) ~>
combineNTo2N(%r10,  %r11, %xmm3, 64, 128, 64) ~>
execinstr ( vpmovsxbq %xmm3, %ymm10 , .Typedoperands ) ~>
execinstr ( vmovdqa %xmm10, %xmm1 , .Typedoperands ) ~>
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
"R10" |-> (mi(64, 0):MInt => _)
"R11" |-> (mi(64, 0):MInt => _)
"YMM1" |-> (mi(256, ?I1:Int):MInt => _)
"YMM10" |-> (mi(256, 0):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM3" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vpmovsxbq_xmm_xmm
instr:vpmovsxbq %xmm2, %xmm1
maybe read:{ %xmm2 }
must read:{ %xmm2 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx }

circuit:callq .move_128_064_xmm2_r10_r11  #  1     0     5      OPC=callq_label
circuit:callq .move_064_128_r10_r11_xmm3  #  2     0x5   5      OPC=callq_label
circuit:vpmovsxbq %xmm3, %ymm10           #  3     0xa   5      OPC=vpmovsxbq_ymm_xmm
circuit:vmovdqa %xmm10, %xmm1             #  4     0xf   5      OPC=vmovdqa_xmm_xmm
*/
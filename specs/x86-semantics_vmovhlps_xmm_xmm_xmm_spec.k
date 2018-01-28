module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
split2NToN( %xmm3, %r10, %r11 ) ~>
split2NToN( %xmm2, %r12, %r13 ) ~>
execinstr ( vzeroall  .Typedoperands ) ~>
execinstr ( movq %r11, %r12 , .Typedoperands ) ~>
combineNTo2N( %r12, %r13, %xmm1 ) ~>
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
      regstateInitConfig => regstateFinalConfig
    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vmovhlps_xmm_xmm_xmm
instr:vmovhlps %xmm3, %xmm2, %xmm1
maybe read:{ %xmm2 %xmm3 }
must read:{ %xmm2 %xmm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx }

circuit:callq .move_128_064_xmm3_r10_r11  #  1     0     5      OPC=callq_label
circuit:callq .move_128_064_xmm2_r12_r13  #  2     0x5   5      OPC=callq_label
circuit:vzeroall                          #  3     0xa   3      OPC=vzeroall
circuit:movq %r11, %r12                   #  4     0xd   3      OPC=movq_r64_r64
circuit:callq .move_064_128_r12_r13_xmm1  #  5     0x10  5      OPC=callq_label
*/
module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
split2NToN( %xmm2, %r10, %r11 ) ~>
execinstr ( vzeroall  .Typedoperands ) ~>
execinstr ( movq %r10, %r11 , .Typedoperands ) ~>
combineNTo2N( %r10, %r11, %xmm1 ) ~>
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
opcode:vpbroadcastq_xmm_xmm
instr:vpbroadcastq %xmm2, %xmm1
maybe read:{ %xmm2 }
must read:{ %xmm2 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx2 }

circuit:callq .move_128_064_xmm2_r10_r11  #  1     0     5      OPC=callq_label
circuit:vzeroall                          #  2     0x5   3      OPC=vzeroall
circuit:movq %r10, %r11                   #  3     0x8   3      OPC=movq_r64_r64
circuit:callq .move_064_128_r10_r11_xmm1  #  4     0xb   5      OPC=callq_label
*/
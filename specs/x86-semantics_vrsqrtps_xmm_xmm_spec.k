module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
split2NToN( %xmm2, %r8, %r9 ) ~>
execinstr ( vzeroall  .Typedoperands ) ~>
combineNTo2N( %r8, %r9, %xmm3 ) ~>
execinstr ( vrsqrtps %ymm3, %ymm12 , .Typedoperands ) ~>
combineNTo2N( %xmm12, %xmm13, %ymm1 ) ~>
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
opcode:vrsqrtps_xmm_xmm
instr:vrsqrtps %xmm2, %xmm1
maybe read:{ %xmm2 }
must read:{ %xmm2 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx }

circuit:callq .move_128_064_xmm2_r8_r9        #  1     0     5      OPC=callq_label
circuit:vzeroall                              #  2     0x5   3      OPC=vzeroall
circuit:callq .move_064_128_r8_r9_xmm3        #  3     0x8   5      OPC=callq_label
circuit:vrsqrtps %ymm3, %ymm12                #  4     0xd   4      OPC=vrsqrtps_ymm_ymm
circuit:callq .move_128_256_xmm12_xmm13_ymm1  #  5     0x11  5      OPC=callq_label
*/
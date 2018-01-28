module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
split2NToN( %xmm2, %r8, %r9 ) ~>
execinstr ( vzeroall  .Typedoperands ) ~>
combineNTo2N( %r8, %r9, %xmm1 ) ~>
execinstr ( vcvtps2pd %xmm1, %ymm10 , .Typedoperands ) ~>
combineNTo2N( %xmm10, %xmm11, %ymm1 ) ~>
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
opcode:vcvtps2pd_xmm_xmm
instr:vcvtps2pd %xmm2, %xmm1
maybe read:{ %xmm2 %mxcsr::rc[0] }
must read:{ %xmm2 %mxcsr::rc[0] }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx }

circuit:callq .move_128_064_xmm2_r8_r9        #  1     0     5      OPC=callq_label
circuit:vzeroall                              #  2     0x5   3      OPC=vzeroall
circuit:callq .move_064_128_r8_r9_xmm1        #  3     0x8   5      OPC=callq_label
circuit:vcvtps2pd %xmm1, %ymm10               #  4     0xd   4      OPC=vcvtps2pd_ymm_xmm
circuit:callq .move_128_256_xmm10_xmm11_ymm1  #  5     0x11  5      OPC=callq_label
*/
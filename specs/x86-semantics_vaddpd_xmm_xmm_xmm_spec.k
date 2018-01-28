module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
split2NToN( %xmm2, %r10, %r11 ) ~>
split2NToN( %xmm3, %r8, %r9 ) ~>
execinstr ( vzeroall  .Typedoperands ) ~>
combineNTo2N( %r10, %r11, %xmm1 ) ~>
combineNTo2N( %r8, %r9, %xmm3 ) ~>
execinstr ( vaddpd %ymm3, %ymm1, %ymm1 , .Typedoperands ) ~>
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
opcode:vaddpd_xmm_xmm_xmm
instr:vaddpd %xmm3, %xmm2, %xmm1
maybe read:{ %xmm2 %xmm3 }
must read:{ %xmm2 %xmm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx }

circuit:callq .move_128_064_xmm2_r10_r11  #  1     0     5      OPC=callq_label
circuit:callq .move_128_064_xmm3_r8_r9    #  2     0x5   5      OPC=callq_label
circuit:vzeroall                          #  3     0xa   3      OPC=vzeroall
circuit:callq .move_064_128_r10_r11_xmm1  #  4     0xd   5      OPC=callq_label
circuit:callq .move_064_128_r8_r9_xmm3    #  5     0x12  5      OPC=callq_label
circuit:vaddpd %ymm3, %ymm1, %ymm1        #  6     0x17  4      OPC=vaddpd_ymm_ymm_ymm
*/
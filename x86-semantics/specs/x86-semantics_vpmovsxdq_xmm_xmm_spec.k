module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
splitXmmToRegsIn32( %xmm2, %eax, %edx, %r8d, %r9d ) ~>
execinstr ( movslq %edx, %r11 , .Typedoperands ) ~>
execinstr ( vzeroall  .Typedoperands ) ~>
execinstr ( movslq %eax, %r10 , .Typedoperands ) ~>
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
opcode:vpmovsxdq_xmm_xmm
instr:vpmovsxdq %xmm2, %xmm1
maybe read:{ %xmm2 }
must read:{ %xmm2 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx }

circuit:callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label
circuit:movslq %edx, %r11                         #  2     0x5   3      OPC=movslq_r64_r32
circuit:vzeroall                                  #  3     0x8   3      OPC=vzeroall
circuit:movslq %eax, %r10                         #  4     0xb   3      OPC=movslq_r64_r32
circuit:callq .move_064_128_r10_r11_xmm1          #  5     0xe   5      OPC=callq_label
*/
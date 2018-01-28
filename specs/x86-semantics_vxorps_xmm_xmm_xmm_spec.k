module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
split2NToN( %xmm3, %r12, %r13 ) ~>
split2NToN( %xmm2, %r8, %r9 ) ~>
execinstr ( vzeroall  .Typedoperands ) ~>
execinstr ( xorq %r13, %r9 , .Typedoperands ) ~>
execinstr ( xorq %r12, %r8 , .Typedoperands ) ~>
combineNTo2N( %r8, %r9, %xmm1 ) ~>
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
opcode:vxorps_xmm_xmm_xmm
instr:vxorps %xmm3, %xmm2, %xmm1
maybe read:{ %xmm2 %xmm3 }
must read:{ %xmm2 %xmm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx }

circuit:callq .move_128_064_xmm3_r12_r13  #  1     0     5      OPC=callq_label
circuit:callq .move_128_064_xmm2_r8_r9    #  2     0x5   5      OPC=callq_label
circuit:vzeroall                          #  3     0xa   3      OPC=vzeroall
circuit:xorq %r13, %r9                    #  4     0xd   3      OPC=xorq_r64_r64
circuit:xorq %r12, %r8                    #  5     0x10  3      OPC=xorq_r64_r64
circuit:callq .move_064_128_r8_r9_xmm1    #  6     0x13  5      OPC=callq_label
*/
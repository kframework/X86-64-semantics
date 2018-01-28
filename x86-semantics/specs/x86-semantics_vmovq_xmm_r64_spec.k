module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vzeroall  .Typedoperands ) ~>
split2NToN( %xmm1, %r8, %r9 ) ~>
execinstr ( xorq %rbx, %r8 , .Typedoperands ) ~>
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
opcode:vmovq_xmm_r64
instr:vmovq %rbx, %xmm1
maybe read:{ %rbx }
must read:{ %rbx }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx }

circuit:vzeroall                        #  1     0     3      OPC=vzeroall
circuit:callq .move_128_064_xmm1_r8_r9  #  2     0x3   5      OPC=callq_label
circuit:xorq %rbx, %r8                  #  3     0x8   3      OPC=xorq_r64_r64
circuit:callq .move_064_128_r8_r9_xmm1  #  4     0xb   5      OPC=callq_label
*/
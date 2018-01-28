module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
split2NToN( %xmm2, %r12, %r13 ) ~>
execinstr ( vzeroall  .Typedoperands ) ~>
split2NToN( %xmm2, %r10, %r11 ) ~>
combineNTo2N( %r12d, %r13d, %rdx ) ~>
split2NToN( %edx, %r10w, %r11w ) ~>
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
opcode:vpmovzxwq_xmm_xmm
instr:vpmovzxwq %xmm2, %xmm1
maybe read:{ %xmm2 }
must read:{ %xmm2 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx }

circuit:callq .move_128_064_xmm2_r12_r13   #  1     0     5      OPC=callq_label
circuit:vzeroall                           #  2     0x5   3      OPC=vzeroall
circuit:callq .move_128_064_xmm2_r10_r11   #  3     0x8   5      OPC=callq_label
circuit:callq .move_032_064_r12d_r13d_rdx  #  4     0xd   5      OPC=callq_label
circuit:callq .move_032_016_edx_r10w_r11w  #  5     0x12  5      OPC=callq_label
circuit:callq .move_064_128_r10_r11_xmm1   #  6     0x17  5      OPC=callq_label
*/
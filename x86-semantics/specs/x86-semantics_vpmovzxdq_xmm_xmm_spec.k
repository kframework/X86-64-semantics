module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
split2NToN( %xmm2, %r8, %r9 ) ~>
execinstr ( vzeroall  .Typedoperands ) ~>
movPosOfRegToByte( 5, %ymm1, %r9b ) ~>
combineNTo2N( %r8, %r9, %xmm2 ) ~>
splitXmmToRegsIn32( %xmm2, %xmm8, %xmm9, %xmm10, %xmm11 ) ~>
combineNTo2N( %xmm8, %xmm9, %xmm1 ) ~>
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
opcode:vpmovzxdq_xmm_xmm
instr:vpmovzxdq %xmm2, %xmm1
maybe read:{ %xmm2 }
must read:{ %xmm2 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx }

circuit:callq .move_128_064_xmm2_r8_r9                  #  1     0     5      OPC=callq_label
circuit:vzeroall                                        #  2     0x5   3      OPC=vzeroall
circuit:callq .move_byte_5_of_ymm1_to_r9b               #  3     0x8   5      OPC=callq_label
circuit:callq .move_064_128_r8_r9_xmm2                  #  4     0xd   5      OPC=callq_label
circuit:callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  5     0x12  5      OPC=callq_label
circuit:callq .move_64_128_xmm8_xmm9_xmm1               #  6     0x17  5      OPC=callq_label
*/
module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
splitXmmToRegsIn32( %xmm1, %xmm8, %xmm9, %xmm10, %xmm11 ) ~>
combineNTo2N( %xmm8, %xmm9, %ymm1 ) ~>
split2NToN( %xmm1, %r10, %r11 ) ~>
combineNTo2N( %r10d, %r11d, %rbx ) ~>
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
"RIP" |->    (mi(64, 0) => _)
"YMM9" |-> (mi(256, 0):MInt => _)
"YMM1" |-> (mi(256, ?I1:Int):MInt => _)
"RBX" |-> (mi(64, ?I2:Int):MInt => _)
"YMM11" |-> (mi(256, 0):MInt => _)
"R11" |-> (mi(64, 0):MInt => _)
"YMM8" |-> (mi(256, 0):MInt => _)
"YMM10" |-> (mi(256, 0):MInt => _)
"R10" |-> (mi(64, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:movd_r32_xmm
instr:movd %xmm1, %ebx
maybe read:{ %xmm1 }
must read:{ %xmm1 }
maybe write:{ %rbx }
must write:{ %rbx }
maybe undef:{ }
must undef:{ }
required flags:{ sse2 }

circuit:callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label
circuit:callq .move_128_256_xmm8_xmm9_ymm1              #  2     0x5   5      OPC=callq_label
circuit:callq .move_128_064_xmm1_r10_r11                #  3     0xa   5      OPC=callq_label
circuit:callq .move_032_064_r10d_r11d_rbx               #  4     0xf   5      OPC=callq_label
*/
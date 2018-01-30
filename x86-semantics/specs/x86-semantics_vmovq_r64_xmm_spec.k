module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
splitXmmToRegsIn32( %xmm1, %r10d, %r11d, %r12d, %r13d ) ~>
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
"R12" |-> (mi(64, 0):MInt => _)
"R13" |-> (mi(64, 0):MInt => _)
"R10" |-> (mi(64, 0):MInt => _)
"R11" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, ?I1:Int):MInt => _)
"YMM1" |-> (mi(256, ?I2:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vmovq_r64_xmm
instr:vmovq %xmm1, %rbx
maybe read:{ %xmm1 }
must read:{ %xmm1 }
maybe write:{ %rbx }
must write:{ %rbx }
maybe undef:{ }
must undef:{ }
required flags:{ avx }

circuit:callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  1     0    5      OPC=callq_label
circuit:callq .move_032_064_r10d_r11d_rbx             #  2     0x5  5      OPC=callq_label
*/
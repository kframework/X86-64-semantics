module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
split2NToN(%xmm2,  %r8, %r9 , 64) ~>
combineNTo2N(%r8,  %r9, %xmm1, 64, 128, 64) ~>
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
"YMM1" |-> (mi(256, ?I1:Int):MInt => _)
"R9" |-> (mi(64, 0):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"R8" |-> (mi(64, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:movdqa_xmm_xmm
instr:movdqa %xmm2, %xmm1
maybe read:{ %xmm2 }
must read:{ %xmm2 }
maybe write:{ %xmm1 }
must write:{ %xmm1 }
maybe undef:{ }
must undef:{ }
required flags:{ sse2 }

circuit:callq .move_128_064_xmm2_r8_r9  #  1     0    5      OPC=callq_label
circuit:callq .move_064_128_r8_r9_xmm1  #  2     0x5  5      OPC=callq_label
*/
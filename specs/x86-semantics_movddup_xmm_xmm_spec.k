module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
split2NToN( %xmm2, %r12, %r13 ) ~>
execinstr ( movq %r12, %r13 , .Typedoperands ) ~>
combineNTo2N( %r12, %r13, %xmm1 ) ~>
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
"R13" |-> (mi(64, 0):MInt => _)
"YMM2" |-> (mi(256, ?I1:Int):MInt => _)
"YMM1" |-> (mi(256, ?I2:Int):MInt => _)
"R12" |-> (mi(64, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:movddup_xmm_xmm
instr:movddup %xmm2, %xmm1
maybe read:{ %xmm2 }
must read:{ %xmm2 }
maybe write:{ %xmm1 }
must write:{ %xmm1 }
maybe undef:{ }
must undef:{ }
required flags:{ pni }

circuit:callq .move_128_064_xmm2_r12_r13  #  1     0    5      OPC=callq_label
circuit:movq %r12, %r13                   #  2     0x5  3      OPC=movq_r64_r64
circuit:callq .move_064_128_r12_r13_xmm1  #  3     0x8  5      OPC=callq_label
*/
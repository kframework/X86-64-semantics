module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
split2NToN(%xmm2,  %xmm10, %xmm11 , 64) ~>
combineNTo2N(%xmm10,  %xmm11, %xmm1, 64, 128, 128) ~>
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
"YMM10" |-> (mi(256, 0):MInt => _)
"YMM11" |-> (mi(256, 0):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:movdqu_xmm_xmm
instr:movdqu %xmm2, %xmm1
maybe read:{ %xmm2 }
must read:{ %xmm2 }
maybe write:{ %xmm1 }
must write:{ %xmm1 }
maybe undef:{ }
must undef:{ }
required flags:{ sse2 }

circuit:callq .move_128_64_xmm2_xmm10_xmm11  #  1     0    5      OPC=callq_label
circuit:callq .move_64_128_xmm10_xmm11_xmm1  #  2     0x5  5      OPC=callq_label
*/
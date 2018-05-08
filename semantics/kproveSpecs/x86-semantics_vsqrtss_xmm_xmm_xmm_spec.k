module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
split2NToN(%xmm3,  %xmm12, %xmm13 , 64) ~>
execinstr ( vmulss %xmm2, %xmm2, %xmm1 , .Typedoperands ) ~>
execinstr ( sqrtss %xmm12, %xmm1 , .Typedoperands ) ~>
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
"YMM12" |-> (mi(256, 0):MInt => _)
"YMM13" |-> (mi(256, 0):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM3" |-> (mi(256, ?I3:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vsqrtss_xmm_xmm_xmm
instr:vsqrtss %xmm3, %xmm2, %xmm1
maybe read:{ %xmm2 %xmm3 }
must read:{ %xmm2 %xmm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx }

circuit:callq .move_128_64_xmm3_xmm12_xmm13  #  1     0    5      OPC=callq_label
circuit:vmulss %xmm2, %xmm2, %xmm1           #  2     0x5  4      OPC=vmulss_xmm_xmm_xmm
circuit:sqrtss %xmm12, %xmm1                 #  3     0x9  5      OPC=sqrtss_xmm_xmm
*/
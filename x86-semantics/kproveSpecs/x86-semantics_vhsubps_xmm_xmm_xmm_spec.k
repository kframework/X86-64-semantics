module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( hsubps %xmm3, %xmm2 , .Typedoperands ) ~>
split2NToN(%xmm2,  %r8, %r9 , 64) ~>
combineNTo2N(%r8,  %r9, %xmm2, 64, 128, 64) ~>
execinstr ( vmovdqu %xmm2, %xmm1 , .Typedoperands ) ~>
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
"R8" |-> (mi(64, 0):MInt => _)
"R9" |-> (mi(64, 0):MInt => _)
"YMM1" |-> (mi(256, ?I1:Int):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM3" |-> (mi(256, ?I3:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vhsubps_xmm_xmm_xmm
instr:vhsubps %xmm3, %xmm2, %xmm1
maybe read:{ %xmm2 %xmm3 }
must read:{ %xmm2 %xmm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx }

circuit:hsubps %xmm3, %xmm2             #  1     0     4      OPC=hsubps_xmm_xmm
circuit:callq .move_128_064_xmm2_r8_r9  #  2     0x4   5      OPC=callq_label
circuit:callq .move_064_128_r8_r9_xmm2  #  3     0x9   5      OPC=callq_label
circuit:vmovdqu %xmm2, %xmm1            #  4     0xe   4      OPC=vmovdqu_xmm_xmm
*/
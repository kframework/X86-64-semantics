module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vpbroadcastq %xmm3, %xmm14 , .Typedoperands ) ~>
split2NToN(%xmm2,  %xmm12, %xmm13 , 64) ~>
execinstr ( vunpckhps %xmm3, %xmm14, %xmm12 , .Typedoperands ) ~>
execinstr ( vpunpckldq %xmm13, %xmm2, %xmm1 , .Typedoperands ) ~>
execinstr ( vpunpckhqdq %ymm12, %ymm1, %ymm11 , .Typedoperands ) ~>
execinstr ( movlhps %xmm12, %xmm1 , .Typedoperands ) ~>
execinstr ( addps %xmm11, %xmm1 , .Typedoperands ) ~>
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
"YMM11" |-> (mi(256, 0):MInt => _)
"YMM12" |-> (mi(256, 0):MInt => _)
"YMM13" |-> (mi(256, 0):MInt => _)
"YMM14" |-> (mi(256, 0):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM3" |-> (mi(256, ?I3:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vhaddps_xmm_xmm_xmm
instr:vhaddps %xmm3, %xmm2, %xmm1
maybe read:{ %xmm2 %xmm3 }
must read:{ %xmm2 %xmm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx }

circuit:vpbroadcastq %xmm3, %xmm14           #  1     0     5      OPC=vpbroadcastq_xmm_xmm
circuit:callq .move_128_64_xmm2_xmm12_xmm13  #  2     0x5   5      OPC=callq_label
circuit:vunpckhps %xmm3, %xmm14, %xmm12      #  3     0xa   4      OPC=vunpckhps_xmm_xmm_xmm
circuit:vpunpckldq %xmm13, %xmm2, %xmm1      #  4     0xe   5      OPC=vpunpckldq_xmm_xmm_xmm
circuit:vpunpckhqdq %ymm12, %ymm1, %ymm11    #  5     0x13  5      OPC=vpunpckhqdq_ymm_ymm_ymm
circuit:movlhps %xmm12, %xmm1                #  6     0x18  4      OPC=movlhps_xmm_xmm
circuit:addps %xmm11, %xmm1                  #  7     0x1c  4      OPC=addps_xmm_xmm
*/
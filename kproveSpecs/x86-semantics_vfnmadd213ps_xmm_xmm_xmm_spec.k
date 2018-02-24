module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vmovapd %xmm2, %xmm13 , .Typedoperands ) ~>
split2NToN(%xmm1,  %xmm8, %xmm9 , 64) ~>
execinstr ( vorps %xmm8, %xmm1, %xmm14 , .Typedoperands ) ~>
execinstr ( vmovdqu %xmm3, %xmm1 , .Typedoperands ) ~>
execinstr ( vfnmadd231ps %ymm14, %ymm13, %ymm1 , .Typedoperands ) ~>
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
"YMM13" |-> (mi(256, 0):MInt => _)
"YMM14" |-> (mi(256, 0):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM3" |-> (mi(256, ?I3:Int):MInt => _)
"YMM8" |-> (mi(256, 0):MInt => _)
"YMM9" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vfnmadd213ps_xmm_xmm_xmm
instr:vfnmadd213ps %xmm3, %xmm2, %xmm1
maybe read:{ %xmm1 %xmm2 %xmm3 }
must read:{ %xmm1 %xmm2 %xmm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ fma }

circuit:vmovapd %xmm2, %xmm13               #  1     0     4      OPC=vmovapd_xmm_xmm
circuit:callq .move_128_64_xmm1_xmm8_xmm9   #  2     0x4   5      OPC=callq_label
circuit:vorps %xmm8, %xmm1, %xmm14          #  3     0x9   5      OPC=vorps_xmm_xmm_xmm
circuit:vmovdqu %xmm3, %xmm1                #  4     0xe   4      OPC=vmovdqu_xmm_xmm
circuit:vfnmadd231ps %ymm14, %ymm13, %ymm1  #  5     0x12  5      OPC=vfnmadd231ps_ymm_ymm_ymm
*/
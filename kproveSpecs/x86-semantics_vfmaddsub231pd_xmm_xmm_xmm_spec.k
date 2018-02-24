module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vxorps %ymm1, %ymm1, %ymm6 , .Typedoperands ) ~>
execinstr ( vmovq %xmm3, %xmm12 , .Typedoperands ) ~>
execinstr ( vxorpd %xmm1, %xmm1, %xmm11 , .Typedoperands ) ~>
execinstr ( vmaxps %ymm6, %ymm12, %ymm6 , .Typedoperands ) ~>
execinstr ( vfnmsub231pd %xmm11, %xmm6, %xmm1 , .Typedoperands ) ~>
execinstr ( vfmsubadd231pd %xmm3, %xmm2, %xmm1 , .Typedoperands ) ~>
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
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM3" |-> (mi(256, ?I3:Int):MInt => _)
"YMM6" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vfmaddsub231pd_xmm_xmm_xmm
instr:vfmaddsub231pd %xmm3, %xmm2, %xmm1
maybe read:{ %xmm1 %xmm2 %xmm3 }
must read:{ %xmm1 %xmm2 %xmm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ fma }

circuit:vxorps %ymm1, %ymm1, %ymm6          #  1     0     4      OPC=vxorps_ymm_ymm_ymm
circuit:vmovq %xmm3, %xmm12                 #  2     0x4   4      OPC=vmovq_xmm_xmm
circuit:vxorpd %xmm1, %xmm1, %xmm11         #  3     0x8   4      OPC=vxorpd_xmm_xmm_xmm
circuit:vmaxps %ymm6, %ymm12, %ymm6         #  4     0xc   4      OPC=vmaxps_ymm_ymm_ymm
circuit:vfnmsub231pd %xmm11, %xmm6, %xmm1   #  5     0x10  5      OPC=vfnmsub231pd_xmm_xmm_xmm
circuit:vfmsubadd231pd %xmm3, %xmm2, %xmm1  #  6     0x15  5      OPC=vfmsubadd231pd_xmm_xmm_xmm
*/
module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vmovapd %xmm3, %xmm14 , .Typedoperands ) ~>
execinstr ( vmovdqu %xmm2, %xmm8 , .Typedoperands ) ~>
execinstr ( vminss %xmm1, %xmm1, %xmm1 , .Typedoperands ) ~>
execinstr ( vfnmsub213pd %ymm8, %ymm1, %ymm14 , .Typedoperands ) ~>
execinstr ( vmaxps %xmm14, %xmm14, %xmm1 , .Typedoperands ) ~>
execinstr ( por %xmm14, %xmm1 , .Typedoperands ) ~>
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
"YMM14" |-> (mi(256, 0):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM3" |-> (mi(256, ?I3:Int):MInt => _)
"YMM8" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vfnmsub132pd_xmm_xmm_xmm
instr:vfnmsub132pd %xmm3, %xmm2, %xmm1
maybe read:{ %xmm1 %xmm2 %xmm3 }
must read:{ %xmm1 %xmm2 %xmm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ fma }

circuit:vmovapd %xmm3, %xmm14              #  1     0     4      OPC=vmovapd_xmm_xmm
circuit:vmovdqu %xmm2, %xmm8               #  2     0x4   4      OPC=vmovdqu_xmm_xmm
circuit:vminss %xmm1, %xmm1, %xmm1         #  3     0x8   4      OPC=vminss_xmm_xmm_xmm
circuit:vfnmsub213pd %ymm8, %ymm1, %ymm14  #  4     0xc   5      OPC=vfnmsub213pd_ymm_ymm_ymm
circuit:vmaxps %xmm14, %xmm14, %xmm1       #  5     0x11  5      OPC=vmaxps_xmm_xmm_xmm
circuit:por %xmm14, %xmm1                  #  6     0x16  5      OPC=por_xmm_xmm
*/
module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vorpd %xmm3, %xmm3, %xmm6 , .Typedoperands ) ~>
execinstr ( vmovapd %xmm1, %xmm3 , .Typedoperands ) ~>
execinstr ( movaps %xmm6, %xmm1 , .Typedoperands ) ~>
execinstr ( vfnmsub213pd %xmm3, %xmm2, %xmm1 , .Typedoperands ) ~>
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
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM3" |-> (mi(256, ?I3:Int):MInt => _)
"YMM6" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vfnmsub231pd_xmm_xmm_xmm
instr:vfnmsub231pd %xmm3, %xmm2, %xmm1
maybe read:{ %xmm1 %xmm2 %xmm3 }
must read:{ %xmm1 %xmm2 %xmm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ fma }

circuit:vorpd %xmm3, %xmm3, %xmm6         #  1     0     4      OPC=vorpd_xmm_xmm_xmm
circuit:vmovapd %xmm1, %xmm3              #  2     0x4   4      OPC=vmovapd_xmm_xmm
circuit:movaps %xmm6, %xmm1               #  3     0x8   3      OPC=movaps_xmm_xmm
circuit:vfnmsub213pd %xmm3, %xmm2, %xmm1  #  4     0xb   5      OPC=vfnmsub213pd_xmm_xmm_xmm
*/
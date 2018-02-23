module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vmovapd %xmm1, %xmm1 , .Typedoperands ) ~>
execinstr ( vmovapd %xmm2, %xmm8 , .Typedoperands ) ~>
execinstr ( vmaxpd %xmm3, %xmm3, %xmm5 , .Typedoperands ) ~>
execinstr ( vfnmadd231pd %ymm5, %ymm8, %ymm1 , .Typedoperands ) ~>
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
"YMM5" |-> (mi(256, 0):MInt => _)
"YMM8" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vfnmadd231pd_xmm_xmm_xmm
instr:vfnmadd231pd %xmm3, %xmm2, %xmm1
maybe read:{ %xmm1 %xmm2 %xmm3 }
must read:{ %xmm1 %xmm2 %xmm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ fma }

circuit:vmovapd %xmm1, %xmm1              #  1     0     4      OPC=vmovapd_xmm_xmm
circuit:vmovapd %xmm2, %xmm8              #  2     0x4   4      OPC=vmovapd_xmm_xmm
circuit:vmaxpd %xmm3, %xmm3, %xmm5        #  3     0x8   4      OPC=vmaxpd_xmm_xmm_xmm
circuit:vfnmadd231pd %ymm5, %ymm8, %ymm1  #  4     0xc   5      OPC=vfnmadd231pd_ymm_ymm_ymm
*/
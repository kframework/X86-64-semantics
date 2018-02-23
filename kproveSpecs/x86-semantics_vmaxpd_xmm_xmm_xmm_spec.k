module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vmovapd %xmm3, %xmm5 , .Typedoperands ) ~>
execinstr ( vmaxps %xmm2, %xmm2, %xmm11 , .Typedoperands ) ~>
execinstr ( vmaxpd %ymm5, %ymm11, %ymm1 , .Typedoperands ) ~>
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
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM3" |-> (mi(256, ?I3:Int):MInt => _)
"YMM5" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vmaxpd_xmm_xmm_xmm
instr:vmaxpd %xmm3, %xmm2, %xmm1
maybe read:{ %xmm2 %xmm3 }
must read:{ %xmm2 %xmm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx }

circuit:vmovapd %xmm3, %xmm5         #  1     0    4      OPC=vmovapd_xmm_xmm
circuit:vmaxps %xmm2, %xmm2, %xmm11  #  2     0x4  4      OPC=vmaxps_xmm_xmm_xmm
circuit:vmaxpd %ymm5, %ymm11, %ymm1  #  3     0x8  4      OPC=vmaxpd_ymm_ymm_ymm
*/
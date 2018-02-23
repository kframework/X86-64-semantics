module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vmovss %xmm3, %xmm2, %xmm1 , .Typedoperands ) ~>
execinstr ( vmovapd %xmm1, %xmm11 , .Typedoperands ) ~>
execinstr ( rcpss %xmm11, %xmm1 , .Typedoperands ) ~>
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

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vrcpss_xmm_xmm_xmm
instr:vrcpss %xmm3, %xmm2, %xmm1
maybe read:{ %xmm2 %xmm3 }
must read:{ %xmm2 %xmm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx }

circuit:vmovss %xmm3, %xmm2, %xmm1  #  1     0    4      OPC=vmovss_xmm_xmm_xmm
circuit:vmovapd %xmm1, %xmm11       #  2     0x4  4      OPC=vmovapd_xmm_xmm
circuit:rcpss %xmm11, %xmm1         #  3     0x8  5      OPC=rcpss_xmm_xmm
*/
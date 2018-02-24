module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( movddup %xmm2, %xmm9 , .Typedoperands ) ~>
execinstr ( vunpcklpd %xmm3, %xmm9, %xmm1 , .Typedoperands ) ~>
execinstr ( vmovhlps %xmm2, %xmm3, %xmm8 , .Typedoperands ) ~>
execinstr ( subpd %xmm8, %xmm1 , .Typedoperands ) ~>
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
"YMM8" |-> (mi(256, 0):MInt => _)
"YMM9" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vhsubpd_xmm_xmm_xmm
instr:vhsubpd %xmm3, %xmm2, %xmm1
maybe read:{ %xmm2 %xmm3 }
must read:{ %xmm2 %xmm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx }

circuit:movddup %xmm2, %xmm9           #  1     0     5      OPC=movddup_xmm_xmm
circuit:vunpcklpd %xmm3, %xmm9, %xmm1  #  2     0x5   4      OPC=vunpcklpd_xmm_xmm_xmm
circuit:vmovhlps %xmm2, %xmm3, %xmm8   #  3     0x9   4      OPC=vmovhlps_xmm_xmm_xmm
circuit:subpd %xmm8, %xmm1             #  4     0xd   5      OPC=subpd_xmm_xmm
*/
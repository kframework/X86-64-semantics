module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%ymm1, "SPAD1") ~>
execinstr ( vmovdqu %xmm1, %xmm14 , .Typedoperands ) ~>
execinstr ( vunpcklpd %xmm14, %xmm2, %xmm8 , .Typedoperands ) ~>
execinstr ( vsubps %ymm8, %ymm14, %ymm11 , .Typedoperands ) ~>
execinstr ( movss %xmm11, %xmm1 , .Typedoperands ) ~>
restoreRegister("SPAD1", 128, 128, 0, 0,
          0, 128, %ymm1) ~>
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
"SPAD1" |->    (mi(256, 0) => _)
"YMM1" |-> (mi(256, ?I1:Int):MInt => _)
"YMM11" |-> (mi(256, 0):MInt => _)
"YMM14" |-> (mi(256, 0):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM8" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:subss_xmm_xmm
instr:subss %xmm2, %xmm1
maybe read:{ %xmm1 %xmm2 }
must read:{ %xmm1 %xmm2 }
maybe write:{ %xmm1 }
must write:{ %xmm1 }
maybe undef:{ }
must undef:{ }
required flags:{ sse }

circuit:vmovdqu %xmm1, %xmm14           #  1     0     4      OPC=vmovdqu_xmm_xmm
circuit:vunpcklpd %xmm14, %xmm2, %xmm8  #  2     0x4   5      OPC=vunpcklpd_xmm_xmm_xmm
circuit:vsubps %ymm8, %ymm14, %ymm11    #  3     0x9   5      OPC=vsubps_ymm_ymm_ymm
circuit:movss %xmm11, %xmm1             #  4     0xe   5      OPC=movss_xmm_xmm
*/
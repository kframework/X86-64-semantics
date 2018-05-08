module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%ymm1, "SPAD1") ~>
execinstr ( vmaxps %xmm2, %xmm2, %xmm6 , .Typedoperands ) ~>
execinstr ( vmaxss %xmm1, %xmm1, %xmm10 , .Typedoperands ) ~>
execinstr ( vsubpd %ymm6, %ymm10, %ymm7 , .Typedoperands ) ~>
execinstr ( movapd %xmm7, %xmm1 , .Typedoperands ) ~>
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
"YMM10" |-> (mi(256, 0):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM6" |-> (mi(256, 0):MInt => _)
"YMM7" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:subpd_xmm_xmm
instr:subpd %xmm2, %xmm1
maybe read:{ %xmm1 %xmm2 }
must read:{ %xmm1 %xmm2 }
maybe write:{ %xmm1 }
must write:{ %xmm1 }
maybe undef:{ }
must undef:{ }
required flags:{ sse2 }

circuit:vmaxps %xmm2, %xmm2, %xmm6   #  1     0     4      OPC=vmaxps_xmm_xmm_xmm
circuit:vmaxss %xmm1, %xmm1, %xmm10  #  2     0x4   4      OPC=vmaxss_xmm_xmm_xmm
circuit:vsubpd %ymm6, %ymm10, %ymm7  #  3     0x8   4      OPC=vsubpd_ymm_ymm_ymm
circuit:movapd %xmm7, %xmm1          #  4     0xc   4      OPC=movapd_xmm_xmm
*/
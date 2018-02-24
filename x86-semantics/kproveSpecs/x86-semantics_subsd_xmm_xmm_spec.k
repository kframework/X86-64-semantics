module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%ymm1, "SPAD1") ~>
execinstr ( movq %xmm2, %xmm0 , .Typedoperands ) ~>
execinstr ( vmovss %xmm0, %xmm0, %xmm7 , .Typedoperands ) ~>
execinstr ( vsubpd %xmm7, %xmm1, %xmm4 , .Typedoperands ) ~>
execinstr ( movsd %xmm4, %xmm1 , .Typedoperands ) ~>
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
"YMM0" |-> (mi(256, 0):MInt => _)
"YMM1" |-> (mi(256, ?I1:Int):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM4" |-> (mi(256, 0):MInt => _)
"YMM7" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:subsd_xmm_xmm
instr:subsd %xmm2, %xmm1
maybe read:{ %xmm1 %xmm2 }
must read:{ %xmm1 %xmm2 }
maybe write:{ %xmm1 }
must write:{ %xmm1 }
maybe undef:{ }
must undef:{ }
required flags:{ sse2 }

circuit:movq %xmm2, %xmm0           #  1     0     4      OPC=movq_xmm_xmm
circuit:vmovss %xmm0, %xmm0, %xmm7  #  2     0x4   4      OPC=vmovss_xmm_xmm_xmm
circuit:vsubpd %xmm7, %xmm1, %xmm4  #  3     0x8   4      OPC=vsubpd_xmm_xmm_xmm
circuit:movsd %xmm4, %xmm1          #  4     0xc   4      OPC=movsd_xmm_xmm
*/
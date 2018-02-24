module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%ymm1, "SPAD1") ~>
execinstr ( vunpckhps %xmm1, %xmm2, %xmm10 , .Typedoperands ) ~>
execinstr ( unpcklps %xmm2, %xmm1 , .Typedoperands ) ~>
execinstr ( phaddd %xmm10, %xmm1 , .Typedoperands ) ~>
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

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:paddd_xmm_xmm
instr:paddd %xmm2, %xmm1
maybe read:{ %xmm1 %xmm2 }
must read:{ %xmm1 %xmm2 }
maybe write:{ %xmm1 }
must write:{ %xmm1 }
maybe undef:{ }
must undef:{ }
required flags:{ sse2 }

circuit:vunpckhps %xmm1, %xmm2, %xmm10  #  1     0    4      OPC=vunpckhps_xmm_xmm_xmm
circuit:unpcklps %xmm2, %xmm1           #  2     0x4  3      OPC=unpcklps_xmm_xmm
circuit:phaddd %xmm10, %xmm1            #  3     0x7  6      OPC=phaddd_xmm_xmm
*/
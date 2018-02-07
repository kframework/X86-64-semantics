module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%ymm1, "SPAD1") ~>
execinstr ( vbroadcastsd %xmm1, %ymm9 , .Typedoperands ) ~>
execinstr ( vmovdqa %xmm9, %xmm10 , .Typedoperands ) ~>
execinstr ( vmovddup %xmm2, %xmm15 , .Typedoperands ) ~>
execinstr ( unpckhps %xmm15, %xmm10 , .Typedoperands ) ~>
execinstr ( movapd %xmm10, %xmm1 , .Typedoperands ) ~>
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
"YMM15" |-> (mi(256, 0):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM9" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:unpcklps_xmm_xmm
instr:unpcklps %xmm2, %xmm1
maybe read:{ %xmm1 %xmm2 }
must read:{ %xmm1 %xmm2 }
maybe write:{ %xmm1 }
must write:{ %xmm1 }
maybe undef:{ }
must undef:{ }
required flags:{ sse }

circuit:vbroadcastsd %xmm1, %ymm9  #  1     0     5      OPC=vbroadcastsd_ymm_xmm
circuit:vmovdqa %xmm9, %xmm10      #  2     0x5   5      OPC=vmovdqa_xmm_xmm
circuit:vmovddup %xmm2, %xmm15     #  3     0xa   4      OPC=vmovddup_xmm_xmm
circuit:unpckhps %xmm15, %xmm10    #  4     0xe   4      OPC=unpckhps_xmm_xmm
circuit:movapd %xmm10, %xmm1       #  5     0x12  5      OPC=movapd_xmm_xmm
*/
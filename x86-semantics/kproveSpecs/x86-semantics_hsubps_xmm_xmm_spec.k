module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%ymm1, "SPAD1") ~>
execinstr ( vpunpckldq %xmm2, %xmm1, %xmm8 , .Typedoperands ) ~>
execinstr ( vunpckhps %xmm2, %xmm1, %xmm10 , .Typedoperands ) ~>
execinstr ( vpunpckldq %xmm10, %xmm8, %xmm15 , .Typedoperands ) ~>
execinstr ( punpckhdq %xmm10, %xmm8 , .Typedoperands ) ~>
execinstr ( vsubps %xmm8, %xmm15, %xmm4 , .Typedoperands ) ~>
execinstr ( movdqu %xmm4, %xmm1 , .Typedoperands ) ~>
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
"YMM4" |-> (mi(256, 0):MInt => _)
"YMM8" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:hsubps_xmm_xmm
instr:hsubps %xmm2, %xmm1
maybe read:{ %xmm1 %xmm2 }
must read:{ %xmm1 %xmm2 }
maybe write:{ %xmm1 }
must write:{ %xmm1 }
maybe undef:{ }
must undef:{ }
required flags:{ pni }

circuit:vpunpckldq %xmm2, %xmm1, %xmm8    #  1     0     4      OPC=vpunpckldq_xmm_xmm_xmm
circuit:vunpckhps %xmm2, %xmm1, %xmm10    #  2     0x4   4      OPC=vunpckhps_xmm_xmm_xmm
circuit:vpunpckldq %xmm10, %xmm8, %xmm15  #  3     0x8   5      OPC=vpunpckldq_xmm_xmm_xmm
circuit:punpckhdq %xmm10, %xmm8           #  4     0xd   5      OPC=punpckhdq_xmm_xmm
circuit:vsubps %xmm8, %xmm15, %xmm4       #  5     0x12  5      OPC=vsubps_xmm_xmm_xmm
circuit:movdqu %xmm4, %xmm1               #  6     0x17  4      OPC=movdqu_xmm_xmm
*/
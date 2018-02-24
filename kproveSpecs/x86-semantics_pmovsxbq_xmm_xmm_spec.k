module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%ymm1, "SPAD1") ~>
execinstr ( vpmovsxdq %xmm2, %xmm8 , .Typedoperands ) ~>
execinstr ( vpmovsxbd %xmm8, %ymm4 , .Typedoperands ) ~>
execinstr ( pmovsxdq %xmm4, %xmm1 , .Typedoperands ) ~>
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
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM4" |-> (mi(256, 0):MInt => _)
"YMM8" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:pmovsxbq_xmm_xmm
instr:pmovsxbq %xmm2, %xmm1
maybe read:{ %xmm2 }
must read:{ %xmm2 }
maybe write:{ %xmm1 }
must write:{ %xmm1 }
maybe undef:{ }
must undef:{ }
required flags:{ sse4_1 }

circuit:vpmovsxdq %xmm2, %xmm8  #  1     0    5      OPC=vpmovsxdq_xmm_xmm
circuit:vpmovsxbd %xmm8, %ymm4  #  2     0x5  5      OPC=vpmovsxbd_ymm_xmm
circuit:pmovsxdq %xmm4, %xmm1   #  3     0xa  5      OPC=pmovsxdq_xmm_xmm
*/
module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%ymm1, "SPAD1") ~>
execinstr ( punpckhqdq %xmm1, %xmm2 , .Typedoperands ) ~>
split2NToN(%xmm2,  %r12, %r13 , 64) ~>
combineNTo2N(%r12,  %r13, %xmm1, 64, 128, 64) ~>
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
"R12" |-> (mi(64, 0):MInt => _)
"R13" |-> (mi(64, 0):MInt => _)
"YMM1" |-> (mi(256, ?I1:Int):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:movhlps_xmm_xmm
instr:movhlps %xmm2, %xmm1
maybe read:{ %xmm1 %xmm2 }
must read:{ %xmm1 %xmm2 }
maybe write:{ %xmm1 }
must write:{ %xmm1 }
maybe undef:{ }
must undef:{ }
required flags:{ sse }

circuit:punpckhqdq %xmm1, %xmm2           #  1     0    4      OPC=punpckhqdq_xmm_xmm
circuit:callq .move_128_064_xmm2_r12_r13  #  2     0x4  5      OPC=callq_label
circuit:callq .move_064_128_r12_r13_xmm1  #  3     0x9  5      OPC=callq_label
*/
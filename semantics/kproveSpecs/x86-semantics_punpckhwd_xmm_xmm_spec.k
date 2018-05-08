module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%ymm1, "SPAD1") ~>
execinstr ( unpckhpd %xmm2, %xmm1 , .Typedoperands ) ~>
splitXmmToR32( %xmm1, %xmm4, %xmm5, %xmm6, %xmm7, 128 ) ~>
execinstr ( punpckhqdq %xmm4, %xmm2 , .Typedoperands ) ~>
execinstr ( punpcklwd %xmm2, %xmm1 , .Typedoperands ) ~>
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
"YMM5" |-> (mi(256, 0):MInt => _)
"YMM6" |-> (mi(256, 0):MInt => _)
"YMM7" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:punpckhwd_xmm_xmm
instr:punpckhwd %xmm2, %xmm1
maybe read:{ %xmm1 %xmm2 }
must read:{ %xmm1 %xmm2 }
maybe write:{ %xmm1 }
must write:{ %xmm1 }
maybe undef:{ }
must undef:{ }
required flags:{ sse2 }

circuit:unpckhpd %xmm2, %xmm1                         #  1     0     4      OPC=unpckhpd_xmm_xmm
circuit:callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  2     0x4   5      OPC=callq_label
circuit:punpckhqdq %xmm4, %xmm2                       #  3     0x9   4      OPC=punpckhqdq_xmm_xmm
circuit:punpcklwd %xmm2, %xmm1                        #  4     0xd   4      OPC=punpcklwd_xmm_xmm
*/
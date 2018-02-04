module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%ymm1, "SPAD1") ~>
execinstr ( movdqa %xmm1, %xmm0 , .Typedoperands ) ~>
splitXmmToR32( %xmm1, %xmm8, %xmm9, %xmm10, %xmm11, 128 ) ~>
execinstr ( vmulps %xmm2, %xmm0, %xmm8 , .Typedoperands ) ~>
combineR32ToXmm( %xmm8, %xmm9, %xmm10, %xmm11, %xmm1 ) ~>
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
"YMM10" |-> (mi(256, 0):MInt => _)
"YMM11" |-> (mi(256, 0):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM8" |-> (mi(256, 0):MInt => _)
"YMM9" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:mulss_xmm_xmm
instr:mulss %xmm2, %xmm1
maybe read:{ %xmm1 %xmm2 }
must read:{ %xmm1 %xmm2 }
maybe write:{ %xmm1 }
must write:{ %xmm1 }
maybe undef:{ }
must undef:{ }
required flags:{ sse }

circuit:movdqa %xmm1, %xmm0                             #  1     0     4      OPC=movdqa_xmm_xmm
circuit:callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label
circuit:vmulps %xmm2, %xmm0, %xmm8                      #  3     0x9   4      OPC=vmulps_xmm_xmm_xmm
circuit:callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  4     0xd   5      OPC=callq_label
*/
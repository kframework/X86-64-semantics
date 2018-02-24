module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%ymm1, "SPAD1") ~>
split2NToN(%xmm2,  %xmm12, %xmm13 , 64) ~>
splitXmmToR32( %xmm1, %xmm8, %xmm9, %xmm10, %xmm11, 128 ) ~>
execinstr ( vmaxss %xmm13, %xmm13, %xmm0 , .Typedoperands ) ~>
execinstr ( vmovss %xmm11, %xmm13, %xmm9 , .Typedoperands ) ~>
execinstr ( movsldup %xmm0, %xmm13 , .Typedoperands ) ~>
execinstr ( vmovss %xmm10, %xmm13, %xmm8 , .Typedoperands ) ~>
combineNTo2N(%xmm8,  %xmm9, %xmm1, 64, 128, 128) ~>
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
"YMM12" |-> (mi(256, 0):MInt => _)
"YMM13" |-> (mi(256, 0):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM8" |-> (mi(256, 0):MInt => _)
"YMM9" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:unpckhps_xmm_xmm
instr:unpckhps %xmm2, %xmm1
maybe read:{ %xmm1 %xmm2 }
must read:{ %xmm1 %xmm2 }
maybe write:{ %xmm1 }
must write:{ %xmm1 }
maybe undef:{ }
must undef:{ }
required flags:{ sse }

circuit:callq .move_128_64_xmm2_xmm12_xmm13             #  1     0     5      OPC=callq_label
circuit:callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label
circuit:vmaxss %xmm13, %xmm13, %xmm0                    #  3     0xa   5      OPC=vmaxss_xmm_xmm_xmm
circuit:vmovss %xmm11, %xmm13, %xmm9                    #  4     0xf   5      OPC=vmovss_xmm_xmm_xmm
circuit:movsldup %xmm0, %xmm13                          #  5     0x14  5      OPC=movsldup_xmm_xmm
circuit:vmovss %xmm10, %xmm13, %xmm8                    #  6     0x19  5      OPC=vmovss_xmm_xmm_xmm
circuit:callq .move_64_128_xmm8_xmm9_xmm1               #  7     0x1e  5      OPC=callq_label
*/
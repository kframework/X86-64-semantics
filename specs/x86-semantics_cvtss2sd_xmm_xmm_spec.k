module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%ymm1, "SPAD1") ~>
split2NToN(%xmm1,  %xmm12, %xmm13 , 64) ~>
execinstr ( vcvtps2pd %xmm2, %ymm12 , .Typedoperands ) ~>
combineNTo2N(%xmm12,  %xmm13, %xmm1, 64, 128, 128) ~>
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
"YMM12" |-> (mi(256, 0):MInt => _)
"YMM13" |-> (mi(256, 0):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:cvtss2sd_xmm_xmm
instr:cvtss2sd %xmm2, %xmm1
maybe read:{ %xmm1 %xmm2 %mxcsr::rc[0] }
must read:{ %xmm1 %xmm2 %mxcsr::rc[0] }
maybe write:{ %xmm1 }
must write:{ %xmm1 }
maybe undef:{ }
must undef:{ }
required flags:{ sse2 }

circuit:callq .move_128_64_xmm1_xmm12_xmm13  #  1     0    5      OPC=callq_label
circuit:vcvtps2pd %xmm2, %ymm12              #  2     0x5  4      OPC=vcvtps2pd_ymm_xmm
circuit:callq .move_64_128_xmm12_xmm13_xmm1  #  3     0x9  5      OPC=callq_label
*/
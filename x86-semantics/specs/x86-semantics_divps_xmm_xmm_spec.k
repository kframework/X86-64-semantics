module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%ymm1, "SPAD1") ~>
execinstr ( vmovupd %xmm2, %xmm5 , .Typedoperands ) ~>
execinstr ( vmovupd %xmm1, %xmm6 , .Typedoperands ) ~>
execinstr ( vdivps %ymm5, %ymm6, %ymm2 , .Typedoperands ) ~>
split2NToN(%xmm2,  %xmm8, %xmm9 , 64) ~>
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
"YMM1" |-> (mi(256, ?I1:Int):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM5" |-> (mi(256, 0):MInt => _)
"YMM6" |-> (mi(256, 0):MInt => _)
"YMM8" |-> (mi(256, 0):MInt => _)
"YMM9" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:divps_xmm_xmm
instr:divps %xmm2, %xmm1
maybe read:{ %xmm1 %xmm2 }
must read:{ %xmm1 %xmm2 }
maybe write:{ %xmm1 }
must write:{ %xmm1 }
maybe undef:{ }
must undef:{ }
required flags:{ sse }

circuit:vmovupd %xmm2, %xmm5               #  1     0     4      OPC=vmovupd_xmm_xmm
circuit:vmovupd %xmm1, %xmm6               #  2     0x4   4      OPC=vmovupd_xmm_xmm
circuit:vdivps %ymm5, %ymm6, %ymm2         #  3     0x8   4      OPC=vdivps_ymm_ymm_ymm
circuit:callq .move_128_64_xmm2_xmm8_xmm9  #  4     0xc   5      OPC=callq_label
circuit:callq .move_64_128_xmm8_xmm9_xmm1  #  5     0x11  5      OPC=callq_label
*/
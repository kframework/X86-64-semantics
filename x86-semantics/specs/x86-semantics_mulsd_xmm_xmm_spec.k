module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%ymm1, "SPAD1") ~>
execinstr ( vmovupd %xmm2, %xmm4 , .Typedoperands ) ~>
split2NToN(%xmm1,  %xmm12, %xmm13 , 64) ~>
execinstr ( vmovdqa %xmm4, %xmm14 , .Typedoperands ) ~>
combineNTo2N(%xmm12,  %xmm13, %ymm3, 128, 256, 128) ~>
execinstr ( vmulpd %ymm14, %ymm3, %ymm12 , .Typedoperands ) ~>
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
"YMM14" |-> (mi(256, 0):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM3" |-> (mi(256, 0):MInt => _)
"YMM4" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:mulsd_xmm_xmm
instr:mulsd %xmm2, %xmm1
maybe read:{ %xmm1 %xmm2 }
must read:{ %xmm1 %xmm2 }
maybe write:{ %xmm1 }
must write:{ %xmm1 }
maybe undef:{ }
must undef:{ }
required flags:{ sse2 }

circuit:vmovupd %xmm2, %xmm4                  #  1     0     4      OPC=vmovupd_xmm_xmm
circuit:callq .move_128_64_xmm1_xmm12_xmm13   #  2     0x4   5      OPC=callq_label
circuit:vmovdqa %xmm4, %xmm14                 #  3     0x9   4      OPC=vmovdqa_xmm_xmm
circuit:callq .move_128_256_xmm12_xmm13_ymm3  #  4     0xd   5      OPC=callq_label
circuit:vmulpd %ymm14, %ymm3, %ymm12          #  5     0x12  5      OPC=vmulpd_ymm_ymm_ymm
circuit:callq .move_64_128_xmm12_xmm13_xmm1   #  6     0x17  5      OPC=callq_label
*/
module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%ymm1, "SPAD1") ~>
execinstr ( vpmovzxdq %xmm2, %xmm0 , .Typedoperands ) ~>
execinstr ( vmovaps %ymm0, %ymm2 , .Typedoperands ) ~>
execinstr ( vcvtdq2pd %ymm2, %ymm3 , .Typedoperands ) ~>
split2NToN(%ymm3,  %xmm12, %xmm13 , 128) ~>
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
"YMM0" |-> (mi(256, 0):MInt => _)
"YMM1" |-> (mi(256, ?I1:Int):MInt => _)
"YMM12" |-> (mi(256, 0):MInt => _)
"YMM13" |-> (mi(256, 0):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM3" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:cvtdq2pd_xmm_xmm
instr:cvtdq2pd %xmm2, %xmm1
maybe read:{ %xmm2 }
must read:{ %xmm2 }
maybe write:{ %xmm1 }
must write:{ %xmm1 }
maybe undef:{ }
must undef:{ }
required flags:{ sse2 }

circuit:vpmovzxdq %xmm2, %xmm0                #  1     0     5      OPC=vpmovzxdq_xmm_xmm
circuit:vmovaps %ymm0, %ymm2                  #  2     0x5   4      OPC=vmovaps_ymm_ymm
circuit:vcvtdq2pd %ymm2, %ymm3                #  3     0x9   4      OPC=vcvtdq2pd_ymm_ymm
circuit:callq .move_256_128_ymm3_xmm12_xmm13  #  4     0xd   5      OPC=callq_label
circuit:callq .move_64_128_xmm12_xmm13_xmm1   #  5     0x12  5      OPC=callq_label
*/
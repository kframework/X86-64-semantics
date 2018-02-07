module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%ymm1, "SPAD1") ~>
execinstr ( vpmovzxbq %xmm2, %xmm2 , .Typedoperands ) ~>
split2NToN(%xmm2,  %xmm8, %xmm9 , 64) ~>
execinstr ( movddup %xmm8, %xmm1 , .Typedoperands ) ~>
execinstr ( vorpd %ymm2, %ymm2, %ymm15 , .Typedoperands ) ~>
execinstr ( unpckhpd %xmm15, %xmm1 , .Typedoperands ) ~>
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
"YMM15" |-> (mi(256, 0):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM8" |-> (mi(256, 0):MInt => _)
"YMM9" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:pmovzxbq_xmm_xmm
instr:pmovzxbq %xmm2, %xmm1
maybe read:{ %xmm2 }
must read:{ %xmm2 }
maybe write:{ %xmm1 }
must write:{ %xmm1 }
maybe undef:{ }
must undef:{ }
required flags:{ sse4_1 }

circuit:vpmovzxbq %xmm2, %xmm2             #  1     0     5      OPC=vpmovzxbq_xmm_xmm
circuit:callq .move_128_64_xmm2_xmm8_xmm9  #  2     0x5   5      OPC=callq_label
circuit:movddup %xmm8, %xmm1               #  3     0xa   5      OPC=movddup_xmm_xmm
circuit:vorpd %ymm2, %ymm2, %ymm15         #  4     0xf   4      OPC=vorpd_ymm_ymm_ymm
circuit:unpckhpd %xmm15, %xmm1             #  5     0x13  5      OPC=unpckhpd_xmm_xmm
*/
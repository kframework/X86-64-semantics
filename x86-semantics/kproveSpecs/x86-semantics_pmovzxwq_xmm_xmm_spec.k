module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%ymm1, "SPAD1") ~>
splitXmmToR32( %xmm2, %xmm4, %xmm5, %xmm6, %xmm7, 128 ) ~>
execinstr ( vpmovzxwq %xmm4, %xmm3 , .Typedoperands ) ~>
execinstr ( vmovapd %xmm3, %xmm14 , .Typedoperands ) ~>
execinstr ( movdqa %xmm14, %xmm1 , .Typedoperands ) ~>
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
"YMM14" |-> (mi(256, 0):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM3" |-> (mi(256, 0):MInt => _)
"YMM4" |-> (mi(256, 0):MInt => _)
"YMM5" |-> (mi(256, 0):MInt => _)
"YMM6" |-> (mi(256, 0):MInt => _)
"YMM7" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:pmovzxwq_xmm_xmm
instr:pmovzxwq %xmm2, %xmm1
maybe read:{ %xmm2 }
must read:{ %xmm2 }
maybe write:{ %xmm1 }
must write:{ %xmm1 }
maybe undef:{ }
must undef:{ }
required flags:{ sse4_1 }

circuit:callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label
circuit:vpmovzxwq %xmm4, %xmm3                        #  2     0x5   5      OPC=vpmovzxwq_xmm_xmm
circuit:vmovapd %xmm3, %xmm14                         #  3     0xa   4      OPC=vmovapd_xmm_xmm
circuit:movdqa %xmm14, %xmm1                          #  4     0xe   5      OPC=movdqa_xmm_xmm
*/
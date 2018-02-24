module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
splitXmmToR32( %xmm2, %xmm4, %xmm5, %xmm6, %xmm7, 128 ) ~>
execinstr ( vpmovzxwq %xmm5, %xmm13 , .Typedoperands ) ~>
execinstr ( movddup %xmm4, %xmm4 , .Typedoperands ) ~>
combineR32ToXmm( %xmm4, %xmm5, %xmm6, %xmm7, %xmm3 ) ~>
execinstr ( vpmovzxwq %xmm3, %xmm1 , .Typedoperands ) ~>
execinstr ( vhsubps %xmm13, %xmm1, %xmm1 , .Typedoperands ) ~>
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
"YMM1" |-> (mi(256, ?I1:Int):MInt => _)
"YMM13" |-> (mi(256, 0):MInt => _)
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
opcode:vpmovzxwd_xmm_xmm
instr:vpmovzxwd %xmm2, %xmm1
maybe read:{ %xmm2 }
must read:{ %xmm2 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx }

circuit:callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label
circuit:vpmovzxwq %xmm5, %xmm13                       #  2     0x5   5      OPC=vpmovzxwq_xmm_xmm
circuit:movddup %xmm4, %xmm4                          #  3     0xa   4      OPC=movddup_xmm_xmm
circuit:callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm3  #  4     0xe   5      OPC=callq_label
circuit:vpmovzxwq %xmm3, %xmm1                        #  5     0x13  5      OPC=vpmovzxwq_xmm_xmm
circuit:vhsubps %xmm13, %xmm1, %xmm1                  #  6     0x18  5      OPC=vhsubps_xmm_xmm_xmm
*/
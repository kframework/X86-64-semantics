module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vmovdqa %xmm2, %xmm10 , .Typedoperands ) ~>
split2NToN(%xmm2,  %xmm8, %xmm9 , 64) ~>
execinstr ( vpmovzxwd %xmm9, %xmm9 , .Typedoperands ) ~>
execinstr ( vpmovzxwd %xmm10, %xmm8 , .Typedoperands ) ~>
combineNTo2N(%xmm8,  %xmm9, %ymm1, 128, 256, 128) ~>
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
"YMM10" |-> (mi(256, 0):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM8" |-> (mi(256, 0):MInt => _)
"YMM9" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vpmovzxwd_ymm_xmm
instr:vpmovzxwd %xmm2, %ymm1
maybe read:{ %xmm2 }
must read:{ %xmm2 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx2 }

circuit:vmovdqa %xmm2, %xmm10               #  1     0     4      OPC=vmovdqa_xmm_xmm
circuit:callq .move_128_64_xmm2_xmm8_xmm9   #  2     0x4   5      OPC=callq_label
circuit:vpmovzxwd %xmm9, %xmm9              #  3     0x9   5      OPC=vpmovzxwd_xmm_xmm
circuit:vpmovzxwd %xmm10, %xmm8             #  4     0xe   5      OPC=vpmovzxwd_xmm_xmm
circuit:callq .move_128_256_xmm8_xmm9_ymm1  #  5     0x13  5      OPC=callq_label
*/
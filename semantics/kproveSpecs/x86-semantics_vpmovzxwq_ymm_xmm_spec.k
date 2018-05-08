module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vpmovzxwd %xmm2, %xmm1 , .Typedoperands ) ~>
execinstr ( vpmovzxdq %xmm1, %ymm13 , .Typedoperands ) ~>
execinstr ( vorpd %ymm13, %ymm13, %ymm1 , .Typedoperands ) ~>
execinstr ( vmovdqu %ymm1, %ymm1 , .Typedoperands ) ~>
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

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vpmovzxwq_ymm_xmm
instr:vpmovzxwq %xmm2, %ymm1
maybe read:{ %xmm2 }
must read:{ %xmm2 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx2 }

circuit:vpmovzxwd %xmm2, %xmm1       #  1     0     5      OPC=vpmovzxwd_xmm_xmm
circuit:vpmovzxdq %xmm1, %ymm13      #  2     0x5   5      OPC=vpmovzxdq_ymm_xmm
circuit:vorpd %ymm13, %ymm13, %ymm1  #  3     0xa   5      OPC=vorpd_ymm_ymm_ymm
circuit:vmovdqu %ymm1, %ymm1         #  4     0xf   4      OPC=vmovdqu_ymm_ymm
*/
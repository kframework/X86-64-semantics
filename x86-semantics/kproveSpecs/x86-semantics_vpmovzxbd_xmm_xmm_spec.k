module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vpmovzxbq %xmm2, %ymm2 , .Typedoperands ) ~>
execinstr ( vhaddps %ymm2, %ymm2, %ymm2 , .Typedoperands ) ~>
split2NToN(%ymm2,  %xmm8, %xmm9 , 128) ~>
execinstr ( vmovlhps %xmm9, %xmm2, %xmm1 , .Typedoperands ) ~>
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
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM8" |-> (mi(256, 0):MInt => _)
"YMM9" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vpmovzxbd_xmm_xmm
instr:vpmovzxbd %xmm2, %xmm1
maybe read:{ %xmm2 }
must read:{ %xmm2 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx }

circuit:vpmovzxbq %xmm2, %ymm2              #  1     0     5      OPC=vpmovzxbq_ymm_xmm
circuit:vhaddps %ymm2, %ymm2, %ymm2         #  2     0x5   4      OPC=vhaddps_ymm_ymm_ymm
circuit:callq .move_256_128_ymm2_xmm8_xmm9  #  3     0x9   5      OPC=callq_label
circuit:vmovlhps %xmm9, %xmm2, %xmm1        #  4     0xe   5      OPC=vmovlhps_xmm_xmm_xmm
*/
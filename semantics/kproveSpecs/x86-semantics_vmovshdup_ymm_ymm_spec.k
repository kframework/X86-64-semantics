module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
split2NToN(%ymm2,  %xmm8, %xmm9 , 128) ~>
execinstr ( vmovshdup %xmm8, %xmm3 , .Typedoperands ) ~>
execinstr ( vmovshdup %xmm9, %xmm9 , .Typedoperands ) ~>
combineNTo2N(%xmm8,  %xmm9, %ymm1, 128, 256, 128) ~>
execinstr ( movsldup %xmm3, %xmm1 , .Typedoperands ) ~>
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
"YMM3" |-> (mi(256, 0):MInt => _)
"YMM8" |-> (mi(256, 0):MInt => _)
"YMM9" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vmovshdup_ymm_ymm
instr:vmovshdup %ymm2, %ymm1
maybe read:{ %ymm2 }
must read:{ %ymm2 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx }

circuit:callq .move_256_128_ymm2_xmm8_xmm9  #  1     0     5      OPC=callq_label
circuit:vmovshdup %xmm8, %xmm3              #  2     0x5   5      OPC=vmovshdup_xmm_xmm
circuit:vmovshdup %xmm9, %xmm9              #  3     0xa   5      OPC=vmovshdup_xmm_xmm
circuit:callq .move_128_256_xmm8_xmm9_ymm1  #  4     0xf   5      OPC=callq_label
circuit:movsldup %xmm3, %xmm1               #  5     0x14  4      OPC=movsldup_xmm_xmm
*/
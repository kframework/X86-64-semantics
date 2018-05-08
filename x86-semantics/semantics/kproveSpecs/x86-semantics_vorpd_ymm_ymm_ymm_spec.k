module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
split2NToN(%ymm3,  %xmm8, %xmm9 , 128) ~>
execinstr ( por %xmm2, %xmm8 , .Typedoperands ) ~>
split2NToN(%ymm2,  %xmm10, %xmm11 , 128) ~>
execinstr ( orpd %xmm11, %xmm9 , .Typedoperands ) ~>
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
"YMM11" |-> (mi(256, 0):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM3" |-> (mi(256, ?I3:Int):MInt => _)
"YMM8" |-> (mi(256, 0):MInt => _)
"YMM9" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vorpd_ymm_ymm_ymm
instr:vorpd %ymm3, %ymm2, %ymm1
maybe read:{ %ymm2 %ymm3 }
must read:{ %ymm2 %ymm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx }

circuit:callq .move_256_128_ymm3_xmm8_xmm9    #  1     0     5      OPC=callq_label
circuit:por %xmm2, %xmm8                      #  2     0x5   5      OPC=por_xmm_xmm
circuit:callq .move_256_128_ymm2_xmm10_xmm11  #  3     0xa   5      OPC=callq_label
circuit:orpd %xmm11, %xmm9                    #  4     0xf   5      OPC=orpd_xmm_xmm
circuit:callq .move_128_256_xmm8_xmm9_ymm1    #  5     0x14  5      OPC=callq_label
*/
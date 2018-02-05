module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
splitXmmToR32( %xmm2, %xmm8, %xmm9, %xmm10, %xmm11, 128 ) ~>
execinstr ( vmovsldup %xmm11, %xmm11 , .Typedoperands ) ~>
execinstr ( vmovdqa %xmm11, %xmm3 , .Typedoperands ) ~>
execinstr ( vmovsldup %xmm9, %xmm1 , .Typedoperands ) ~>
execinstr ( unpcklpd %xmm3, %xmm1 , .Typedoperands ) ~>
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
"YMM3" |-> (mi(256, 0):MInt => _)
"YMM8" |-> (mi(256, 0):MInt => _)
"YMM9" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vmovshdup_xmm_xmm
instr:vmovshdup %xmm2, %xmm1
maybe read:{ %xmm2 }
must read:{ %xmm2 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx }

circuit:callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label
circuit:vmovsldup %xmm11, %xmm11                        #  2     0x5   5      OPC=vmovsldup_xmm_xmm
circuit:vmovdqa %xmm11, %xmm3                           #  3     0xa   5      OPC=vmovdqa_xmm_xmm
circuit:vmovsldup %xmm9, %xmm1                          #  4     0xf   5      OPC=vmovsldup_xmm_xmm
circuit:unpcklpd %xmm3, %xmm1                           #  5     0x14  4      OPC=unpcklpd_xmm_xmm
*/
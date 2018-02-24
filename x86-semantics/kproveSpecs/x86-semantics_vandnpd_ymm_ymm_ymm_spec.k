module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
split2NToN(%ymm3,  %xmm12, %xmm13 , 128) ~>
execinstr ( pandn %xmm3, %xmm2 , .Typedoperands ) ~>
split2NToN(%ymm2,  %xmm10, %xmm11 , 128) ~>
execinstr ( vmovdqa %xmm10, %xmm14 , .Typedoperands ) ~>
execinstr ( vandnpd %xmm13, %xmm11, %xmm11 , .Typedoperands ) ~>
combineNTo2N(%xmm10,  %xmm11, %ymm3, 128, 256, 128) ~>
execinstr ( vorpd %ymm3, %ymm14, %ymm1 , .Typedoperands ) ~>
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
"YMM12" |-> (mi(256, 0):MInt => _)
"YMM13" |-> (mi(256, 0):MInt => _)
"YMM14" |-> (mi(256, 0):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM3" |-> (mi(256, ?I3:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vandnpd_ymm_ymm_ymm
instr:vandnpd %ymm3, %ymm2, %ymm1
maybe read:{ %ymm2 %ymm3 }
must read:{ %ymm2 %ymm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx }

circuit:callq .move_256_128_ymm3_xmm12_xmm13  #  1     0     5      OPC=callq_label
circuit:pandn %xmm3, %xmm2                    #  2     0x5   4      OPC=pandn_xmm_xmm
circuit:callq .move_256_128_ymm2_xmm10_xmm11  #  3     0x9   5      OPC=callq_label
circuit:vmovdqa %xmm10, %xmm14                #  4     0xe   5      OPC=vmovdqa_xmm_xmm
circuit:vandnpd %xmm13, %xmm11, %xmm11        #  5     0x13  5      OPC=vandnpd_xmm_xmm_xmm
circuit:callq .move_128_256_xmm10_xmm11_ymm3  #  6     0x18  5      OPC=callq_label
circuit:vorpd %ymm3, %ymm14, %ymm1            #  7     0x1d  4      OPC=vorpd_ymm_ymm_ymm
*/
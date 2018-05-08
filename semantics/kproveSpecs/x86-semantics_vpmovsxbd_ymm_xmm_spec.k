module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
splitXmmToR32( %xmm2, %xmm8, %xmm9, %xmm10, %xmm11, 128 ) ~>
execinstr ( vpmovsxbd %xmm9, %xmm1 , .Typedoperands ) ~>
execinstr ( vmovapd %xmm1, %xmm9 , .Typedoperands ) ~>
combineNTo2N(%xmm8,  %xmm9, %ymm1, 128, 256, 128) ~>
execinstr ( pmovsxbd %xmm2, %xmm1 , .Typedoperands ) ~>
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
"YMM8" |-> (mi(256, 0):MInt => _)
"YMM9" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vpmovsxbd_ymm_xmm
instr:vpmovsxbd %xmm2, %ymm1
maybe read:{ %xmm2 }
must read:{ %xmm2 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx2 }

circuit:callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label
circuit:vpmovsxbd %xmm9, %xmm1                          #  2     0x5   5      OPC=vpmovsxbd_xmm_xmm
circuit:vmovapd %xmm1, %xmm9                            #  3     0xa   4      OPC=vmovapd_xmm_xmm
circuit:callq .move_128_256_xmm8_xmm9_ymm1              #  4     0xe   5      OPC=callq_label
circuit:pmovsxbd %xmm2, %xmm1                           #  5     0x13  5      OPC=pmovsxbd_xmm_xmm
*/
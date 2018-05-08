module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
split2NToN(%xmm2,  %xmm10, %xmm11 , 64) ~>
execinstr ( vpunpcklqdq %xmm10, %xmm10, %xmm11 , .Typedoperands ) ~>
execinstr ( vmovdqu %ymm11, %ymm10 , .Typedoperands ) ~>
combineNTo2N(%xmm10,  %xmm11, %ymm1, 128, 256, 128) ~>
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

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vbroadcastsd_ymm_xmm
instr:vbroadcastsd %xmm2, %ymm1
maybe read:{ %xmm2 }
must read:{ %xmm2 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx2 }

circuit:callq .move_128_64_xmm2_xmm10_xmm11   #  1     0     5      OPC=callq_label
circuit:vpunpcklqdq %xmm10, %xmm10, %xmm11    #  2     0x5   5      OPC=vpunpcklqdq_xmm_xmm_xmm
circuit:vmovdqu %ymm11, %ymm10                #  3     0xa   5      OPC=vmovdqu_ymm_ymm
circuit:callq .move_128_256_xmm10_xmm11_ymm1  #  4     0xf   5      OPC=callq_label
*/
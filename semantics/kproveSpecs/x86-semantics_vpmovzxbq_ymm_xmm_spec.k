module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vbroadcastss %xmm2, %xmm1 , .Typedoperands ) ~>
split2NToN(%xmm2,  %xmm10, %xmm11 , 64) ~>
movPosOfRegToByte( 11, %ymm1, %r9b ) ~>
movByteToPosOfReg( %r9b, 24, %ymm1 ) ~>
movPosOfRegToByte( 6, %ymm1, %r9b ) ~>
movByteToPosOfReg( %r9b, 16, %ymm1 ) ~>
execinstr ( pmovzxbq %xmm10, %xmm1 , .Typedoperands ) ~>
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
"R9" |-> (mi(64, 0):MInt => _)
"YMM1" |-> (mi(256, ?I1:Int):MInt => _)
"YMM10" |-> (mi(256, 0):MInt => _)
"YMM11" |-> (mi(256, 0):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vpmovzxbq_ymm_xmm
instr:vpmovzxbq %xmm2, %ymm1
maybe read:{ %xmm2 }
must read:{ %xmm2 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx2 }

circuit:vbroadcastss %xmm2, %xmm1            #  1     0     5      OPC=vbroadcastss_xmm_xmm
circuit:callq .move_128_64_xmm2_xmm10_xmm11  #  2     0x5   5      OPC=callq_label
circuit:callq .move_byte_11_of_ymm1_to_r9b   #  3     0xa   5      OPC=callq_label
circuit:callq .move_r9b_to_byte_24_of_ymm1   #  4     0xf   5      OPC=callq_label
circuit:callq .move_byte_6_of_ymm1_to_r9b    #  5     0x14  5      OPC=callq_label
circuit:callq .move_r9b_to_byte_16_of_ymm1   #  6     0x19  5      OPC=callq_label
circuit:pmovzxbq %xmm10, %xmm1               #  7     0x1e  6      OPC=pmovzxbq_xmm_xmm
*/
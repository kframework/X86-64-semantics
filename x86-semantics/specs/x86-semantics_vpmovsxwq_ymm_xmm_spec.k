module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
split2NToN(%xmm2,  %r8, %r9 , 64) ~>
split2NToN(%xmm2,  %xmm12, %xmm13 , 64) ~>
execinstr ( vpmovsxwd %xmm12, %ymm1 , .Typedoperands ) ~>
movByteToPosOfReg( %r9b, 25, %ymm1 ) ~>
execinstr ( vpmovsxdq %xmm1, %ymm1 , .Typedoperands ) ~>
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
"R8" |-> (mi(64, 0):MInt => _)
"R9" |-> (mi(64, 0):MInt => _)
"YMM1" |-> (mi(256, ?I1:Int):MInt => _)
"YMM12" |-> (mi(256, 0):MInt => _)
"YMM13" |-> (mi(256, 0):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vpmovsxwq_ymm_xmm
instr:vpmovsxwq %xmm2, %ymm1
maybe read:{ %xmm2 }
must read:{ %xmm2 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx2 }

circuit:callq .move_128_064_xmm2_r8_r9       #  1     0     5      OPC=callq_label
circuit:callq .move_128_64_xmm2_xmm12_xmm13  #  2     0x5   5      OPC=callq_label
circuit:vpmovsxwd %xmm12, %ymm1              #  3     0xa   5      OPC=vpmovsxwd_ymm_xmm
circuit:callq .move_r9b_to_byte_25_of_ymm1   #  4     0xf   5      OPC=callq_label
circuit:vpmovsxdq %xmm1, %ymm1               #  5     0x14  5      OPC=vpmovsxdq_ymm_xmm
*/
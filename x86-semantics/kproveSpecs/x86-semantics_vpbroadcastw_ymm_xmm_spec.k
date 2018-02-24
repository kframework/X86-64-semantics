module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vbroadcastss %xmm2, %ymm1 , .Typedoperands ) ~>
movPosOfRegToByte( 1, %ymm1, %r8b ) ~>
movPosOfRegToByte( 0, %ymm1, %r9b ) ~>
movByteToPosOfReg( %r8b, 3, %ymm1 ) ~>
movByteToPosOfReg( %r9b, 2, %ymm1 ) ~>
execinstr ( vbroadcastss %xmm1, %ymm1 , .Typedoperands ) ~>
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
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vpbroadcastw_ymm_xmm
instr:vpbroadcastw %xmm2, %ymm1
maybe read:{ %xmm2 }
must read:{ %xmm2 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx2 }

circuit:vbroadcastss %xmm2, %ymm1          #  1     0     5      OPC=vbroadcastss_ymm_xmm
circuit:callq .move_byte_1_of_ymm1_to_r8b  #  2     0x5   5      OPC=callq_label
circuit:callq .move_byte_0_of_ymm1_to_r9b  #  3     0xa   5      OPC=callq_label
circuit:callq .move_r8b_to_byte_3_of_ymm1  #  4     0xf   5      OPC=callq_label
circuit:callq .move_r9b_to_byte_2_of_ymm1  #  5     0x14  5      OPC=callq_label
circuit:vbroadcastss %xmm1, %ymm1          #  6     0x19  5      OPC=vbroadcastss_ymm_xmm
*/
module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
split2NToN(%xmm2,  %r12, %r13 , 64) ~>
execinstr ( movsbw %r12b, %ax , .Typedoperands ) ~>
execinstr ( movw %ax, %r12w , .Typedoperands ) ~>
combineNTo2N(%r12,  %r13, %xmm2, 64, 128, 64) ~>
split2NToN(%xmm2,  %r8, %r9 , 64) ~>
execinstr ( vpbroadcastd %xmm2, %ymm1 , .Typedoperands ) ~>
movByteToPosOfReg( %r8b, 3, %ymm1 ) ~>
movByteToPosOfReg( %r8b, 2, %ymm1 ) ~>
movByteToPosOfReg( %r8b, 1, %ymm1 ) ~>
execinstr ( vpbroadcastd %xmm1, %xmm1 , .Typedoperands ) ~>
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
"R12" |-> (mi(64, 0):MInt => _)
"R13" |-> (mi(64, 0):MInt => _)
"R8" |-> (mi(64, 0):MInt => _)
"R9" |-> (mi(64, 0):MInt => _)
"RAX" |-> (mi(64, 0):MInt => _)
"YMM1" |-> (mi(256, ?I1:Int):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vpbroadcastb_xmm_xmm
instr:vpbroadcastb %xmm2, %xmm1
maybe read:{ %xmm2 }
must read:{ %xmm2 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx2 }

circuit:callq .move_128_064_xmm2_r12_r13   #  1     0     5      OPC=callq_label
circuit:movsbw %r12b, %ax                  #  2     0x5   5      OPC=movsbw_r16_r8
circuit:movw %ax, %r12w                    #  3     0xa   4      OPC=movw_r16_r16
circuit:callq .move_064_128_r12_r13_xmm2   #  4     0xe   5      OPC=callq_label
circuit:callq .move_128_064_xmm2_r8_r9     #  5     0x13  5      OPC=callq_label
circuit:vpbroadcastd %xmm2, %ymm1          #  6     0x18  5      OPC=vpbroadcastd_ymm_xmm
circuit:callq .move_r8b_to_byte_3_of_ymm1  #  7     0x1d  5      OPC=callq_label
circuit:callq .move_r8b_to_byte_2_of_ymm1  #  8     0x22  5      OPC=callq_label
circuit:callq .move_r8b_to_byte_1_of_ymm1  #  9     0x27  5      OPC=callq_label
circuit:vpbroadcastd %xmm1, %xmm1          #  10    0x2c  5      OPC=vpbroadcastd_xmm_xmm
*/
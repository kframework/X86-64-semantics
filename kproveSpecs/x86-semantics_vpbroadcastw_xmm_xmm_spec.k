module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
splitXmmToR32( %xmm2, %r10d, %r11d, %r12d, %r13d, 32 ) ~>
combineNTo2N(%r10w,  %r11w, %ebx, 16, 32, 16) ~>
split2NToN(%bx,  %r8b, %r9b , 08) ~>
movByteToPosOfReg( %r9b, 3, %rbx ) ~>
execinstr ( vmovd %ebx, %xmm1 , .Typedoperands ) ~>
movByteToPosOfReg( %r9b, 19, %ymm1 ) ~>
movByteToPosOfReg( %r8b, 2, %ymm1 ) ~>
execinstr ( vbroadcastss %xmm1, %xmm1 , .Typedoperands ) ~>
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
"R10" |-> (mi(64, 0):MInt => _)
"R11" |-> (mi(64, 0):MInt => _)
"R12" |-> (mi(64, 0):MInt => _)
"R13" |-> (mi(64, 0):MInt => _)
"R8" |-> (mi(64, 0):MInt => _)
"R9" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, 0):MInt => _)
"YMM1" |-> (mi(256, ?I1:Int):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vpbroadcastw_xmm_xmm
instr:vpbroadcastw %xmm2, %xmm1
maybe read:{ %xmm2 }
must read:{ %xmm2 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx2 }

circuit:callq .move_128_032_xmm2_r10d_r11d_r12d_r13d  #  1     0     5      OPC=callq_label
circuit:callq .move_016_032_r10w_r11w_ebx             #  2     0x5   5      OPC=callq_label
circuit:callq .move_016_008_bx_r8b_r9b                #  3     0xa   5      OPC=callq_label
circuit:callq .move_r9b_to_byte_3_of_rbx              #  4     0xf   5      OPC=callq_label
circuit:vmovd %ebx, %xmm1                             #  5     0x14  4      OPC=vmovd_xmm_r32
circuit:callq .move_r9b_to_byte_19_of_ymm1            #  6     0x18  5      OPC=callq_label
circuit:callq .move_r8b_to_byte_2_of_ymm1             #  7     0x1d  5      OPC=callq_label
circuit:vbroadcastss %xmm1, %xmm1                     #  8     0x22  5      OPC=vbroadcastss_xmm_xmm
*/
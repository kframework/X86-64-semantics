module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vzeroall  .Typedoperands ) ~>
split2NToN(%bx,  %r8b, %r9b , 08) ~>
movByteToPosOfReg( %r8b, 0, %ymm1 ) ~>
movByteToPosOfReg( %r9b, 1, %ymm1 ) ~>
execinstr ( xchgb %r8b, %bl , .Typedoperands ) ~>
movByteToPosOfReg( %r9b, 3, %ymm1 ) ~>
split2NToN(%ebx,  %r8w, %r9w , 16) ~>
movPosOfRegToByte( 3, %rbx, %r8b ) ~>
movByteToPosOfReg( %r9b, 2, %ymm1 ) ~>
movByteToPosOfReg( %r8b, 3, %ymm1 ) ~>
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
"RBX" |-> (mi(64, ?I1:Int):MInt => _)
"YMM0" |-> (mi(256, 0):MInt => _)
"YMM1" |-> (mi(256, ?I2:Int):MInt => _)
"YMM10" |-> (mi(256, 0):MInt => _)
"YMM11" |-> (mi(256, 0):MInt => _)
"YMM12" |-> (mi(256, 0):MInt => _)
"YMM13" |-> (mi(256, 0):MInt => _)
"YMM14" |-> (mi(256, 0):MInt => _)
"YMM15" |-> (mi(256, 0):MInt => _)
"YMM2" |-> (mi(256, 0):MInt => _)
"YMM3" |-> (mi(256, 0):MInt => _)
"YMM4" |-> (mi(256, 0):MInt => _)
"YMM5" |-> (mi(256, 0):MInt => _)
"YMM6" |-> (mi(256, 0):MInt => _)
"YMM7" |-> (mi(256, 0):MInt => _)
"YMM8" |-> (mi(256, 0):MInt => _)
"YMM9" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vmovd_xmm_r32
instr:vmovd %ebx, %xmm1
maybe read:{ %ebx }
must read:{ %ebx }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx }

circuit:vzeroall                           #  1     0     3      OPC=vzeroall
circuit:callq .move_016_008_bx_r8b_r9b     #  2     0x3   5      OPC=callq_label
circuit:callq .move_r8b_to_byte_0_of_ymm1  #  3     0x8   5      OPC=callq_label
circuit:callq .move_r9b_to_byte_1_of_ymm1  #  4     0xd   5      OPC=callq_label
circuit:xchgb %r8b, %bl                    #  5     0x12  3      OPC=xchgb_r8_r8
circuit:callq .move_r9b_to_byte_3_of_ymm1  #  6     0x15  5      OPC=callq_label
circuit:callq .move_032_016_ebx_r8w_r9w    #  7     0x1a  5      OPC=callq_label
circuit:callq .move_byte_3_of_rbx_to_r8b   #  8     0x1f  5      OPC=callq_label
circuit:callq .move_r9b_to_byte_2_of_ymm1  #  9     0x24  5      OPC=callq_label
circuit:callq .move_r8b_to_byte_3_of_ymm1  #  10    0x29  5      OPC=callq_label
*/
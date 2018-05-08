module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
split2NToN(%ebx,  %r8w, %r9w , 16) ~>
combineNTo2N(%r8w,  %r9w, %ecx, 16, 32, 16) ~>
movPosOfRegToByte( 3, %rbx, %r8b ) ~>
execinstr ( notl %ebx , .Typedoperands ) ~>
combineNTo2N(%r8b,  %r9b, %bx, 08, 16, 08) ~>
split2NToN(%cx,  %r8b, %r9b , 08) ~>
movByteToPosOfReg( %r8b, 3, %rbx ) ~>
movByteToPosOfReg( %r9b, 2, %rbx ) ~>
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
"RCX" |-> (mi(64, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:bswap_r32
instr:bswap %ebx
maybe read:{ %ebx }
must read:{ %ebx }
maybe write:{ %rbx }
must write:{ %rbx }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:callq .move_032_016_ebx_r8w_r9w   #  1     0     5      OPC=callq_label
circuit:callq .move_016_032_r8w_r9w_ecx   #  2     0x5   5      OPC=callq_label
circuit:callq .move_byte_3_of_rbx_to_r8b  #  3     0xa   5      OPC=callq_label
circuit:notl %ebx                         #  4     0xf   2      OPC=notl_r32
circuit:callq .move_008_016_r8b_r9b_bx    #  5     0x11  5      OPC=callq_label
circuit:callq .move_016_008_cx_r8b_r9b    #  6     0x16  5      OPC=callq_label
circuit:callq .move_r8b_to_byte_3_of_rbx  #  7     0x1b  5      OPC=callq_label
circuit:callq .move_r9b_to_byte_2_of_rbx  #  8     0x20  5      OPC=callq_label
*/
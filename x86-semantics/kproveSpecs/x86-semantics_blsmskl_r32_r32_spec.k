module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( movl %ecx, %ebx , .Typedoperands ) ~>
execinstr ( decq %rbx , .Typedoperands ) ~>
movPosOfRegToByte( 5, %rbx, %r9b ) ~>
execinstr ( xorl %ecx, %ebx , .Typedoperands ) ~>
execinstr ( rclb $0x1, %r9b , .Typedoperands ) ~>
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
"AF" |-> (mi(1, ?I1:Int):MInt => _)
"CF" |-> (mi(1, ?I2:Int):MInt => _)
"OF" |-> (mi(1, ?I3:Int):MInt => _)
"PF" |-> (mi(1, ?I4:Int):MInt => _)
"R9" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, ?I5:Int):MInt => _)
"RCX" |-> (mi(64, ?I6:Int):MInt => _)
"SF" |-> (mi(1, ?I7:Int):MInt => _)
"ZF" |-> (mi(1, ?I8:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:blsmskl_r32_r32
instr:blsmskl %ecx, %ebx
maybe read:{ %ecx %ebx }
must read:{ %ecx %ebx }
maybe write:{ %rbx %cf %zf %sf %of }
must write:{ %rbx %cf %zf %sf %of }
maybe undef:{ %pf %af }
must undef:{ %pf %af }
required flags:{ bmi1 }

circuit:movl %ecx, %ebx                   #  1     0    2      OPC=movl_r32_r32
circuit:decq %rbx                         #  2     0x2  3      OPC=decq_r64
circuit:callq .move_byte_5_of_rbx_to_r9b  #  3     0x5  5      OPC=callq_label
circuit:xorl %ecx, %ebx                   #  4     0xa  2      OPC=xorl_r32_r32
circuit:rclb $0x1, %r9b                   #  5     0xc  3      OPC=rclb_r8_one
*/
module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( blsmskl %ecx, %ecx , .Typedoperands ) ~>
execinstr ( rclq $0x1, %rcx , .Typedoperands ) ~>
execinstr ( popcntq %rcx, %rbx , .Typedoperands ) ~>
execinstr ( decl %ebx , .Typedoperands ) ~>
execinstr ( rorb $0x1, %cl , .Typedoperands ) ~>
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
"RBX" |-> (mi(64, ?I5:Int):MInt => _)
"RCX" |-> (mi(64, ?I6:Int):MInt => _)
"SF" |-> (mi(1, ?I7:Int):MInt => _)
"ZF" |-> (mi(1, ?I8:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:tzcntl_r32_r32
instr:tzcntl %ecx, %ebx
maybe read:{ %ecx }
must read:{ %ecx }
maybe write:{ %rbx %cf %zf }
must write:{ %rbx %cf %zf }
maybe undef:{ %pf %af %sf %of }
must undef:{ %pf %af %sf %of }
required flags:{ bmi1 }

circuit:blsmskl %ecx, %ecx  #  1     0     5      OPC=blsmskl_r32_r32
circuit:rclq $0x1, %rcx     #  2     0x5   3      OPC=rclq_r64_one
circuit:popcntq %rcx, %rbx  #  3     0x8   5      OPC=popcntq_r64_r64
circuit:decl %ebx           #  4     0xd   2      OPC=decl_r32
circuit:rorb $0x1, %cl      #  5     0xf   2      OPC=rorb_r8_one
*/
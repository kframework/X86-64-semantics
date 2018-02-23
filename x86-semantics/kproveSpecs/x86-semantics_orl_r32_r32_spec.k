module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( movl %ebx, %r8d , .Typedoperands ) ~>
execinstr ( movswq %cx, %r11 , .Typedoperands ) ~>
execinstr ( xaddl %r11d, %ecx , .Typedoperands ) ~>
execinstr ( orq %r11, %r8 , .Typedoperands ) ~>
execinstr ( xchgl %ebx, %r8d , .Typedoperands ) ~>
setSZPForRegister( %ebx ) ~>
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
"R11" |-> (mi(64, 0):MInt => _)
"R8" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, ?I5:Int):MInt => _)
"RCX" |-> (mi(64, ?I6:Int):MInt => _)
"SF" |-> (mi(1, ?I7:Int):MInt => _)
"ZF" |-> (mi(1, ?I8:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:orl_r32_r32
instr:orl %ecx, %ebx
maybe read:{ %ecx %ebx }
must read:{ %ecx %ebx }
maybe write:{ %rbx %cf %pf %zf %sf %of }
must write:{ %rbx %cf %pf %zf %sf %of }
maybe undef:{ %af }
must undef:{ %af }
required flags:{ }

circuit:movl %ebx, %r8d         #  1     0     3      OPC=movl_r32_r32
circuit:movswq %cx, %r11        #  2     0x3   4      OPC=movswq_r64_r16
circuit:xaddl %r11d, %ecx       #  3     0x7   4      OPC=xaddl_r32_r32
circuit:orq %r11, %r8           #  4     0xb   3      OPC=orq_r64_r64
circuit:xchgl %ebx, %r8d        #  5     0xe   3      OPC=xchgl_r32_r32
circuit:callq .set_szp_for_ebx  #  6     0x11  5      OPC=callq_label
*/
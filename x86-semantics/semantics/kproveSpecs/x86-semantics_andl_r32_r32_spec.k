module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( andnl %ecx, %ebx, %r13d , .Typedoperands ) ~>
execinstr ( movzbl %bh, %ebx , .Typedoperands ) ~>
execinstr ( xorl %r13d, %ecx , .Typedoperands ) ~>
execinstr ( xchgl %ebx, %ecx , .Typedoperands ) ~>
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
"R13" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, ?I5:Int):MInt => _)
"RCX" |-> (mi(64, ?I6:Int):MInt => _)
"SF" |-> (mi(1, ?I7:Int):MInt => _)
"ZF" |-> (mi(1, ?I8:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:andl_r32_r32
instr:andl %ecx, %ebx
maybe read:{ %ecx %ebx }
must read:{ %ecx %ebx }
maybe write:{ %rbx %cf %pf %zf %sf %of }
must write:{ %rbx %cf %pf %zf %sf %of }
maybe undef:{ %af }
must undef:{ %af }
required flags:{ }

circuit:andnl %ecx, %ebx, %r13d  #  1     0    5      OPC=andnl_r32_r32_r32
circuit:movzbl %bh, %ebx         #  2     0x5  3      OPC=movzbl_r32_rh
circuit:xorl %r13d, %ecx         #  3     0x8  3      OPC=xorl_r32_r32
circuit:xchgl %ebx, %ecx         #  4     0xb  2      OPC=xchgl_r32_r32
*/
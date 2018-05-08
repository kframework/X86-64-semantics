module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( cmovbl %ebx, %ecx , .Typedoperands ) ~>
execinstr ( xchgl %ebx, %ecx , .Typedoperands ) ~>
execinstr ( orq %rbx, %rbx , .Typedoperands ) ~>
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
"AF" |-> (mi(1, 0):MInt => _)
"CF" |-> (mi(1, ?I1:Int):MInt => _)
"OF" |-> (mi(1, 0):MInt => _)
"PF" |-> (mi(1, 0):MInt => _)
"RBX" |-> (mi(64, ?I2:Int):MInt => _)
"RCX" |-> (mi(64, ?I3:Int):MInt => _)
"SF" |-> (mi(1, 0):MInt => _)
"ZF" |-> (mi(1, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:cmovael_r32_r32
instr:cmovael %ecx, %ebx
maybe read:{ %ecx %cf }
must read:{ %ecx %cf }
maybe write:{ %rbx }
must write:{ }
maybe undef:{ }
must undef:{ }
required flags:{ cmov }

circuit:cmovbl %ebx, %ecx  #  1     0    3      OPC=cmovbl_r32_r32
circuit:xchgl %ebx, %ecx   #  2     0x3  2      OPC=xchgl_r32_r32
circuit:orq %rbx, %rbx     #  3     0x5  3      OPC=orq_r64_r64
*/
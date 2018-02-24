module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( cmpq %rbx, %rax , .Typedoperands ) ~>
execinstr ( cmovneq %rbx, %rax , .Typedoperands ) ~>
execinstr ( cmoveq %rcx, %rbx , .Typedoperands ) ~>
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
"RAX" |-> (mi(64, ?I5:Int):MInt => _)
"RBX" |-> (mi(64, ?I6:Int):MInt => _)
"RCX" |-> (mi(64, ?I7:Int):MInt => _)
"SF" |-> (mi(1, ?I8:Int):MInt => _)
"ZF" |-> (mi(1, ?I9:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:cmpxchgq_r64_r64
instr:cmpxchgq %rcx, %rbx
maybe read:{ %rax %rcx %rbx }
must read:{ %rax %rcx %rbx }
maybe write:{ %rax %rbx %cf %pf %af %zf %sf %of }
must write:{ %rax %cf %pf %af %zf %sf %of }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:cmpq %rbx, %rax     #  1     0    3      OPC=cmpq_r64_r64
circuit:cmovneq %rbx, %rax  #  2     0x3  4      OPC=cmovneq_r64_r64
circuit:cmoveq %rcx, %rbx   #  3     0x7  4      OPC=cmoveq_r64_r64
*/
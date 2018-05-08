module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( movslq %ebx, %rax , .Typedoperands ) ~>
execinstr ( movq $0xffffffffffffffff, %rbx , .Typedoperands ) ~>
execinstr ( xorl %eax, %ebx , .Typedoperands ) ~>
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
"CF" |-> (mi(1, 0):MInt => _)
"OF" |-> (mi(1, 0):MInt => _)
"PF" |-> (mi(1, 0):MInt => _)
"RAX" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, ?I1:Int):MInt => _)
"SF" |-> (mi(1, 0):MInt => _)
"ZF" |-> (mi(1, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:notl_r32
instr:notl %ebx
maybe read:{ %ebx }
must read:{ %ebx }
maybe write:{ %rbx }
must write:{ %rbx }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:movslq %ebx, %rax               #  1     0    3      OPC=movslq_r64_r32
circuit:movq $0xffffffffffffffff, %rbx  #  2     0x3  10     OPC=movq_r64_imm64
circuit:xorl %eax, %ebx                 #  3     0xd  2      OPC=xorl_r32_r32
*/
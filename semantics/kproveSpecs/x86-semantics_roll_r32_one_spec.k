module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( xorl %eax, %eax , .Typedoperands ) ~>
execinstr ( movl %ebx, %esp , .Typedoperands ) ~>
execinstr ( rcll $0x1, %esp , .Typedoperands ) ~>
execinstr ( rcll $0x1, %ebx , .Typedoperands ) ~>
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
"OF" |-> (mi(1, ?I2:Int):MInt => _)
"PF" |-> (mi(1, 0):MInt => _)
"RAX" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, ?I3:Int):MInt => _)
"RSP" |-> (mi(64, 0):MInt => _)
"SF" |-> (mi(1, 0):MInt => _)
"ZF" |-> (mi(1, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:roll_r32_one
instr:roll $0x1, %ebx
maybe read:{ %ebx }
must read:{ %ebx }
maybe write:{ %rbx %cf %of }
must write:{ %rbx %cf %of }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:xorl %eax, %eax  #  1     0    2      OPC=xorl_r32_r32
circuit:movl %ebx, %esp  #  2     0x2  2      OPC=movl_r32_r32
circuit:rcll $0x1, %esp  #  3     0x4  2      OPC=rcll_r32_one
circuit:rcll $0x1, %ebx  #  4     0x6  2      OPC=rcll_r32_one
*/
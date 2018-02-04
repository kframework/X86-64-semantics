module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( xchgq %rbx, %rax , .Typedoperands ) ~>
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
"RAX" |-> (mi(64, ?I1:Int):MInt => _)
"RBX" |-> (mi(64, ?I2:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:xchgq_rax_r64
instr:xchgq %rbx, %rax
maybe read:{ %rax %rbx }
must read:{ %rax %rbx }
maybe write:{ %rax %rbx }
must write:{ %rax %rbx }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:xchgq %rbx, %rax  #  1     0    3      OPC=xchgq_r64_r64
*/
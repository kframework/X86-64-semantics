module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( cmovneq %rcx, %rbx , .Typedoperands ) ~>
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
"RBX" |-> (mi(64, ?I1:Int):MInt => _)
"RCX" |-> (mi(64, ?I2:Int):MInt => _)
"ZF" |-> (mi(1, ?I3:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:cmovnzq_r64_r64
instr:cmovnzq %rcx, %rbx
maybe read:{ %rcx %zf }
must read:{ %rcx %zf }
maybe write:{ %rbx }
must write:{ }
maybe undef:{ }
must undef:{ }
required flags:{ cmov }

circuit:cmovneq %rcx, %rbx  #  1     0    4      OPC=cmovneq_r64_r64
*/
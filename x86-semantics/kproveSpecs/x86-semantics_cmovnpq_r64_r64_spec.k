module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( cmovpoq %rcx, %rbx , .Typedoperands ) ~>
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
"PF" |-> (mi(1, ?I1:Int):MInt => _)
"RBX" |-> (mi(64, ?I2:Int):MInt => _)
"RCX" |-> (mi(64, ?I3:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:cmovnpq_r64_r64
instr:cmovnpq %rcx, %rbx
maybe read:{ %rcx %pf }
must read:{ %rcx %pf }
maybe write:{ %rbx }
must write:{ }
maybe undef:{ }
must undef:{ }
required flags:{ cmov }

circuit:cmovpoq %rcx, %rbx  #  1     0    4      OPC=cmovpoq_r64_r64
*/
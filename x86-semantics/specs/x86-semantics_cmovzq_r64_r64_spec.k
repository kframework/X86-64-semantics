module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
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
"RCX" |-> (mi(64, ?I1:Int):MInt => _)
"ZF" |-> (mi(1, ?I2:Int):MInt => _)
"RBX" |-> (mi(64, ?I3:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:cmovzq_r64_r64
instr:cmovzq %rcx, %rbx
maybe read:{ %rcx %zf }
must read:{ %rcx %zf }
maybe write:{ %rbx }
must write:{ }
maybe undef:{ }
must undef:{ }
required flags:{ cmov }

circuit:cmoveq %rcx, %rbx  #  1     0    4      OPC=cmoveq_r64_r64
*/
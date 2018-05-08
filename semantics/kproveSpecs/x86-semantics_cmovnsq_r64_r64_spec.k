module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
setFlag( mi(1, 1), "OF") ~>
execinstr ( cmovlq %rcx, %rbx , .Typedoperands ) ~>
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
"OF" |-> (mi(1, 0):MInt => _)
"RBX" |-> (mi(64, ?I1:Int):MInt => _)
"RCX" |-> (mi(64, ?I2:Int):MInt => _)
"SF" |-> (mi(1, ?I3:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:cmovnsq_r64_r64
instr:cmovnsq %rcx, %rbx
maybe read:{ %rcx %sf }
must read:{ %rcx %sf }
maybe write:{ %rbx }
must write:{ }
maybe undef:{ }
must undef:{ }
required flags:{ cmov }

circuit:callq .set_of      #  1     0    5      OPC=callq_label
circuit:cmovlq %rcx, %rbx  #  2     0x5  4      OPC=cmovlq_r64_r64
*/
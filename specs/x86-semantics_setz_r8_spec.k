module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
readFlagToRegister( "ZF", %rbx ) ~>
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
"ZF" |-> (mi(1, ?I2:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:setz_r8
instr:setz %bl
maybe read:{ %zf }
must read:{ %zf }
maybe write:{ %bl }
must write:{ %bl }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:callq .read_zf_into_rbx  #  1     0    5      OPC=callq_label
*/
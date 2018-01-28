module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
readFlagToRegister( "SF", %rbx ) ~>
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
      regstateInitConfig => regstateFinalConfig
    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:sets_r8
instr:sets %bl
maybe read:{ %sf }
must read:{ %sf }
maybe write:{ %bl }
must write:{ %bl }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:callq .read_sf_into_rbx  #  1     0    5      OPC=callq_label
*/
module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
setFlag( mi(1, 1), "CF") ~>
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
opcode:stc
instr:stc
maybe read:{ }
must read:{ }
maybe write:{ %cf }
must write:{ %cf }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:callq .set_cf  #  1     0    5      OPC=callq_label
*/
module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( salq %cl, %rbx , .Typedoperands ) ~>
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
opcode:shlq_r64_cl
instr:shlq %cl, %rbx
maybe read:{ %cl %rbx }
must read:{ %cl %rbx }
maybe write:{ %rbx %cf %pf %zf %sf %of }
must write:{ %rbx }
maybe undef:{ %cf %af %of }
must undef:{ }
required flags:{ }

circuit:salq %cl, %rbx  #  1     0    3      OPC=salq_r64_cl
*/
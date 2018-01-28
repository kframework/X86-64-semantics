module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
readFlagToRegister( "CF", %rcx ) ~>
execinstr ( movsbq %cl, %rbx , .Typedoperands ) ~>
execinstr ( orq %rcx, %rbx , .Typedoperands ) ~>
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
opcode:setb_r8
instr:setb %bl
maybe read:{ %cf }
must read:{ %cf }
maybe write:{ %bl }
must write:{ %bl }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:callq .read_cf_into_rcx  #  1     0    5      OPC=callq_label
circuit:movsbq %cl, %rbx         #  2     0x5  4      OPC=movsbq_r64_r8
circuit:orq %rcx, %rbx           #  3     0x9  3      OPC=orq_r64_r64
*/
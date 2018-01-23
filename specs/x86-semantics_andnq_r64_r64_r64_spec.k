module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( orq %rcx, %rdx , .Typedoperands ) ~>
execinstr ( xorq %rcx, %rdx , .Typedoperands ) ~>
execinstr ( movq %rdx, %rbx , .Typedoperands ) ~>
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
opcode:andnq_r64_r64_r64
instr:andnq %rdx, %rcx, %rbx
maybe read:{ %rcx %rdx }
must read:{ %rcx %rdx }
maybe write:{ %rbx %cf %zf %sf %of }
must write:{ %rbx %cf %zf %sf %of }
maybe undef:{ %pf %af }
must undef:{ %pf %af }
required flags:{ bmi1 }

*/
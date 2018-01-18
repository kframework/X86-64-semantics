module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k> fetch => exit_0 </k>
    <entrypoint> zeroMIntW64 </entrypoint>
    <nextLoc> zeroMIntW64  </nextLoc>
    <memstate>
      <cmem>
loc ( mi(64, 0)) |-> storedinstr ( orq %rbx, %rbx , .Typedoperands )
loc ( mi(64, 1)) |-> storedinstr ( adcq %rcx, %rbx , .Typedoperands )
loc ( mi(64, 2)) |-> storedinstr ( nop .Typedoperands )
      </cmem>
      <dmem> .Map </dmem>
    </memstate>

    <regstate>
      regstateInitConfig => regstateFinalConfig
    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:addq_r64_r64
instr:addq %rcx, %rbx
maybe read:{ %rcx %rbx }
must read:{ %rcx %rbx }
maybe write:{ %rbx %cf %pf %af %zf %sf %of }
must write:{ %rbx %cf %pf %af %zf %sf %of }
maybe undef:{ }
must undef:{ }
required flags:{ }
*/

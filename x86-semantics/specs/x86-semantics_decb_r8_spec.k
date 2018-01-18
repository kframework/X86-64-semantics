module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k> fetch => exit_0 </k>
    <entrypoint> zeroMIntW64 </entrypoint>
    <nextLoc> zeroMIntW64  </nextLoc>
    <memstate>
      <cmem>
loc ( mi(64, 0)) |-> storedinstr ( movq $0xffffffffffffffff, %r9 , .Typedoperands )
loc ( mi(64, 1)) |-> storedinstr ( xorq %rcx, %rcx , .Typedoperands )
loc ( mi(64, 2)) |-> storedinstr ( adcb %r9b, %bl , .Typedoperands )
loc ( mi(64, 3)) |-> storedinstr ( nop .Typedoperands )
      </cmem>
      <dmem> .Map </dmem>
    </memstate>

    <regstate>
      regstateInitConfig => regstateFinalConfig
    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:decb_r8
instr:decb %bl
maybe read:{ %bl }
must read:{ %bl }
maybe write:{ %bl %pf %af %zf %sf %of }
must write:{ %bl %pf %af %zf %sf %of }
maybe undef:{ }
must undef:{ }
required flags:{ }
*/

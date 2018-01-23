module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( xorq %rcx, %rcx , .Typedoperands ) ~>
readFlagToRegister( "SF", %rbx ) ~>
execinstr ( movb %ah, %bl , .Typedoperands ) ~>
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
opcode:movzbw_r16_rh
instr:movzbw %ah, %bx
maybe read:{ %ah }
must read:{ %ah }
maybe write:{ %bx }
must write:{ %bx }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:xorq %rcx, %rcx          #  1     0    3      OPC=xorq_r64_r64
circuit:callq .read_sf_into_rbx  #  2     0x3  5      OPC=callq_label
circuit:movb %ah, %bl            #  3     0x8  2      OPC=movb_r8_rh
*/
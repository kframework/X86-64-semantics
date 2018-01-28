module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
readFlagToRegister( "OF", %rbx ) ~>
setSZPForRegister( %ebx ) ~>
readFlagToRegister( "ZF", %rcx ) ~>
execinstr ( movb %cl, %ah , .Typedoperands ) ~>
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
opcode:setno_rh
instr:setno %ah
maybe read:{ %of }
must read:{ %of }
maybe write:{ %ah }
must write:{ %ah }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:callq .read_of_into_rbx  #  1     0     5      OPC=callq_label
circuit:callq .set_szp_for_ebx   #  2     0x5   5      OPC=callq_label
circuit:callq .read_zf_into_rcx  #  3     0xa   5      OPC=callq_label
circuit:movb %cl, %ah            #  4     0xf   2      OPC=movb_rh_r8
*/
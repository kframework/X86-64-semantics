module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
readFlagToRegister( "PF", %rbx ) ~>
split2NToN( %ebx, %r8w, %r9w ) ~>
movByteToPosOfReg( %r8b, 2, %rbx ) ~>
setSZPForRegister( %bx ) ~>
readFlagToRegister( "ZF", %rbx ) ~>
execinstr ( movb %bl, %ah , .Typedoperands ) ~>
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
opcode:setnp_rh
instr:setnp %ah
maybe read:{ %pf }
must read:{ %pf }
maybe write:{ %ah }
must write:{ %ah }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:callq .read_pf_into_rbx           #  1     0     5      OPC=callq_label
circuit:callq .move_032_016_ebx_r8w_r9w   #  2     0x5   5      OPC=callq_label
circuit:callq .move_r8b_to_byte_2_of_rbx  #  3     0xa   5      OPC=callq_label
circuit:callq .set_szp_for_bx             #  4     0xf   5      OPC=callq_label
circuit:callq .read_zf_into_rbx           #  5     0x14  5      OPC=callq_label
circuit:movb %bl, %ah                     #  6     0x19  2      OPC=movb_rh_r8
*/
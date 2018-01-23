module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
setFlag( mi(1, 1), "OF") ~>
readFlagToRegister( "OF", %rbx ) ~>
split2NToN( %rbx, %r10d, %r11d ) ~>
execinstr ( movsbq %cl, %r10 , .Typedoperands ) ~>
combineNTo2N( %r10d, %r11d, %rbx ) ~>
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
opcode:movsbl_r32_r8
instr:movsbl %cl, %ebx
maybe read:{ %cl }
must read:{ %cl }
maybe write:{ %rbx }
must write:{ %rbx }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:callq .set_of                      #  1     0     5      OPC=callq_label
circuit:callq .read_of_into_rbx            #  2     0x5   5      OPC=callq_label
circuit:callq .move_064_032_rbx_r10d_r11d  #  3     0xa   5      OPC=callq_label
circuit:movsbq %cl, %r10                   #  4     0xf   4      OPC=movsbq_r64_r8
circuit:callq .move_032_064_r10d_r11d_rbx  #  5     0x13  5      OPC=callq_label
*/
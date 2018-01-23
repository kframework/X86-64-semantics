module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( movq $0x5, %rbx , .Typedoperands ) ~>
split2NToN( %rbx, %r12d, %r13d ) ~>
execinstr ( movsbq %cl, %r12 , .Typedoperands ) ~>
combineNTo2N( %r12b, %r13b, %bx ) ~>
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
opcode:movzbw_r16_r8
instr:movzbw %cl, %bx
maybe read:{ %cl }
must read:{ %cl }
maybe write:{ %bx }
must write:{ %bx }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:movq $0x5, %rbx                    #  1     0     10     OPC=movq_r64_imm64
circuit:callq .move_064_032_rbx_r12d_r13d  #  2     0xa   5      OPC=callq_label
circuit:movsbq %cl, %r12                   #  3     0xf   4      OPC=movsbq_r64_r8
circuit:callq .move_008_016_r12b_r13b_bx   #  4     0x13  5      OPC=callq_label
*/
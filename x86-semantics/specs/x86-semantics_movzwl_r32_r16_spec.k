module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( movq $0x20, %rbx , .Typedoperands ) ~>
split2NToN( %cx, %r12b, %r13b ) ~>
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
opcode:movzwl_r32_r16
instr:movzwl %cx, %ebx
maybe read:{ %cx }
must read:{ %cx }
maybe write:{ %rbx }
must write:{ %rbx }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:movq $0x20, %rbx                  #  1     0     10     OPC=movq_r64_imm64
circuit:callq .move_016_008_cx_r12b_r13b  #  2     0xa   5      OPC=callq_label
circuit:callq .move_008_016_r12b_r13b_bx  #  3     0xf   5      OPC=callq_label
*/
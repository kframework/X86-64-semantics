module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
split2NToN(%rbx,  %r10d, %r11d , 32) ~>
combineNTo2N(%r10d,  %r11d, %rbx, 32, 64, 32) ~>
execinstr ( xchgq %rax, %rbx , .Typedoperands ) ~>
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
"RIP" |->    (mi(64, 0) => _)
"R10" |-> (mi(64, 0):MInt => _)
"R11" |-> (mi(64, 0):MInt => _)
"RAX" |-> (mi(64, ?I1:Int):MInt => _)
"RBX" |-> (mi(64, ?I2:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:xchgq_r64_rax
instr:xchgq %rax, %rbx
maybe read:{ %rax %rbx }
must read:{ %rax %rbx }
maybe write:{ %rax %rbx }
must write:{ %rax %rbx }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:callq .move_064_032_rbx_r10d_r11d  #  1     0    5      OPC=callq_label
circuit:callq .move_032_064_r10d_r11d_rbx  #  2     0x5  5      OPC=callq_label
circuit:xchgq %rax, %rbx                   #  3     0xa  3      OPC=xchgq_r64_r64
*/
module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
split2NToN(%rbx,  %r8d, %r9d , 32) ~>
execinstr ( movq %rcx, %rbx , .Typedoperands ) ~>
combineNTo2N(%r8w,  %r9w, %edx, 16, 32, 16) ~>
split2NToN(%edx,  %r8w, %r9w , 16) ~>
combineNTo2N(%r8d,  %r9d, %rcx, 32, 64, 32) ~>
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
"R8" |-> (mi(64, 0):MInt => _)
"R9" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, ?I1:Int):MInt => _)
"RCX" |-> (mi(64, ?I2:Int):MInt => _)
"RDX" |-> (mi(64, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:xchgq_r64_r64
instr:xchgq %rcx, %rbx
maybe read:{ %rcx %rbx }
must read:{ %rcx %rbx }
maybe write:{ %rcx %rbx }
must write:{ %rcx %rbx }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:callq .move_064_032_rbx_r8d_r9d  #  1     0     5      OPC=callq_label
circuit:movq %rcx, %rbx                  #  2     0x5   3      OPC=movq_r64_r64
circuit:callq .move_016_032_r8w_r9w_edx  #  3     0x8   5      OPC=callq_label
circuit:callq .move_032_016_edx_r8w_r9w  #  4     0xd   5      OPC=callq_label
circuit:callq .move_032_064_r8d_r9d_rcx  #  5     0x12  5      OPC=callq_label
*/
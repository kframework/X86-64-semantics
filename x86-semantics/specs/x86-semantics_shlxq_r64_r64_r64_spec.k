module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
split2NToN( %rcx, %r10d, %r11d ) ~>
split2NToN( %rdx, %r8d, %r9d ) ~>
combineNTo2N( %r10d, %r11d, %rbx ) ~>
combineNTo2N( %r8d, %r9d, %rcx ) ~>
execinstr ( salq %cl, %rbx , .Typedoperands ) ~>
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
"RBX" |-> (mi(64, ?I1:Int):MInt => _)
"SF" |-> (mi(1, 0):MInt => _)
"R11" |-> (mi(64, 0):MInt => _)
"RDX" |-> (mi(64, ?I2:Int):MInt => _)
"PF" |-> (mi(1, 0):MInt => _)
"R10" |-> (mi(64, 0):MInt => _)
"R8" |-> (mi(64, 0):MInt => _)
"RCX" |-> (mi(64, ?I3:Int):MInt => _)
"CF" |-> (mi(1, 0):MInt => _)
"ZF" |-> (mi(1, 0):MInt => _)
"R9" |-> (mi(64, 0):MInt => _)
"AF" |-> (mi(1, 0):MInt => _)
"OF" |-> (mi(1, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:shlxq_r64_r64_r64
instr:shlxq %rdx, %rcx, %rbx
maybe read:{ %rcx %rdx }
must read:{ %rcx %rdx }
maybe write:{ %rbx }
must write:{ %rbx }
maybe undef:{ }
must undef:{ }
required flags:{ bmi2 }

circuit:callq .move_064_032_rcx_r10d_r11d  #  1     0     5      OPC=callq_label
circuit:callq .move_064_032_rdx_r8d_r9d    #  2     0x5   5      OPC=callq_label
circuit:callq .move_032_064_r10d_r11d_rbx  #  3     0xa   5      OPC=callq_label
circuit:callq .move_032_064_r8d_r9d_rcx    #  4     0xf   5      OPC=callq_label
circuit:salq %cl, %rbx                     #  5     0x14  3      OPC=salq_r64_cl
*/
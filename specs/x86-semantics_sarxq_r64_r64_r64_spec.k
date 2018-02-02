module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
split2NToN( %rdx, %r10d, %r11d ) ~>
split2NToN( %rcx, %r8d, %r9d ) ~>
combineNTo2N( %r10b, %r11b, %cx ) ~>
combineNTo2N( %r8d, %r9d, %rbx ) ~>
execinstr ( sarq %cl, %rbx , .Typedoperands ) ~>
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
"SF" |-> (mi(1, 0):MInt => _)
"ZF" |-> (mi(1, 0):MInt => _)
"RBX" |-> (mi(64, ?I1:Int):MInt => _)
"RCX" |-> (mi(64, ?I2:Int):MInt => _)
"PF" |-> (mi(1, 0):MInt => _)
"R11" |-> (mi(64, 0):MInt => _)
"R8" |-> (mi(64, 0):MInt => _)
"OF" |-> (mi(1, 0):MInt => _)
"CF" |-> (mi(1, 0):MInt => _)
"RDX" |-> (mi(64, ?I3:Int):MInt => _)
"R10" |-> (mi(64, 0):MInt => _)
"AF" |-> (mi(1, 0):MInt => _)
"R9" |-> (mi(64, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:sarxq_r64_r64_r64
instr:sarxq %rdx, %rcx, %rbx
maybe read:{ %rcx %rdx }
must read:{ %rcx %rdx }
maybe write:{ %rbx }
must write:{ %rbx }
maybe undef:{ }
must undef:{ }
required flags:{ bmi2 }

circuit:callq .move_064_032_rdx_r10d_r11d  #  1     0     5      OPC=callq_label
circuit:callq .move_064_032_rcx_r8d_r9d    #  2     0x5   5      OPC=callq_label
circuit:callq .move_008_016_r10b_r11b_cx   #  3     0xa   5      OPC=callq_label
circuit:callq .move_032_064_r8d_r9d_rbx    #  4     0xf   5      OPC=callq_label
circuit:sarq %cl, %rbx                     #  5     0x14  3      OPC=sarq_r64_cl
*/
module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( movswq %bx, %r10 , .Typedoperands ) ~>
execinstr ( movslq %ebx, %rbx , .Typedoperands ) ~>
split2NToN( %ecx, %r8w, %r9w ) ~>
split2NToN( %rbx, %r10d, %r11d ) ~>
execinstr ( movq %r10, %rcx , .Typedoperands ) ~>
combineNTo2N( %r8w, %r9w, %ebx ) ~>
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
"RCX" |-> (mi(64, ?I1:Int):MInt => _)
"R9" |-> (mi(64, 0):MInt => _)
"R8" |-> (mi(64, 0):MInt => _)
"R10" |-> (mi(64, 0):MInt => _)
"R11" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, ?I2:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:xchgl_r32_r32
instr:xchgl %ecx, %ebx
maybe read:{ %ecx %ebx }
must read:{ %ecx %ebx }
maybe write:{ %rcx %rbx }
must write:{ %rcx %rbx }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:movswq %bx, %r10                   #  1     0     4      OPC=movswq_r64_r16
circuit:movslq %ebx, %rbx                  #  2     0x4   3      OPC=movslq_r64_r32
circuit:callq .move_032_016_ecx_r8w_r9w    #  3     0x7   5      OPC=callq_label
circuit:callq .move_064_032_rbx_r10d_r11d  #  4     0xc   5      OPC=callq_label
circuit:movq %r10, %rcx                    #  5     0x11  3      OPC=movq_r64_r64
circuit:callq .move_016_032_r8w_r9w_ebx    #  6     0x14  5      OPC=callq_label
*/
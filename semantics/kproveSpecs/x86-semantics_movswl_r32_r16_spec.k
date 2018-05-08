module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( movzwl %cx, %ebx , .Typedoperands ) ~>
split2NToN(%rbx,  %r8d, %r9d , 32) ~>
execinstr ( movq $0xffffffffffffffc0, %rbx , .Typedoperands ) ~>
execinstr ( movw %r8w, %bx , .Typedoperands ) ~>
execinstr ( movswq %bx, %r9 , .Typedoperands ) ~>
execinstr ( xchgl %ebx, %r9d , .Typedoperands ) ~>
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

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:movswl_r32_r16
instr:movswl %cx, %ebx
maybe read:{ %cx }
must read:{ %cx }
maybe write:{ %rbx }
must write:{ %rbx }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:movzwl %cx, %ebx                 #  1     0     3      OPC=movzwl_r32_r16
circuit:callq .move_064_032_rbx_r8d_r9d  #  2     0x3   5      OPC=callq_label
circuit:movq $0xffffffffffffffc0, %rbx   #  3     0x8   10     OPC=movq_r64_imm64
circuit:movw %r8w, %bx                   #  4     0x12  4      OPC=movw_r16_r16
circuit:movswq %bx, %r9                  #  5     0x16  4      OPC=movswq_r64_r16
circuit:xchgl %ebx, %r9d                 #  6     0x1a  3      OPC=xchgl_r32_r32
*/
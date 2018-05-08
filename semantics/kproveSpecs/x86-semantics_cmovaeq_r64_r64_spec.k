module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vmovd %ecx, %xmm1 , .Typedoperands ) ~>
splitXmmToR32( %xmm1, %eax, %edx, %r8d, %r9d, 32 ) ~>
execinstr ( sbbw %cx, %ax , .Typedoperands ) ~>
execinstr ( cmoveq %rcx, %rbx , .Typedoperands ) ~>
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
"AF" |-> (mi(1, 0):MInt => _)
"CF" |-> (mi(1, ?I1:Int):MInt => _)
"OF" |-> (mi(1, 0):MInt => _)
"PF" |-> (mi(1, 0):MInt => _)
"R8" |-> (mi(64, 0):MInt => _)
"R9" |-> (mi(64, 0):MInt => _)
"RAX" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, ?I2:Int):MInt => _)
"RCX" |-> (mi(64, ?I3:Int):MInt => _)
"RDX" |-> (mi(64, 0):MInt => _)
"SF" |-> (mi(1, 0):MInt => _)
"YMM1" |-> (mi(256, 0):MInt => _)
"ZF" |-> (mi(1, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:cmovaeq_r64_r64
instr:cmovaeq %rcx, %rbx
maybe read:{ %rcx %cf }
must read:{ %rcx %cf }
maybe write:{ %rbx }
must write:{ }
maybe undef:{ }
must undef:{ }
required flags:{ cmov }

circuit:vmovd %ecx, %xmm1                         #  1     0     4      OPC=vmovd_xmm_r32
circuit:callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  2     0x4   5      OPC=callq_label
circuit:sbbw %cx, %ax                             #  3     0x9   3      OPC=sbbw_r16_r16
circuit:cmoveq %rcx, %rbx                         #  4     0xc   4      OPC=cmoveq_r64_r64
*/
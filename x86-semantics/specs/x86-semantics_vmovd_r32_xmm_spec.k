module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( movq %xmm1, %rbx , .Typedoperands ) ~>
split2NToN(%ebx,  %r8w, %r9w , 16) ~>
combineNTo2N(%r8w,  %r9w, %ebx, 16, 32, 16) ~>
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
"YMM1" |-> (mi(256, ?I2:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vmovd_r32_xmm
instr:vmovd %xmm1, %ebx
maybe read:{ %xmm1 }
must read:{ %xmm1 }
maybe write:{ %rbx }
must write:{ %rbx }
maybe undef:{ }
must undef:{ }
required flags:{ avx }

circuit:movq %xmm1, %rbx                 #  1     0    5      OPC=movq_r64_xmm
circuit:callq .move_032_016_ebx_r8w_r9w  #  2     0x5  5      OPC=callq_label
circuit:callq .move_016_032_r8w_r9w_ebx  #  3     0xa  5      OPC=callq_label
*/
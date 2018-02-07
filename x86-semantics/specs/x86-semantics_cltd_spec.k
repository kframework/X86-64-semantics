module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( cltq  .Typedoperands ) ~>
execinstr ( vmovq %rax, %xmm2 , .Typedoperands ) ~>
splitXmmToR32( %xmm2, %eax, %edx, %r8d, %r9d, 32 ) ~>
execinstr ( andnl %r9d, %r9d, %ecx , .Typedoperands ) ~>
execinstr ( adcl %ecx, %edx , .Typedoperands ) ~>
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
"CF" |-> (mi(1, 0):MInt => _)
"OF" |-> (mi(1, 0):MInt => _)
"PF" |-> (mi(1, 0):MInt => _)
"R8" |-> (mi(64, 0):MInt => _)
"R9" |-> (mi(64, 0):MInt => _)
"RAX" |-> (mi(64, ?I1:Int):MInt => _)
"RCX" |-> (mi(64, 0):MInt => _)
"RDX" |-> (mi(64, ?I2:Int):MInt => _)
"SF" |-> (mi(1, 0):MInt => _)
"YMM2" |-> (mi(256, 0):MInt => _)
"ZF" |-> (mi(1, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:cltd
instr:cltd
maybe read:{ %eax }
must read:{ %eax }
maybe write:{ %rdx }
must write:{ %rdx }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:cltq                                      #  1     0     2      OPC=cltq
circuit:vmovq %rax, %xmm2                         #  2     0x2   5      OPC=vmovq_xmm_r64
circuit:callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  3     0x7   5      OPC=callq_label
circuit:andnl %r9d, %r9d, %ecx                    #  4     0xc   5      OPC=andnl_r32_r32_r32
circuit:adcl %ecx, %edx                           #  5     0x11  2      OPC=adcl_r32_r32
*/
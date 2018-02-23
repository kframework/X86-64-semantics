module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
splitXmmToR32( %xmm1, %eax, %edx, %r8d, %r9d, 32 ) ~>
execinstr ( roll $0x1, %r9d , .Typedoperands ) ~>
readFlagToRegister( "CF", %rbx ) ~>
execinstr ( roll $0x1, %edx , .Typedoperands ) ~>
execinstr ( rcll $0x1, %ebx , .Typedoperands ) ~>
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
"CF" |-> (mi(1, 0):MInt => _)
"OF" |-> (mi(1, 0):MInt => _)
"R8" |-> (mi(64, 0):MInt => _)
"R9" |-> (mi(64, 0):MInt => _)
"RAX" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, ?I1:Int):MInt => _)
"RDX" |-> (mi(64, 0):MInt => _)
"YMM1" |-> (mi(256, ?I2:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vmovmskpd_r32_xmm
instr:vmovmskpd %xmm1, %ebx
maybe read:{ %xmm1 }
must read:{ %xmm1 }
maybe write:{ %rbx }
must write:{ %rbx }
maybe undef:{ }
must undef:{ }
required flags:{ avx }

circuit:callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label
circuit:roll $0x1, %r9d                           #  2     0x5   3      OPC=roll_r32_one
circuit:callq .read_cf_into_rbx                   #  3     0x8   5      OPC=callq_label
circuit:roll $0x1, %edx                           #  4     0xd   2      OPC=roll_r32_one
circuit:rcll $0x1, %ebx                           #  5     0xf   2      OPC=rcll_r32_one
*/
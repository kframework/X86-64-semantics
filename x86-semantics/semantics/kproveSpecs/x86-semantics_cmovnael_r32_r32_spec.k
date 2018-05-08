module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vxorps %xmm2, %xmm2, %xmm1 , .Typedoperands ) ~>
splitXmmToR32( %xmm1, %eax, %edx, %r8d, %r9d, 32 ) ~>
execinstr ( setnae %ah , .Typedoperands ) ~>
execinstr ( xaddw %ax, %r8w , .Typedoperands ) ~>
execinstr ( cmovnzl %ecx, %ebx , .Typedoperands ) ~>
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
"YMM2" |-> (mi(256, 0):MInt => _)
"ZF" |-> (mi(1, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:cmovnael_r32_r32
instr:cmovnael %ecx, %ebx
maybe read:{ %ecx %cf }
must read:{ %ecx %cf }
maybe write:{ %rbx }
must write:{ }
maybe undef:{ }
must undef:{ }
required flags:{ cmov }

circuit:vxorps %xmm2, %xmm2, %xmm1                #  1     0     4      OPC=vxorps_xmm_xmm_xmm
circuit:callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  2     0x4   5      OPC=callq_label
circuit:setnae %ah                                #  3     0x9   3      OPC=setnae_rh
circuit:xaddw %ax, %r8w                           #  4     0xc   5      OPC=xaddw_r16_r16
circuit:cmovnzl %ecx, %ebx                        #  5     0x11  3      OPC=cmovnzl_r32_r32
*/
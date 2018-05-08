module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vxorpd %xmm4, %xmm4, %xmm1 , .Typedoperands ) ~>
splitXmmToR32( %xmm1, %xmm4, %xmm5, %xmm6, %xmm7, 128 ) ~>
execinstr ( movd %xmm4, %r12d , .Typedoperands ) ~>
execinstr ( setg %spl , .Typedoperands ) ~>
execinstr ( xorb %spl, %r12b , .Typedoperands ) ~>
execinstr ( cmovbeq %rcx, %rbx , .Typedoperands ) ~>
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
"OF" |-> (mi(1, ?I1:Int):MInt => _)
"PF" |-> (mi(1, 0):MInt => _)
"R12" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, ?I2:Int):MInt => _)
"RCX" |-> (mi(64, ?I3:Int):MInt => _)
"RSP" |-> (mi(64, 0):MInt => _)
"SF" |-> (mi(1, ?I4:Int):MInt => _)
"YMM1" |-> (mi(256, 0):MInt => _)
"YMM4" |-> (mi(256, 0):MInt => _)
"YMM5" |-> (mi(256, 0):MInt => _)
"YMM6" |-> (mi(256, 0):MInt => _)
"YMM7" |-> (mi(256, 0):MInt => _)
"ZF" |-> (mi(1, ?I5:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:cmovleq_r64_r64
instr:cmovleq %rcx, %rbx
maybe read:{ %rcx %zf %sf %of }
must read:{ %rcx %zf %sf %of }
maybe write:{ %rbx }
must write:{ }
maybe undef:{ }
must undef:{ }
required flags:{ cmov }

circuit:vxorpd %xmm4, %xmm4, %xmm1                    #  1     0     4      OPC=vxorpd_xmm_xmm_xmm
circuit:callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  2     0x4   5      OPC=callq_label
circuit:movd %xmm4, %r12d                             #  3     0x9   5      OPC=movd_r32_xmm
circuit:setg %spl                                     #  4     0xe   4      OPC=setg_r8
circuit:xorb %spl, %r12b                              #  5     0x12  3      OPC=xorb_r8_r8
circuit:cmovbeq %rcx, %rbx                            #  6     0x15  4      OPC=cmovbeq_r64_r64
*/
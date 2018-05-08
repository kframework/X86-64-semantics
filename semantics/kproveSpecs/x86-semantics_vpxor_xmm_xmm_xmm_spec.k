module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
split2NToN(%xmm2,  %r12, %r13 , 64) ~>
execinstr ( vmovdqa %xmm3, %xmm1 , .Typedoperands ) ~>
split2NToN(%xmm1,  %r8, %r9 , 64) ~>
execinstr ( xorq %r8, %r12 , .Typedoperands ) ~>
execinstr ( xorq %r9, %r13 , .Typedoperands ) ~>
combineNTo2N(%r12,  %r13, %xmm1, 64, 128, 64) ~>
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
"R12" |-> (mi(64, 0):MInt => _)
"R13" |-> (mi(64, 0):MInt => _)
"R8" |-> (mi(64, 0):MInt => _)
"R9" |-> (mi(64, 0):MInt => _)
"SF" |-> (mi(1, 0):MInt => _)
"YMM1" |-> (mi(256, ?I1:Int):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM3" |-> (mi(256, ?I3:Int):MInt => _)
"ZF" |-> (mi(1, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vpxor_xmm_xmm_xmm
instr:vpxor %xmm3, %xmm2, %xmm1
maybe read:{ %xmm2 %xmm3 }
must read:{ %xmm2 %xmm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx }

circuit:callq .move_128_064_xmm2_r12_r13  #  1     0     5      OPC=callq_label
circuit:vmovdqa %xmm3, %xmm1              #  2     0x5   4      OPC=vmovdqa_xmm_xmm
circuit:callq .move_128_064_xmm1_r8_r9    #  3     0x9   5      OPC=callq_label
circuit:xorq %r8, %r12                    #  4     0xe   3      OPC=xorq_r64_r64
circuit:xorq %r9, %r13                    #  5     0x11  3      OPC=xorq_r64_r64
circuit:callq .move_064_128_r12_r13_xmm1  #  6     0x14  5      OPC=callq_label
*/
module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( movd %xmm2, %r8d , .Typedoperands ) ~>
execinstr ( vzeroall  .Typedoperands ) ~>
execinstr ( movslq %r8d, %r9 , .Typedoperands ) ~>
combineNTo2N(%r8,  %r9, %xmm1, 64, 128, 64) ~>
split2NToN(%xmm1,  %xmm10, %xmm11 , 64) ~>
split2NToN(%xmm1,  %xmm8, %xmm9 , 64) ~>
combineR32ToXmm( %xmm8, %xmm9, %xmm10, %xmm11, %xmm1 ) ~>
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
"YMM0" |-> (mi(256, 0):MInt => _)
"YMM1" |-> (mi(256, ?I1:Int):MInt => _)
"YMM10" |-> (mi(256, 0):MInt => _)
"YMM11" |-> (mi(256, 0):MInt => _)
"YMM12" |-> (mi(256, 0):MInt => _)
"YMM13" |-> (mi(256, 0):MInt => _)
"YMM14" |-> (mi(256, 0):MInt => _)
"YMM15" |-> (mi(256, 0):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM3" |-> (mi(256, 0):MInt => _)
"YMM4" |-> (mi(256, 0):MInt => _)
"YMM5" |-> (mi(256, 0):MInt => _)
"YMM6" |-> (mi(256, 0):MInt => _)
"YMM7" |-> (mi(256, 0):MInt => _)
"YMM8" |-> (mi(256, 0):MInt => _)
"YMM9" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vbroadcastss_xmm_xmm
instr:vbroadcastss %xmm2, %xmm1
maybe read:{ %xmm2 }
must read:{ %xmm2 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx2 }

circuit:movd %xmm2, %r8d                                #  1     0     5      OPC=movd_r32_xmm
circuit:vzeroall                                        #  2     0x5   3      OPC=vzeroall
circuit:movslq %r8d, %r9                                #  3     0x8   3      OPC=movslq_r64_r32
circuit:callq .move_064_128_r8_r9_xmm1                  #  4     0xb   5      OPC=callq_label
circuit:callq .move_128_64_xmm1_xmm10_xmm11             #  5     0x10  5      OPC=callq_label
circuit:callq .move_128_64_xmm1_xmm8_xmm9               #  6     0x15  5      OPC=callq_label
circuit:callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  7     0x1a  5      OPC=callq_label
*/
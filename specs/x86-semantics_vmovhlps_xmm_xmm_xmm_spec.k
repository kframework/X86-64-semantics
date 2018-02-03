module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
split2NToN(%xmm3,  %r10, %r11 , 64) ~>
split2NToN(%xmm2,  %r12, %r13 , 64) ~>
execinstr ( vzeroall  .Typedoperands ) ~>
execinstr ( movq %r11, %r12 , .Typedoperands ) ~>
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
"YMM14" |-> (mi(256, 0):MInt => _)
"YMM11" |-> (mi(256, 0):MInt => _)
"YMM0" |-> (mi(256, 0):MInt => _)
"R12" |-> (mi(64, 0):MInt => _)
"YMM8" |-> (mi(256, 0):MInt => _)
"YMM12" |-> (mi(256, 0):MInt => _)
"YMM7" |-> (mi(256, 0):MInt => _)
"YMM2" |-> (mi(256, ?I1:Int):MInt => _)
"YMM9" |-> (mi(256, 0):MInt => _)
"YMM13" |-> (mi(256, 0):MInt => _)
"YMM4" |-> (mi(256, 0):MInt => _)
"YMM1" |-> (mi(256, ?I2:Int):MInt => _)
"YMM3" |-> (mi(256, ?I3:Int):MInt => _)
"R11" |-> (mi(64, 0):MInt => _)
"YMM10" |-> (mi(256, 0):MInt => _)
"R13" |-> (mi(64, 0):MInt => _)
"YMM5" |-> (mi(256, 0):MInt => _)
"YMM6" |-> (mi(256, 0):MInt => _)
"R10" |-> (mi(64, 0):MInt => _)
"YMM15" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vmovhlps_xmm_xmm_xmm
instr:vmovhlps %xmm3, %xmm2, %xmm1
maybe read:{ %xmm2 %xmm3 }
must read:{ %xmm2 %xmm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx }

circuit:callq .move_128_064_xmm3_r10_r11  #  1     0     5      OPC=callq_label
circuit:callq .move_128_064_xmm2_r12_r13  #  2     0x5   5      OPC=callq_label
circuit:vzeroall                          #  3     0xa   3      OPC=vzeroall
circuit:movq %r11, %r12                   #  4     0xd   3      OPC=movq_r64_r64
circuit:callq .move_064_128_r12_r13_xmm1  #  5     0x10  5      OPC=callq_label
*/
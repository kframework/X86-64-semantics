module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
split2NToN(%xmm2,  %r10, %r11 , 64) ~>
execinstr ( vzeroall  .Typedoperands ) ~>
combineNTo2N(%r10,  %r11, %xmm3, 64, 128, 64) ~>
execinstr ( cvtsi2ssl %ebx, %xmm3 , .Typedoperands ) ~>
execinstr ( movdqa %xmm3, %xmm1 , .Typedoperands ) ~>
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
"R10" |-> (mi(64, 0):MInt => _)
"R11" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, ?I1:Int):MInt => _)
"YMM0" |-> (mi(256, 0):MInt => _)
"YMM1" |-> (mi(256, ?I2:Int):MInt => _)
"YMM10" |-> (mi(256, 0):MInt => _)
"YMM11" |-> (mi(256, 0):MInt => _)
"YMM12" |-> (mi(256, 0):MInt => _)
"YMM13" |-> (mi(256, 0):MInt => _)
"YMM14" |-> (mi(256, 0):MInt => _)
"YMM15" |-> (mi(256, 0):MInt => _)
"YMM2" |-> (mi(256, ?I3:Int):MInt => _)
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
opcode:vcvtsi2ssl_xmm_xmm_r32
instr:vcvtsi2ssl %ebx, %xmm2, %xmm1
maybe read:{ %ebx %xmm2 %mxcsr::rc[0] }
must read:{ %ebx %xmm2 %mxcsr::rc[0] }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx }

circuit:callq .move_128_064_xmm2_r10_r11  #  1     0     5      OPC=callq_label
circuit:vzeroall                          #  2     0x5   3      OPC=vzeroall
circuit:callq .move_064_128_r10_r11_xmm3  #  3     0x8   5      OPC=callq_label
circuit:cvtsi2ssl %ebx, %xmm3             #  4     0xd   4      OPC=cvtsi2ssl_xmm_r32
circuit:movdqa %xmm3, %xmm1               #  5     0x11  4      OPC=movdqa_xmm_xmm
*/
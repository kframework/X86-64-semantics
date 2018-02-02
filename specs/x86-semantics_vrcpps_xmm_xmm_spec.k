module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
split2NToN( %xmm2, %r12, %r13 ) ~>
execinstr ( vzeroall  .Typedoperands ) ~>
combineNTo2N( %r12, %r13, %xmm1 ) ~>
execinstr ( vrcpps %ymm1, %ymm10 , .Typedoperands ) ~>
combineNTo2N( %xmm10, %xmm11, %ymm1 ) ~>
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
"YMM1" |-> (mi(256, ?I1:Int):MInt => _)
"YMM7" |-> (mi(256, 0):MInt => _)
"YMM6" |-> (mi(256, 0):MInt => _)
"YMM13" |-> (mi(256, 0):MInt => _)
"R13" |-> (mi(64, 0):MInt => _)
"YMM5" |-> (mi(256, 0):MInt => _)
"YMM11" |-> (mi(256, 0):MInt => _)
"YMM3" |-> (mi(256, 0):MInt => _)
"YMM12" |-> (mi(256, 0):MInt => _)
"YMM9" |-> (mi(256, 0):MInt => _)
"YMM14" |-> (mi(256, 0):MInt => _)
"YMM0" |-> (mi(256, 0):MInt => _)
"YMM8" |-> (mi(256, 0):MInt => _)
"YMM15" |-> (mi(256, 0):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"R12" |-> (mi(64, 0):MInt => _)
"YMM10" |-> (mi(256, 0):MInt => _)
"YMM4" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vrcpps_xmm_xmm
instr:vrcpps %xmm2, %xmm1
maybe read:{ %xmm2 }
must read:{ %xmm2 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx }

circuit:callq .move_128_064_xmm2_r12_r13      #  1     0     5      OPC=callq_label
circuit:vzeroall                              #  2     0x5   3      OPC=vzeroall
circuit:callq .move_064_128_r12_r13_xmm1      #  3     0x8   5      OPC=callq_label
circuit:vrcpps %ymm1, %ymm10                  #  4     0xd   4      OPC=vrcpps_ymm_ymm
circuit:callq .move_128_256_xmm10_xmm11_ymm1  #  5     0x11  5      OPC=callq_label
*/
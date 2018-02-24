module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vfnmsub231pd %xmm3, %xmm1, %xmm2 , .Typedoperands ) ~>
execinstr ( movsd %xmm2, %xmm1 , .Typedoperands ) ~>
split2NToN(%xmm1,  %r10, %r11 , 64) ~>
execinstr ( vzeroall  .Typedoperands ) ~>
execinstr ( vfmadd231ss %xmm14, %xmm12, %xmm1 , .Typedoperands ) ~>
combineNTo2N(%r10,  %r11, %xmm1, 64, 128, 64) ~>
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
"YMM0" |-> (mi(256, 0):MInt => _)
"YMM1" |-> (mi(256, ?I1:Int):MInt => _)
"YMM10" |-> (mi(256, 0):MInt => _)
"YMM11" |-> (mi(256, 0):MInt => _)
"YMM12" |-> (mi(256, 0):MInt => _)
"YMM13" |-> (mi(256, 0):MInt => _)
"YMM14" |-> (mi(256, 0):MInt => _)
"YMM15" |-> (mi(256, 0):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM3" |-> (mi(256, ?I3:Int):MInt => _)
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
opcode:vfnmsub132sd_xmm_xmm_xmm
instr:vfnmsub132sd %xmm3, %xmm2, %xmm1
maybe read:{ %xmm1 %xmm2 %xmm3 }
must read:{ %xmm1 %xmm2 %xmm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ fma }

circuit:vfnmsub231pd %xmm3, %xmm1, %xmm2   #  1     0     5      OPC=vfnmsub231pd_xmm_xmm_xmm
circuit:movsd %xmm2, %xmm1                 #  2     0x5   4      OPC=movsd_xmm_xmm
circuit:callq .move_128_064_xmm1_r10_r11   #  3     0x9   5      OPC=callq_label
circuit:vzeroall                           #  4     0xe   3      OPC=vzeroall
circuit:vfmadd231ss %xmm14, %xmm12, %xmm1  #  5     0x11  5      OPC=vfmadd231ss_xmm_xmm_xmm
circuit:callq .move_064_128_r10_r11_xmm1   #  6     0x16  5      OPC=callq_label
*/
module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vbroadcastss %xmm3, %ymm0 , .Typedoperands ) ~>
splitXmmToR32( %xmm3, %xmm8, %xmm9, %xmm10, %xmm11, 128 ) ~>
execinstr ( pmovzxbd %xmm8, %xmm7 , .Typedoperands ) ~>
execinstr ( vfnmsub132ps %xmm7, %xmm0, %xmm8 , .Typedoperands ) ~>
execinstr ( vfmadd213ss %xmm8, %xmm2, %xmm1 , .Typedoperands ) ~>
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
"YMM0" |-> (mi(256, 0):MInt => _)
"YMM1" |-> (mi(256, ?I1:Int):MInt => _)
"YMM10" |-> (mi(256, 0):MInt => _)
"YMM11" |-> (mi(256, 0):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM3" |-> (mi(256, ?I3:Int):MInt => _)
"YMM7" |-> (mi(256, 0):MInt => _)
"YMM8" |-> (mi(256, 0):MInt => _)
"YMM9" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vfmsub213ss_xmm_xmm_xmm
instr:vfmsub213ss %xmm3, %xmm2, %xmm1
maybe read:{ %xmm1 %xmm2 %xmm3 }
must read:{ %xmm1 %xmm2 %xmm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ fma }

circuit:vbroadcastss %xmm3, %ymm0                       #  1     0     5      OPC=vbroadcastss_ymm_xmm
circuit:callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label
circuit:pmovzxbd %xmm8, %xmm7                           #  3     0xa   6      OPC=pmovzxbd_xmm_xmm
circuit:vfnmsub132ps %xmm7, %xmm0, %xmm8                #  4     0x10  5      OPC=vfnmsub132ps_xmm_xmm_xmm
circuit:vfmadd213ss %xmm8, %xmm2, %xmm1                 #  5     0x15  5      OPC=vfmadd213ss_xmm_xmm_xmm
*/
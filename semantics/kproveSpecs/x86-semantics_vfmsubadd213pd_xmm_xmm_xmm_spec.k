module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
splitXmmToR32( %xmm3, %xmm8, %xmm9, %xmm10, %xmm11, 128 ) ~>
execinstr ( vfnmsub213sd %xmm3, %xmm11, %xmm3 , .Typedoperands ) ~>
split2NToN(%ymm3,  %xmm10, %xmm11 , 128) ~>
execinstr ( vfmsub213pd %xmm10, %xmm2, %xmm1 , .Typedoperands ) ~>
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
"YMM10" |-> (mi(256, 0):MInt => _)
"YMM11" |-> (mi(256, 0):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM3" |-> (mi(256, ?I3:Int):MInt => _)
"YMM8" |-> (mi(256, 0):MInt => _)
"YMM9" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vfmsubadd213pd_xmm_xmm_xmm
instr:vfmsubadd213pd %xmm3, %xmm2, %xmm1
maybe read:{ %xmm1 %xmm2 %xmm3 }
must read:{ %xmm1 %xmm2 %xmm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ fma }

circuit:callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label
circuit:vfnmsub213sd %xmm3, %xmm11, %xmm3               #  2     0x5   5      OPC=vfnmsub213sd_xmm_xmm_xmm
circuit:callq .move_256_128_ymm3_xmm10_xmm11            #  3     0xa   5      OPC=callq_label
circuit:vfmsub213pd %xmm10, %xmm2, %xmm1                #  4     0xf   5      OPC=vfmsub213pd_xmm_xmm_xmm
*/
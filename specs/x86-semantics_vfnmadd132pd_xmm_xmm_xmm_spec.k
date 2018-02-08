module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
splitXmmToR32( %xmm1, %xmm8, %xmm9, %xmm10, %xmm11, 128 ) ~>
execinstr ( vpxor %xmm12, %xmm12, %xmm9 , .Typedoperands ) ~>
execinstr ( vfnmsub231pd %xmm10, %xmm9, %xmm2 , .Typedoperands ) ~>
execinstr ( vfnmsub132pd %xmm3, %xmm2, %xmm1 , .Typedoperands ) ~>
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
"YMM12" |-> (mi(256, 0):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM3" |-> (mi(256, ?I3:Int):MInt => _)
"YMM8" |-> (mi(256, 0):MInt => _)
"YMM9" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vfnmadd132pd_xmm_xmm_xmm
instr:vfnmadd132pd %xmm3, %xmm2, %xmm1
maybe read:{ %xmm1 %xmm2 %xmm3 }
must read:{ %xmm1 %xmm2 %xmm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ fma }

circuit:callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label
circuit:vpxor %xmm12, %xmm12, %xmm9                     #  2     0x5   5      OPC=vpxor_xmm_xmm_xmm
circuit:vfnmsub231pd %xmm10, %xmm9, %xmm2               #  3     0xa   5      OPC=vfnmsub231pd_xmm_xmm_xmm
circuit:vfnmsub132pd %xmm3, %xmm2, %xmm1                #  4     0xf   5      OPC=vfnmsub132pd_xmm_xmm_xmm
*/
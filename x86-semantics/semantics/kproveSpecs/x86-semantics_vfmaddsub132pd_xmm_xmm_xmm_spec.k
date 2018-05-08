module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
split2NToN(%xmm1,  %xmm10, %xmm11 , 64) ~>
execinstr ( vfmsub231sd %xmm3, %xmm10, %xmm2 , .Typedoperands ) ~>
execinstr ( vpunpcklqdq %xmm2, %xmm10, %xmm12 , .Typedoperands ) ~>
execinstr ( vfmadd231pd %xmm3, %xmm1, %xmm2 , .Typedoperands ) ~>
execinstr ( vmovhlps %xmm12, %xmm2, %xmm1 , .Typedoperands ) ~>
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

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vfmaddsub132pd_xmm_xmm_xmm
instr:vfmaddsub132pd %xmm3, %xmm2, %xmm1
maybe read:{ %xmm1 %xmm2 %xmm3 }
must read:{ %xmm1 %xmm2 %xmm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ fma }

circuit:callq .move_128_64_xmm1_xmm10_xmm11  #  1     0     5      OPC=callq_label
circuit:vfmsub231sd %xmm3, %xmm10, %xmm2     #  2     0x5   5      OPC=vfmsub231sd_xmm_xmm_xmm
circuit:vpunpcklqdq %xmm2, %xmm10, %xmm12    #  3     0xa   4      OPC=vpunpcklqdq_xmm_xmm_xmm
circuit:vfmadd231pd %xmm3, %xmm1, %xmm2      #  4     0xe   5      OPC=vfmadd231pd_xmm_xmm_xmm
circuit:vmovhlps %xmm12, %xmm2, %xmm1        #  5     0x13  5      OPC=vmovhlps_xmm_xmm_xmm
*/
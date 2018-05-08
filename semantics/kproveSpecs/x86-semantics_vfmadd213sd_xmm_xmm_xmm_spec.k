module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
split2NToN(%xmm2,  %xmm10, %xmm11 , 64) ~>
execinstr ( vfmadd231pd %xmm1, %xmm10, %xmm3 , .Typedoperands ) ~>
execinstr ( vpunpcklqdq %ymm3, %ymm3, %ymm11 , .Typedoperands ) ~>
execinstr ( vmovsd %xmm11, %xmm1, %xmm1 , .Typedoperands ) ~>
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

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vfmadd213sd_xmm_xmm_xmm
instr:vfmadd213sd %xmm3, %xmm2, %xmm1
maybe read:{ %xmm1 %xmm2 %xmm3 }
must read:{ %xmm1 %xmm2 %xmm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ fma }

circuit:callq .move_128_64_xmm2_xmm10_xmm11  #  1     0     5      OPC=callq_label
circuit:vfmadd231pd %xmm1, %xmm10, %xmm3     #  2     0x5   5      OPC=vfmadd231pd_xmm_xmm_xmm
circuit:vpunpcklqdq %ymm3, %ymm3, %ymm11     #  3     0xa   4      OPC=vpunpcklqdq_ymm_ymm_ymm
circuit:vmovsd %xmm11, %xmm1, %xmm1          #  4     0xe   5      OPC=vmovsd_xmm_xmm_xmm
*/
module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( movlhps %xmm2, %xmm2 , .Typedoperands ) ~>
execinstr ( vmovddup %ymm3, %ymm8 , .Typedoperands ) ~>
execinstr ( vmovddup %ymm2, %ymm6 , .Typedoperands ) ~>
execinstr ( vunpckhps %ymm8, %ymm6, %ymm1 , .Typedoperands ) ~>
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
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM3" |-> (mi(256, ?I3:Int):MInt => _)
"YMM6" |-> (mi(256, 0):MInt => _)
"YMM8" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vunpcklps_ymm_ymm_ymm
instr:vunpcklps %ymm3, %ymm2, %ymm1
maybe read:{ %ymm2 %ymm3 }
must read:{ %ymm2 %ymm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx }

circuit:movlhps %xmm2, %xmm2           #  1     0     3      OPC=movlhps_xmm_xmm
circuit:vmovddup %ymm3, %ymm8          #  2     0x3   4      OPC=vmovddup_ymm_ymm
circuit:vmovddup %ymm2, %ymm6          #  3     0x7   4      OPC=vmovddup_ymm_ymm
circuit:vunpckhps %ymm8, %ymm6, %ymm1  #  4     0xb   5      OPC=vunpckhps_ymm_ymm_ymm
*/
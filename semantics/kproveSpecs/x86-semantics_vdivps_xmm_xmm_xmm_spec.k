module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( divps %xmm3, %xmm2 , .Typedoperands ) ~>
execinstr ( vmovdqa %xmm2, %xmm8 , .Typedoperands ) ~>
execinstr ( vmovdqa %ymm8, %ymm4 , .Typedoperands ) ~>
execinstr ( vmovdqa %xmm4, %xmm1 , .Typedoperands ) ~>
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
"YMM4" |-> (mi(256, 0):MInt => _)
"YMM8" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vdivps_xmm_xmm_xmm
instr:vdivps %xmm3, %xmm2, %xmm1
maybe read:{ %xmm2 %xmm3 }
must read:{ %xmm2 %xmm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx }

circuit:divps %xmm3, %xmm2    #  1     0     3      OPC=divps_xmm_xmm
circuit:vmovdqa %xmm2, %xmm8  #  2     0x3   4      OPC=vmovdqa_xmm_xmm
circuit:vmovdqa %ymm8, %ymm4  #  3     0x7   5      OPC=vmovdqa_ymm_ymm
circuit:vmovdqa %xmm4, %xmm1  #  4     0xc   4      OPC=vmovdqa_xmm_xmm
*/
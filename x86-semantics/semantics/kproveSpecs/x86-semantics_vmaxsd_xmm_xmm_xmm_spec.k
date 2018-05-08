module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vpunpcklqdq %xmm3, %xmm3, %xmm13 , .Typedoperands ) ~>
execinstr ( vmovdqa %xmm2, %xmm6 , .Typedoperands ) ~>
execinstr ( vmaxpd %ymm13, %ymm6, %ymm3 , .Typedoperands ) ~>
execinstr ( vmovsd %xmm3, %xmm2, %xmm1 , .Typedoperands ) ~>
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
"YMM13" |-> (mi(256, 0):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM3" |-> (mi(256, ?I3:Int):MInt => _)
"YMM6" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vmaxsd_xmm_xmm_xmm
instr:vmaxsd %xmm3, %xmm2, %xmm1
maybe read:{ %xmm2 %xmm3 }
must read:{ %xmm2 %xmm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx }

circuit:vpunpcklqdq %xmm3, %xmm3, %xmm13  #  1     0     4      OPC=vpunpcklqdq_xmm_xmm_xmm
circuit:vmovdqa %xmm2, %xmm6              #  2     0x4   4      OPC=vmovdqa_xmm_xmm
circuit:vmaxpd %ymm13, %ymm6, %ymm3       #  3     0x8   5      OPC=vmaxpd_ymm_ymm_ymm
circuit:vmovsd %xmm3, %xmm2, %xmm1        #  4     0xd   4      OPC=vmovsd_xmm_xmm_xmm
*/
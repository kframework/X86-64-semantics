module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vpunpcklqdq %xmm1, %xmm1, %xmm13 , .Typedoperands ) ~>
execinstr ( movss %xmm3, %xmm1 , .Typedoperands ) ~>
execinstr ( vpunpckldq %ymm13, %ymm13, %ymm13 , .Typedoperands ) ~>
execinstr ( vfnmsub213ss %xmm13, %xmm2, %xmm1 , .Typedoperands ) ~>
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

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vfnmsub231ss_xmm_xmm_xmm
instr:vfnmsub231ss %xmm3, %xmm2, %xmm1
maybe read:{ %xmm1 %xmm2 %xmm3 }
must read:{ %xmm1 %xmm2 %xmm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ fma }

circuit:vpunpcklqdq %xmm1, %xmm1, %xmm13   #  1     0     4      OPC=vpunpcklqdq_xmm_xmm_xmm
circuit:movss %xmm3, %xmm1                 #  2     0x4   4      OPC=movss_xmm_xmm
circuit:vpunpckldq %ymm13, %ymm13, %ymm13  #  3     0x8   5      OPC=vpunpckldq_ymm_ymm_ymm
circuit:vfnmsub213ss %xmm13, %xmm2, %xmm1  #  4     0xd   5      OPC=vfnmsub213ss_xmm_xmm_xmm
*/
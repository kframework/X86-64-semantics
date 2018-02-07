module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vpunpcklqdq %ymm3, %ymm2, %ymm9 , .Typedoperands ) ~>
execinstr ( vpunpckhqdq %ymm3, %ymm2, %ymm6 , .Typedoperands ) ~>
execinstr ( vmovdqa %ymm9, %ymm2 , .Typedoperands ) ~>
execinstr ( vsubpd %ymm6, %ymm2, %ymm1 , .Typedoperands ) ~>
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
"YMM9" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vhsubpd_ymm_ymm_ymm
instr:vhsubpd %ymm3, %ymm2, %ymm1
maybe read:{ %ymm2 %ymm3 }
must read:{ %ymm2 %ymm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx }

circuit:vpunpcklqdq %ymm3, %ymm2, %ymm9  #  1     0     4      OPC=vpunpcklqdq_ymm_ymm_ymm
circuit:vpunpckhqdq %ymm3, %ymm2, %ymm6  #  2     0x4   4      OPC=vpunpckhqdq_ymm_ymm_ymm
circuit:vmovdqa %ymm9, %ymm2             #  3     0x8   5      OPC=vmovdqa_ymm_ymm
circuit:vsubpd %ymm6, %ymm2, %ymm1       #  4     0xd   4      OPC=vsubpd_ymm_ymm_ymm
*/
module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vunpcklps %ymm3, %ymm2, %ymm11 , .Typedoperands ) ~>
execinstr ( vmovaps %ymm11, %ymm1 , .Typedoperands ) ~>
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
"YMM11" |-> (mi(256, 0):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM3" |-> (mi(256, ?I3:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vpunpckldq_ymm_ymm_ymm
instr:vpunpckldq %ymm3, %ymm2, %ymm1
maybe read:{ %ymm2 %ymm3 }
must read:{ %ymm2 %ymm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx2 }

circuit:vunpcklps %ymm3, %ymm2, %ymm11  #  1     0    4      OPC=vunpcklps_ymm_ymm_ymm
circuit:vmovaps %ymm11, %ymm1           #  2     0x4  5      OPC=vmovaps_ymm_ymm
*/
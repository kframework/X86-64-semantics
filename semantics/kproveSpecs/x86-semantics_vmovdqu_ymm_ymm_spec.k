module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vmaxps %ymm2, %ymm2, %ymm10 , .Typedoperands ) ~>
execinstr ( vmaxpd %ymm10, %ymm2, %ymm1 , .Typedoperands ) ~>
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
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vmovdqu_ymm_ymm
instr:vmovdqu %ymm2, %ymm1
maybe read:{ %ymm2 }
must read:{ %ymm2 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx }

circuit:vmaxps %ymm2, %ymm2, %ymm10  #  1     0    4      OPC=vmaxps_ymm_ymm_ymm
circuit:vmaxpd %ymm10, %ymm2, %ymm1  #  2     0x4  5      OPC=vmaxpd_ymm_ymm_ymm
*/
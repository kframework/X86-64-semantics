module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vorpd %ymm3, %ymm2, %ymm4 , .Typedoperands ) ~>
execinstr ( vandps %ymm2, %ymm3, %ymm13 , .Typedoperands ) ~>
execinstr ( vandnps %ymm4, %ymm13, %ymm1 , .Typedoperands ) ~>
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
"YMM4" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vxorpd_ymm_ymm_ymm
instr:vxorpd %ymm3, %ymm2, %ymm1
maybe read:{ %ymm2 %ymm3 }
must read:{ %ymm2 %ymm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx }

circuit:vorpd %ymm3, %ymm2, %ymm4     #  1     0    4      OPC=vorpd_ymm_ymm_ymm
circuit:vandps %ymm2, %ymm3, %ymm13   #  2     0x4  4      OPC=vandps_ymm_ymm_ymm
circuit:vandnps %ymm4, %ymm13, %ymm1  #  3     0x8  4      OPC=vandnps_ymm_ymm_ymm
*/
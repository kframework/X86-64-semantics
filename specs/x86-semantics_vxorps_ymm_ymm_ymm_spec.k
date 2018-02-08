module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vpor %ymm2, %ymm3, %ymm14 , .Typedoperands ) ~>
execinstr ( vandps %ymm3, %ymm2, %ymm4 , .Typedoperands ) ~>
execinstr ( vandnpd %ymm14, %ymm4, %ymm1 , .Typedoperands ) ~>
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
"YMM14" |-> (mi(256, 0):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM3" |-> (mi(256, ?I3:Int):MInt => _)
"YMM4" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vxorps_ymm_ymm_ymm
instr:vxorps %ymm3, %ymm2, %ymm1
maybe read:{ %ymm2 %ymm3 }
must read:{ %ymm2 %ymm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx }

circuit:vpor %ymm2, %ymm3, %ymm14     #  1     0    4      OPC=vpor_ymm_ymm_ymm
circuit:vandps %ymm3, %ymm2, %ymm4    #  2     0x4  4      OPC=vandps_ymm_ymm_ymm
circuit:vandnpd %ymm14, %ymm4, %ymm1  #  3     0x8  5      OPC=vandnpd_ymm_ymm_ymm
*/
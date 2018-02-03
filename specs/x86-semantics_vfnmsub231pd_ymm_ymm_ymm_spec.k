module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vfnmsub132pd %ymm3, %ymm1, %ymm2 , .Typedoperands ) ~>
execinstr ( vmaxpd %ymm2, %ymm2, %ymm1 , .Typedoperands ) ~>
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

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vfnmsub231pd_ymm_ymm_ymm
instr:vfnmsub231pd %ymm3, %ymm2, %ymm1
maybe read:{ %ymm1 %ymm2 %ymm3 }
must read:{ %ymm1 %ymm2 %ymm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ fma }

circuit:vfnmsub132pd %ymm3, %ymm1, %ymm2  #  1     0    5      OPC=vfnmsub132pd_ymm_ymm_ymm
circuit:vmaxpd %ymm2, %ymm2, %ymm1        #  2     0x5  4      OPC=vmaxpd_ymm_ymm_ymm
*/
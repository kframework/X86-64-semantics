module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vminps %ymm1, %ymm1, %ymm9 , .Typedoperands ) ~>
execinstr ( vfmsub132ps %ymm3, %ymm9, %ymm2 , .Typedoperands ) ~>
execinstr ( vminps %ymm2, %ymm2, %ymm1 , .Typedoperands ) ~>
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
      regstateInitConfig => regstateFinalConfig
    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vfmsub231ps_ymm_ymm_ymm
instr:vfmsub231ps %ymm3, %ymm2, %ymm1
maybe read:{ %ymm1 %ymm2 %ymm3 }
must read:{ %ymm1 %ymm2 %ymm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ fma }

circuit:vminps %ymm1, %ymm1, %ymm9       #  1     0    4      OPC=vminps_ymm_ymm_ymm
circuit:vfmsub132ps %ymm3, %ymm9, %ymm2  #  2     0x4  5      OPC=vfmsub132ps_ymm_ymm_ymm
circuit:vminps %ymm2, %ymm2, %ymm1       #  3     0x9  4      OPC=vminps_ymm_ymm_ymm
*/
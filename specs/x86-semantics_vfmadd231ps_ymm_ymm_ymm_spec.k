module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vfmadd132ps %ymm3, %ymm1, %ymm2 , .Typedoperands ) ~>
execinstr ( vminps %ymm2, %ymm2, %ymm10 , .Typedoperands ) ~>
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
      regstateInitConfig => regstateFinalConfig
    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vfmadd231ps_ymm_ymm_ymm
instr:vfmadd231ps %ymm3, %ymm2, %ymm1
maybe read:{ %ymm1 %ymm2 %ymm3 }
must read:{ %ymm1 %ymm2 %ymm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ fma }

circuit:vfmadd132ps %ymm3, %ymm1, %ymm2  #  1     0    5      OPC=vfmadd132ps_ymm_ymm_ymm
circuit:vminps %ymm2, %ymm2, %ymm10      #  2     0x5  4      OPC=vminps_ymm_ymm_ymm
circuit:vmaxpd %ymm10, %ymm2, %ymm1      #  3     0x9  5      OPC=vmaxpd_ymm_ymm_ymm
*/
module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vfnmsub132ps %ymm1, %ymm3, %ymm2 , .Typedoperands ) ~>
execinstr ( vmaxps %ymm2, %ymm2, %ymm1 , .Typedoperands ) ~>
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
opcode:vfnmsub213ps_ymm_ymm_ymm
instr:vfnmsub213ps %ymm3, %ymm2, %ymm1
maybe read:{ %ymm1 %ymm2 %ymm3 }
must read:{ %ymm1 %ymm2 %ymm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ fma }

circuit:vfnmsub132ps %ymm1, %ymm3, %ymm2  #  1     0    5      OPC=vfnmsub132ps_ymm_ymm_ymm
circuit:vmaxps %ymm2, %ymm2, %ymm1        #  2     0x5  4      OPC=vmaxps_ymm_ymm_ymm
*/
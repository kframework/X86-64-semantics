module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vfmsub132pd %ymm3, %ymm1, %ymm2 , .Typedoperands ) ~>
split2NToN( %xmm2, %r10, %r11 ) ~>
execinstr ( vminpd %ymm2, %ymm2, %ymm1 , .Typedoperands ) ~>
combineNTo2N( %r10, %r11, %xmm1 ) ~>
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
opcode:vfmsub231pd_ymm_ymm_ymm
instr:vfmsub231pd %ymm3, %ymm2, %ymm1
maybe read:{ %ymm1 %ymm2 %ymm3 }
must read:{ %ymm1 %ymm2 %ymm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ fma }

circuit:vfmsub132pd %ymm3, %ymm1, %ymm2   #  1     0     5      OPC=vfmsub132pd_ymm_ymm_ymm
circuit:callq .move_128_064_xmm2_r10_r11  #  2     0x5   5      OPC=callq_label
circuit:vminpd %ymm2, %ymm2, %ymm1        #  3     0xa   4      OPC=vminpd_ymm_ymm_ymm
circuit:callq .move_064_128_r10_r11_xmm1  #  4     0xe   5      OPC=callq_label
*/
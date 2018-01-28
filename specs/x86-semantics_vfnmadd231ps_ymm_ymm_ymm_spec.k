module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vfnmadd132ps %ymm3, %ymm1, %ymm2 , .Typedoperands ) ~>
split2NToN( %ymm2, %xmm12, %xmm13 ) ~>
combineNTo2N( %xmm12, %xmm13, %ymm1 ) ~>
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
opcode:vfnmadd231ps_ymm_ymm_ymm
instr:vfnmadd231ps %ymm3, %ymm2, %ymm1
maybe read:{ %ymm1 %ymm2 %ymm3 }
must read:{ %ymm1 %ymm2 %ymm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ fma }

circuit:vfnmadd132ps %ymm3, %ymm1, %ymm2      #  1     0    5      OPC=vfnmadd132ps_ymm_ymm_ymm
circuit:callq .move_256_128_ymm2_xmm12_xmm13  #  2     0x5  5      OPC=callq_label
circuit:callq .move_128_256_xmm12_xmm13_ymm1  #  3     0xa  5      OPC=callq_label
*/
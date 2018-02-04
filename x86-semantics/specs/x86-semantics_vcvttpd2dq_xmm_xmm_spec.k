module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vmovdqu %xmm2, %xmm4 , .Typedoperands ) ~>
execinstr ( vcvttpd2dq %ymm4, %xmm1 , .Typedoperands ) ~>
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
opcode:vcvttpd2dq_xmm_xmm
instr:vcvttpd2dq %xmm2, %xmm1
maybe read:{ %xmm2 }
must read:{ %xmm2 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx }

circuit:vmovdqu %xmm2, %xmm4     #  1     0    4      OPC=vmovdqu_xmm_xmm
circuit:vcvttpd2dq %ymm4, %xmm1  #  2     0x4  4      OPC=vcvttpd2dq_xmm_ymm
*/
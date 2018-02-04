module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vmovapd %xmm1, %xmm12 , .Typedoperands ) ~>
execinstr ( vcvttpd2dq %ymm12, %xmm9 , .Typedoperands ) ~>
execinstr ( movd %xmm9, %ebx , .Typedoperands ) ~>
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
opcode:vcvttsd2sil_r32_xmm
instr:vcvttsd2sil %xmm1, %ebx
maybe read:{ %xmm1 }
must read:{ %xmm1 }
maybe write:{ %rbx }
must write:{ %rbx }
maybe undef:{ }
must undef:{ }
required flags:{ avx }

circuit:vmovapd %xmm1, %xmm12     #  1     0    4      OPC=vmovapd_xmm_xmm
circuit:vcvttpd2dq %ymm12, %xmm9  #  2     0x4  5      OPC=vcvttpd2dq_xmm_ymm
circuit:movd %xmm9, %ebx          #  3     0x9  5      OPC=movd_r32_xmm
*/
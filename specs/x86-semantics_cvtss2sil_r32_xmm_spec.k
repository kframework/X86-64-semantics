module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vmovaps %xmm1, %xmm1 , .Typedoperands ) ~>
execinstr ( vcvtps2dq %ymm1, %ymm6 , .Typedoperands ) ~>
execinstr ( movd %xmm6, %ebx , .Typedoperands ) ~>
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
opcode:cvtss2sil_r32_xmm
instr:cvtss2sil %xmm1, %ebx
maybe read:{ %xmm1 }
must read:{ %xmm1 }
maybe write:{ %rbx }
must write:{ %rbx }
maybe undef:{ }
must undef:{ }
required flags:{ sse }

circuit:vmovaps %xmm1, %xmm1    #  1     0    4      OPC=vmovaps_xmm_xmm
circuit:vcvtps2dq %ymm1, %ymm6  #  2     0x4  4      OPC=vcvtps2dq_ymm_ymm
circuit:movd %xmm6, %ebx        #  3     0x8  4      OPC=movd_r32_xmm
*/
module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vpmovzxdq %xmm1, %xmm11 , .Typedoperands ) ~>
execinstr ( vcvtps2dq %ymm11, %ymm12 , .Typedoperands ) ~>
execinstr ( vmovq %xmm12, %rbx , .Typedoperands ) ~>
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
opcode:vcvtss2sil_r32_xmm
instr:vcvtss2sil %xmm1, %ebx
maybe read:{ %xmm1 }
must read:{ %xmm1 }
maybe write:{ %rbx }
must write:{ %rbx }
maybe undef:{ }
must undef:{ }
required flags:{ avx }

circuit:vpmovzxdq %xmm1, %xmm11   #  1     0    5      OPC=vpmovzxdq_xmm_xmm
circuit:vcvtps2dq %ymm11, %ymm12  #  2     0x5  5      OPC=vcvtps2dq_ymm_ymm
circuit:vmovq %xmm12, %rbx        #  3     0xa  5      OPC=vmovq_r64_xmm
*/
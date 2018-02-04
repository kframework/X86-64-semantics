module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vpmovzxdq %xmm1, %xmm0 , .Typedoperands ) ~>
execinstr ( vcvttps2dq %ymm0, %ymm1 , .Typedoperands ) ~>
execinstr ( vmovq %xmm1, %rbx , .Typedoperands ) ~>
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
opcode:cvttss2sil_r32_xmm
instr:cvttss2sil %xmm1, %ebx
maybe read:{ %xmm1 }
must read:{ %xmm1 }
maybe write:{ %rbx }
must write:{ %rbx }
maybe undef:{ }
must undef:{ }
required flags:{ sse }

circuit:vpmovzxdq %xmm1, %xmm0   #  1     0    5      OPC=vpmovzxdq_xmm_xmm
circuit:vcvttps2dq %ymm0, %ymm1  #  2     0x5  4      OPC=vcvttps2dq_ymm_ymm
circuit:vmovq %xmm1, %rbx        #  3     0x9  5      OPC=vmovq_r64_xmm
*/
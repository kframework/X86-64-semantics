module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vmovdqu %xmm1, %xmm12 , .Typedoperands ) ~>
execinstr ( vpbroadcastq %xmm12, %xmm14 , .Typedoperands ) ~>
execinstr ( vcvtpd2dq %ymm14, %xmm0 , .Typedoperands ) ~>
execinstr ( movd %xmm0, %ebx , .Typedoperands ) ~>
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
opcode:vcvtsd2sil_r32_xmm
instr:vcvtsd2sil %xmm1, %ebx
maybe read:{ %xmm1 %mxcsr::rc[0] }
must read:{ %xmm1 %mxcsr::rc[0] }
maybe write:{ %rbx }
must write:{ %rbx }
maybe undef:{ }
must undef:{ }
required flags:{ avx }

circuit:vmovdqu %xmm1, %xmm12        #  1     0     4      OPC=vmovdqu_xmm_xmm
circuit:vpbroadcastq %xmm12, %xmm14  #  2     0x4   5      OPC=vpbroadcastq_xmm_xmm
circuit:vcvtpd2dq %ymm14, %xmm0      #  3     0x9   5      OPC=vcvtpd2dq_xmm_ymm
circuit:movd %xmm0, %ebx             #  4     0xe   4      OPC=movd_r32_xmm
*/
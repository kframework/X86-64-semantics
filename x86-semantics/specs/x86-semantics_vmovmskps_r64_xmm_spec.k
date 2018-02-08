module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vpmovsxdq %xmm1, %ymm2 , .Typedoperands ) ~>
execinstr ( vmovmskpd %ymm2, %rbx , .Typedoperands ) ~>
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
"RIP" |->    (mi(64, 0) => _)
"RBX" |-> (mi(64, ?I1:Int):MInt => _)
"YMM1" |-> (mi(256, ?I2:Int):MInt => _)
"YMM2" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vmovmskps_r64_xmm
instr:vmovmskps %xmm1, %rbx
maybe read:{ %xmm1 }
must read:{ %xmm1 }
maybe write:{ %rbx }
must write:{ %rbx }
maybe undef:{ }
must undef:{ }
required flags:{ avx }

circuit:vpmovsxdq %xmm1, %ymm2  #  1     0    5      OPC=vpmovsxdq_ymm_xmm
circuit:vmovmskpd %ymm2, %rbx   #  2     0x5  4      OPC=vmovmskpd_r64_ymm
*/
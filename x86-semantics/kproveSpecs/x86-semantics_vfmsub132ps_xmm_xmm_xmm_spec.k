module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vmovdqa %xmm1, %xmm1 , .Typedoperands ) ~>
execinstr ( vmovupd %xmm3, %xmm0 , .Typedoperands ) ~>
execinstr ( vmovupd %xmm2, %xmm4 , .Typedoperands ) ~>
execinstr ( vfmsub132ps %ymm0, %ymm4, %ymm1 , .Typedoperands ) ~>
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
"YMM0" |-> (mi(256, 0):MInt => _)
"YMM1" |-> (mi(256, ?I1:Int):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM3" |-> (mi(256, ?I3:Int):MInt => _)
"YMM4" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vfmsub132ps_xmm_xmm_xmm
instr:vfmsub132ps %xmm3, %xmm2, %xmm1
maybe read:{ %xmm1 %xmm2 %xmm3 }
must read:{ %xmm1 %xmm2 %xmm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ fma }

circuit:vmovdqa %xmm1, %xmm1             #  1     0     4      OPC=vmovdqa_xmm_xmm
circuit:vmovupd %xmm3, %xmm0             #  2     0x4   4      OPC=vmovupd_xmm_xmm
circuit:vmovupd %xmm2, %xmm4             #  3     0x8   4      OPC=vmovupd_xmm_xmm
circuit:vfmsub132ps %ymm0, %ymm4, %ymm1  #  4     0xc   5      OPC=vfmsub132ps_ymm_ymm_ymm
*/
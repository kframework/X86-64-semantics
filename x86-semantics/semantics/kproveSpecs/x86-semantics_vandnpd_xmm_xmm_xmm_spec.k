module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vorpd %xmm2, %xmm3, %xmm12 , .Typedoperands ) ~>
execinstr ( vmovupd %ymm12, %ymm1 , .Typedoperands ) ~>
execinstr ( pxor %xmm1, %xmm2 , .Typedoperands ) ~>
execinstr ( vmovdqa %xmm2, %xmm1 , .Typedoperands ) ~>
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
"YMM1" |-> (mi(256, ?I1:Int):MInt => _)
"YMM12" |-> (mi(256, 0):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM3" |-> (mi(256, ?I3:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vandnpd_xmm_xmm_xmm
instr:vandnpd %xmm3, %xmm2, %xmm1
maybe read:{ %xmm2 %xmm3 }
must read:{ %xmm2 %xmm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx }

circuit:vorpd %xmm2, %xmm3, %xmm12  #  1     0     4      OPC=vorpd_xmm_xmm_xmm
circuit:vmovupd %ymm12, %ymm1       #  2     0x4   5      OPC=vmovupd_ymm_ymm
circuit:pxor %xmm1, %xmm2           #  3     0x9   4      OPC=pxor_xmm_xmm
circuit:vmovdqa %xmm2, %xmm1        #  4     0xd   4      OPC=vmovdqa_xmm_xmm
*/
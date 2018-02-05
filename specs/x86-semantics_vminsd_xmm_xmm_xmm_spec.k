module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vminpd %xmm3, %xmm2, %xmm4 , .Typedoperands ) ~>
execinstr ( vmovdqa %ymm4, %ymm14 , .Typedoperands ) ~>
execinstr ( vmovsd %xmm14, %xmm2, %xmm1 , .Typedoperands ) ~>
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
"YMM14" |-> (mi(256, 0):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM3" |-> (mi(256, ?I3:Int):MInt => _)
"YMM4" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vminsd_xmm_xmm_xmm
instr:vminsd %xmm3, %xmm2, %xmm1
maybe read:{ %xmm2 %xmm3 }
must read:{ %xmm2 %xmm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx }

circuit:vminpd %xmm3, %xmm2, %xmm4   #  1     0    4      OPC=vminpd_xmm_xmm_xmm
circuit:vmovdqa %ymm4, %ymm14        #  2     0x4  4      OPC=vmovdqa_ymm_ymm
circuit:vmovsd %xmm14, %xmm2, %xmm1  #  3     0x8  5      OPC=vmovsd_xmm_xmm_xmm
*/
module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vmovdqa %xmm3, %xmm1 , .Typedoperands ) ~>
execinstr ( vmovdqu %xmm2, %xmm14 , .Typedoperands ) ~>
execinstr ( vminps %ymm1, %ymm14, %ymm1 , .Typedoperands ) ~>
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

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vminps_xmm_xmm_xmm
instr:vminps %xmm3, %xmm2, %xmm1
maybe read:{ %xmm2 %xmm3 }
must read:{ %xmm2 %xmm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx }

circuit:vmovdqa %xmm3, %xmm1         #  1     0    4      OPC=vmovdqa_xmm_xmm
circuit:vmovdqu %xmm2, %xmm14        #  2     0x4  4      OPC=vmovdqu_xmm_xmm
circuit:vminps %ymm1, %ymm14, %ymm1  #  3     0x8  4      OPC=vminps_ymm_ymm_ymm
*/
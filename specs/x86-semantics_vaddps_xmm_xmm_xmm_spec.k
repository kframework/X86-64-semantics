module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vmovdqu %xmm3, %xmm10 , .Typedoperands ) ~>
execinstr ( vmovups %xmm2, %xmm11 , .Typedoperands ) ~>
execinstr ( vaddps %ymm10, %ymm11, %ymm3 , .Typedoperands ) ~>
execinstr ( vmovdqa %xmm3, %xmm1 , .Typedoperands ) ~>
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
"YMM10" |-> (mi(256, 0):MInt => _)
"YMM11" |-> (mi(256, 0):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM3" |-> (mi(256, ?I3:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vaddps_xmm_xmm_xmm
instr:vaddps %xmm3, %xmm2, %xmm1
maybe read:{ %xmm2 %xmm3 }
must read:{ %xmm2 %xmm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx }

circuit:vmovdqu %xmm3, %xmm10         #  1     0     4      OPC=vmovdqu_xmm_xmm
circuit:vmovups %xmm2, %xmm11         #  2     0x4   4      OPC=vmovups_xmm_xmm
circuit:vaddps %ymm10, %ymm11, %ymm3  #  3     0x8   5      OPC=vaddps_ymm_ymm_ymm
circuit:vmovdqa %xmm3, %xmm1          #  4     0xd   4      OPC=vmovdqa_xmm_xmm
*/
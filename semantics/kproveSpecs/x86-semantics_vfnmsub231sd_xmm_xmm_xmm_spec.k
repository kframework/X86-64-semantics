module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
split2NToN(%xmm3,  %xmm12, %xmm13 , 64) ~>
execinstr ( vfnmsub213sd %xmm1, %xmm2, %xmm12 , .Typedoperands ) ~>
execinstr ( vmovsd %xmm12, %xmm1, %xmm10 , .Typedoperands ) ~>
execinstr ( vmovdqa %xmm10, %xmm1 , .Typedoperands ) ~>
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
"YMM12" |-> (mi(256, 0):MInt => _)
"YMM13" |-> (mi(256, 0):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM3" |-> (mi(256, ?I3:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vfnmsub231sd_xmm_xmm_xmm
instr:vfnmsub231sd %xmm3, %xmm2, %xmm1
maybe read:{ %xmm1 %xmm2 %xmm3 }
must read:{ %xmm1 %xmm2 %xmm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ fma }

circuit:callq .move_128_64_xmm3_xmm12_xmm13  #  1     0     5      OPC=callq_label
circuit:vfnmsub213sd %xmm1, %xmm2, %xmm12    #  2     0x5   5      OPC=vfnmsub213sd_xmm_xmm_xmm
circuit:vmovsd %xmm12, %xmm1, %xmm10         #  3     0xa   5      OPC=vmovsd_xmm_xmm_xmm
circuit:vmovdqa %xmm10, %xmm1                #  4     0xf   5      OPC=vmovdqa_xmm_xmm
*/
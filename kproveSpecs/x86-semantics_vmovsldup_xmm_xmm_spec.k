module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
split2NToN(%xmm2,  %xmm12, %xmm13 , 64) ~>
execinstr ( vbroadcastss %xmm2, %xmm9 , .Typedoperands ) ~>
execinstr ( vbroadcastss %xmm13, %xmm5 , .Typedoperands ) ~>
execinstr ( vpunpcklqdq %xmm5, %xmm9, %xmm1 , .Typedoperands ) ~>
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
"YMM13" |-> (mi(256, 0):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM5" |-> (mi(256, 0):MInt => _)
"YMM9" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vmovsldup_xmm_xmm
instr:vmovsldup %xmm2, %xmm1
maybe read:{ %xmm2 }
must read:{ %xmm2 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx }

circuit:callq .move_128_64_xmm2_xmm12_xmm13  #  1     0     5      OPC=callq_label
circuit:vbroadcastss %xmm2, %xmm9            #  2     0x5   5      OPC=vbroadcastss_xmm_xmm
circuit:vbroadcastss %xmm13, %xmm5           #  3     0xa   5      OPC=vbroadcastss_xmm_xmm
circuit:vpunpcklqdq %xmm5, %xmm9, %xmm1      #  4     0xf   4      OPC=vpunpcklqdq_xmm_xmm_xmm
*/
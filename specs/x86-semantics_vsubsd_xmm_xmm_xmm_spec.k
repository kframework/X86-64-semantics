module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
split2NToN(%xmm2,  %xmm8, %xmm9 , 64) ~>
execinstr ( vsubpd %xmm3, %xmm8, %xmm0 , .Typedoperands ) ~>
execinstr ( vunpcklpd %xmm9, %xmm0, %xmm1 , .Typedoperands ) ~>
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
"YMM8" |-> (mi(256, 0):MInt => _)
"YMM9" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vsubsd_xmm_xmm_xmm
instr:vsubsd %xmm3, %xmm2, %xmm1
maybe read:{ %xmm2 %xmm3 }
must read:{ %xmm2 %xmm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx }

circuit:callq .move_128_64_xmm2_xmm8_xmm9  #  1     0    5      OPC=callq_label
circuit:vsubpd %xmm3, %xmm8, %xmm0         #  2     0x5  4      OPC=vsubpd_xmm_xmm_xmm
circuit:vunpcklpd %xmm9, %xmm0, %xmm1      #  3     0x9  5      OPC=vunpcklpd_xmm_xmm_xmm
*/
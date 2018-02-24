module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vminps %xmm2, %xmm2, %xmm5 , .Typedoperands ) ~>
execinstr ( subps %xmm3, %xmm5 , .Typedoperands ) ~>
execinstr ( vmovdqu %xmm5, %xmm1 , .Typedoperands ) ~>
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
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM3" |-> (mi(256, ?I3:Int):MInt => _)
"YMM5" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vsubps_xmm_xmm_xmm
instr:vsubps %xmm3, %xmm2, %xmm1
maybe read:{ %xmm2 %xmm3 }
must read:{ %xmm2 %xmm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx }

circuit:vminps %xmm2, %xmm2, %xmm5  #  1     0    4      OPC=vminps_xmm_xmm_xmm
circuit:subps %xmm3, %xmm5          #  2     0x4  3      OPC=subps_xmm_xmm
circuit:vmovdqu %xmm5, %xmm1        #  3     0x7  4      OPC=vmovdqu_xmm_xmm
*/
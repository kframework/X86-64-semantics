module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vpbroadcastq %xmm3, %ymm6 , .Typedoperands ) ~>
execinstr ( vunpcklpd %xmm3, %xmm6, %xmm9 , .Typedoperands ) ~>
execinstr ( vpor %xmm9, %xmm9, %xmm7 , .Typedoperands ) ~>
execinstr ( unpcklps %xmm7, %xmm2 , .Typedoperands ) ~>
execinstr ( vmulpd %xmm6, %xmm2, %xmm12 , .Typedoperands ) ~>
execinstr ( vxorps %xmm12, %xmm2, %xmm1 , .Typedoperands ) ~>
execinstr ( movdqu %xmm2, %xmm1 , .Typedoperands ) ~>
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
"YMM6" |-> (mi(256, 0):MInt => _)
"YMM7" |-> (mi(256, 0):MInt => _)
"YMM9" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vpunpckldq_xmm_xmm_xmm
instr:vpunpckldq %xmm3, %xmm2, %xmm1
maybe read:{ %xmm2 %xmm3 }
must read:{ %xmm2 %xmm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx }

circuit:vpbroadcastq %xmm3, %ymm6      #  1     0     5      OPC=vpbroadcastq_ymm_xmm
circuit:vunpcklpd %xmm3, %xmm6, %xmm9  #  2     0x5   4      OPC=vunpcklpd_xmm_xmm_xmm
circuit:vpor %xmm9, %xmm9, %xmm7       #  3     0x9   5      OPC=vpor_xmm_xmm_xmm
circuit:unpcklps %xmm7, %xmm2          #  4     0xe   3      OPC=unpcklps_xmm_xmm
circuit:vmulpd %xmm6, %xmm2, %xmm12    #  5     0x11  4      OPC=vmulpd_xmm_xmm_xmm
circuit:vxorps %xmm12, %xmm2, %xmm1    #  6     0x15  5      OPC=vxorps_xmm_xmm_xmm
circuit:movdqu %xmm2, %xmm1            #  7     0x1a  4      OPC=movdqu_xmm_xmm
*/
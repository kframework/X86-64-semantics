module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vmovupd %xmm1, %xmm13 , .Typedoperands ) ~>
execinstr ( vmovdqu %xmm2, %xmm6 , .Typedoperands ) ~>
execinstr ( vmovapd %xmm3, %xmm1 , .Typedoperands ) ~>
execinstr ( vfnmsub132ps %ymm1, %ymm13, %ymm6 , .Typedoperands ) ~>
execinstr ( vmovapd %xmm6, %xmm1 , .Typedoperands ) ~>
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
"YMM13" |-> (mi(256, 0):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM3" |-> (mi(256, ?I3:Int):MInt => _)
"YMM6" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vfnmsub231ps_xmm_xmm_xmm
instr:vfnmsub231ps %xmm3, %xmm2, %xmm1
maybe read:{ %xmm1 %xmm2 %xmm3 }
must read:{ %xmm1 %xmm2 %xmm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ fma }

circuit:vmovupd %xmm1, %xmm13              #  1     0     4      OPC=vmovupd_xmm_xmm
circuit:vmovdqu %xmm2, %xmm6               #  2     0x4   4      OPC=vmovdqu_xmm_xmm
circuit:vmovapd %xmm3, %xmm1               #  3     0x8   4      OPC=vmovapd_xmm_xmm
circuit:vfnmsub132ps %ymm1, %ymm13, %ymm6  #  4     0xc   5      OPC=vfnmsub132ps_ymm_ymm_ymm
circuit:vmovapd %xmm6, %xmm1               #  5     0x11  4      OPC=vmovapd_xmm_xmm
*/
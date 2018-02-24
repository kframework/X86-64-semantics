module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vmovsd %xmm3, %xmm3, %xmm0 , .Typedoperands ) ~>
execinstr ( vmovapd %xmm2, %xmm7 , .Typedoperands ) ~>
execinstr ( vmaxss %xmm7, %xmm2, %xmm13 , .Typedoperands ) ~>
execinstr ( vmovups %xmm1, %xmm15 , .Typedoperands ) ~>
execinstr ( vfmsub231pd %ymm0, %ymm15, %ymm13 , .Typedoperands ) ~>
execinstr ( vmovupd %xmm13, %xmm1 , .Typedoperands ) ~>
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
"YMM13" |-> (mi(256, 0):MInt => _)
"YMM15" |-> (mi(256, 0):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM3" |-> (mi(256, ?I3:Int):MInt => _)
"YMM7" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vfmsub132pd_xmm_xmm_xmm
instr:vfmsub132pd %xmm3, %xmm2, %xmm1
maybe read:{ %xmm1 %xmm2 %xmm3 }
must read:{ %xmm1 %xmm2 %xmm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ fma }

circuit:vmovsd %xmm3, %xmm3, %xmm0         #  1     0     4      OPC=vmovsd_xmm_xmm_xmm
circuit:vmovapd %xmm2, %xmm7               #  2     0x4   4      OPC=vmovapd_xmm_xmm
circuit:vmaxss %xmm7, %xmm2, %xmm13        #  3     0x8   4      OPC=vmaxss_xmm_xmm_xmm
circuit:vmovups %xmm1, %xmm15              #  4     0xc   4      OPC=vmovups_xmm_xmm
circuit:vfmsub231pd %ymm0, %ymm15, %ymm13  #  5     0x10  5      OPC=vfmsub231pd_ymm_ymm_ymm
circuit:vmovupd %xmm13, %xmm1              #  6     0x15  5      OPC=vmovupd_xmm_xmm
*/
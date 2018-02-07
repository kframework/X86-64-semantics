module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vpbroadcastq %xmm1, %ymm0 , .Typedoperands ) ~>
execinstr ( vfmsub132pd %xmm3, %xmm0, %xmm2 , .Typedoperands ) ~>
execinstr ( vmovsd %xmm2, %xmm1, %xmm1 , .Typedoperands ) ~>
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

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vfmsub231sd_xmm_xmm_xmm
instr:vfmsub231sd %xmm3, %xmm2, %xmm1
maybe read:{ %xmm1 %xmm2 %xmm3 }
must read:{ %xmm1 %xmm2 %xmm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ fma }

circuit:vpbroadcastq %xmm1, %ymm0        #  1     0    5      OPC=vpbroadcastq_ymm_xmm
circuit:vfmsub132pd %xmm3, %xmm0, %xmm2  #  2     0x5  5      OPC=vfmsub132pd_xmm_xmm_xmm
circuit:vmovsd %xmm2, %xmm1, %xmm1       #  3     0xa  4      OPC=vmovsd_xmm_xmm_xmm
*/
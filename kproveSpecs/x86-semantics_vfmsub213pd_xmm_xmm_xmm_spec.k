module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vfmsub132pd %xmm1, %xmm3, %xmm2 , .Typedoperands ) ~>
execinstr ( vmovdqa %xmm2, %xmm12 , .Typedoperands ) ~>
execinstr ( vmovups %ymm12, %ymm1 , .Typedoperands ) ~>
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

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vfmsub213pd_xmm_xmm_xmm
instr:vfmsub213pd %xmm3, %xmm2, %xmm1
maybe read:{ %xmm1 %xmm2 %xmm3 }
must read:{ %xmm1 %xmm2 %xmm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ fma }

circuit:vfmsub132pd %xmm1, %xmm3, %xmm2  #  1     0    5      OPC=vfmsub132pd_xmm_xmm_xmm
circuit:vmovdqa %xmm2, %xmm12            #  2     0x5  4      OPC=vmovdqa_xmm_xmm
circuit:vmovups %ymm12, %ymm1            #  3     0x9  5      OPC=vmovups_ymm_ymm
*/
module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vmovupd %xmm1, %xmm12 , .Typedoperands ) ~>
execinstr ( vmovdqu %xmm2, %xmm6 , .Typedoperands ) ~>
execinstr ( vmovaps %xmm3, %xmm1 , .Typedoperands ) ~>
execinstr ( vfmadd213ps %ymm12, %ymm6, %ymm1 , .Typedoperands ) ~>
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

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vfmadd231ps_xmm_xmm_xmm
instr:vfmadd231ps %xmm3, %xmm2, %xmm1
maybe read:{ %xmm1 %xmm2 %xmm3 }
must read:{ %xmm1 %xmm2 %xmm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ fma }

circuit:vmovupd %xmm1, %xmm12             #  1     0     4      OPC=vmovupd_xmm_xmm
circuit:vmovdqu %xmm2, %xmm6              #  2     0x4   4      OPC=vmovdqu_xmm_xmm
circuit:vmovaps %xmm3, %xmm1              #  3     0x8   4      OPC=vmovaps_xmm_xmm
circuit:vfmadd213ps %ymm12, %ymm6, %ymm1  #  4     0xc   5      OPC=vfmadd213ps_ymm_ymm_ymm
*/
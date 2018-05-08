module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vfmadd231pd %xmm3, %xmm1, %xmm2 , .Typedoperands ) ~>
execinstr ( vmovsd %xmm2, %xmm1, %xmm9 , .Typedoperands ) ~>
execinstr ( vmovaps %ymm9, %ymm1 , .Typedoperands ) ~>
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
"YMM9" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vfmadd132sd_xmm_xmm_xmm
instr:vfmadd132sd %xmm3, %xmm2, %xmm1
maybe read:{ %xmm1 %xmm2 %xmm3 }
must read:{ %xmm1 %xmm2 %xmm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ fma }

circuit:vfmadd231pd %xmm3, %xmm1, %xmm2  #  1     0    5      OPC=vfmadd231pd_xmm_xmm_xmm
circuit:vmovsd %xmm2, %xmm1, %xmm9       #  2     0x5  4      OPC=vmovsd_xmm_xmm_xmm
circuit:vmovaps %ymm9, %ymm1             #  3     0x9  5      OPC=vmovaps_ymm_ymm
*/
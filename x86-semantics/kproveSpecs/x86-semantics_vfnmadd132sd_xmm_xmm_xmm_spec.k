module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vandpd %xmm1, %xmm1, %xmm9 , .Typedoperands ) ~>
execinstr ( vfnmadd231pd %xmm3, %xmm9, %xmm2 , .Typedoperands ) ~>
execinstr ( vmovsd %xmm2, %xmm9, %xmm1 , .Typedoperands ) ~>
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
opcode:vfnmadd132sd_xmm_xmm_xmm
instr:vfnmadd132sd %xmm3, %xmm2, %xmm1
maybe read:{ %xmm1 %xmm2 %xmm3 }
must read:{ %xmm1 %xmm2 %xmm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ fma }

circuit:vandpd %xmm1, %xmm1, %xmm9        #  1     0    4      OPC=vandpd_xmm_xmm_xmm
circuit:vfnmadd231pd %xmm3, %xmm9, %xmm2  #  2     0x4  5      OPC=vfnmadd231pd_xmm_xmm_xmm
circuit:vmovsd %xmm2, %xmm9, %xmm1        #  3     0x9  4      OPC=vmovsd_xmm_xmm_xmm
*/
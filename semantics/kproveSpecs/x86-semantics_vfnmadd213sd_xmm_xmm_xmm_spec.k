module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vpandn %xmm3, %xmm3, %xmm10 , .Typedoperands ) ~>
execinstr ( vfnmsub213sd %xmm3, %xmm10, %xmm10 , .Typedoperands ) ~>
execinstr ( vfnmsub213sd %xmm10, %xmm2, %xmm1 , .Typedoperands ) ~>
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
"YMM10" |-> (mi(256, 0):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM3" |-> (mi(256, ?I3:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vfnmadd213sd_xmm_xmm_xmm
instr:vfnmadd213sd %xmm3, %xmm2, %xmm1
maybe read:{ %xmm1 %xmm2 %xmm3 }
must read:{ %xmm1 %xmm2 %xmm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ fma }

circuit:vpandn %xmm3, %xmm3, %xmm10         #  1     0    4      OPC=vpandn_xmm_xmm_xmm
circuit:vfnmsub213sd %xmm3, %xmm10, %xmm10  #  2     0x4  5      OPC=vfnmsub213sd_xmm_xmm_xmm
circuit:vfnmsub213sd %xmm10, %xmm2, %xmm1   #  3     0x9  5      OPC=vfnmsub213sd_xmm_xmm_xmm
*/
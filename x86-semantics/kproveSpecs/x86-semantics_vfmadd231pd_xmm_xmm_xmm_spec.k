module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vmovups %xmm1, %xmm1 , .Typedoperands ) ~>
execinstr ( vandnps %xmm1, %xmm1, %xmm9 , .Typedoperands ) ~>
execinstr ( vfnmsub231pd %ymm9, %ymm9, %ymm1 , .Typedoperands ) ~>
execinstr ( vfmsub231pd %xmm3, %xmm2, %xmm1 , .Typedoperands ) ~>
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
opcode:vfmadd231pd_xmm_xmm_xmm
instr:vfmadd231pd %xmm3, %xmm2, %xmm1
maybe read:{ %xmm1 %xmm2 %xmm3 }
must read:{ %xmm1 %xmm2 %xmm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ fma }

circuit:vmovups %xmm1, %xmm1              #  1     0     4      OPC=vmovups_xmm_xmm
circuit:vandnps %xmm1, %xmm1, %xmm9       #  2     0x4   4      OPC=vandnps_xmm_xmm_xmm
circuit:vfnmsub231pd %ymm9, %ymm9, %ymm1  #  3     0x8   5      OPC=vfnmsub231pd_ymm_ymm_ymm
circuit:vfmsub231pd %xmm3, %xmm2, %xmm1   #  4     0xd   5      OPC=vfmsub231pd_xmm_xmm_xmm
*/
module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( pxor %xmm9, %xmm9 , .Typedoperands ) ~>
execinstr ( vandps %xmm9, %xmm3, %xmm10 , .Typedoperands ) ~>
execinstr ( vfnmsub231ps %xmm3, %xmm10, %xmm3 , .Typedoperands ) ~>
execinstr ( vfmsub132ps %xmm1, %xmm3, %xmm2 , .Typedoperands ) ~>
execinstr ( vorpd %ymm2, %ymm10, %ymm1 , .Typedoperands ) ~>
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
"YMM9" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vfmadd213ps_xmm_xmm_xmm
instr:vfmadd213ps %xmm3, %xmm2, %xmm1
maybe read:{ %xmm1 %xmm2 %xmm3 }
must read:{ %xmm1 %xmm2 %xmm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ fma }

circuit:pxor %xmm9, %xmm9                  #  1     0     5      OPC=pxor_xmm_xmm
circuit:vandps %xmm9, %xmm3, %xmm10        #  2     0x5   5      OPC=vandps_xmm_xmm_xmm
circuit:vfnmsub231ps %xmm3, %xmm10, %xmm3  #  3     0xa   5      OPC=vfnmsub231ps_xmm_xmm_xmm
circuit:vfmsub132ps %xmm1, %xmm3, %xmm2    #  4     0xf   5      OPC=vfmsub132ps_xmm_xmm_xmm
circuit:vorpd %ymm2, %ymm10, %ymm1         #  5     0x14  4      OPC=vorpd_ymm_ymm_ymm
*/
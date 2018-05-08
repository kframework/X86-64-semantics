module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vpor %xmm3, %xmm3, %xmm10 , .Typedoperands ) ~>
execinstr ( vxorpd %xmm3, %xmm10, %xmm3 , .Typedoperands ) ~>
execinstr ( vfnmsub132ps %ymm3, %ymm3, %ymm3 , .Typedoperands ) ~>
execinstr ( addsubps %xmm10, %xmm3 , .Typedoperands ) ~>
execinstr ( vfmadd213ps %xmm3, %xmm2, %xmm1 , .Typedoperands ) ~>
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
opcode:vfmaddsub213ps_xmm_xmm_xmm
instr:vfmaddsub213ps %xmm3, %xmm2, %xmm1
maybe read:{ %xmm1 %xmm2 %xmm3 }
must read:{ %xmm1 %xmm2 %xmm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ fma }

circuit:vpor %xmm3, %xmm3, %xmm10         #  1     0     4      OPC=vpor_xmm_xmm_xmm
circuit:vxorpd %xmm3, %xmm10, %xmm3       #  2     0x4   4      OPC=vxorpd_xmm_xmm_xmm
circuit:vfnmsub132ps %ymm3, %ymm3, %ymm3  #  3     0x8   5      OPC=vfnmsub132ps_ymm_ymm_ymm
circuit:addsubps %xmm10, %xmm3            #  4     0xd   5      OPC=addsubps_xmm_xmm
circuit:vfmadd213ps %xmm3, %xmm2, %xmm1   #  5     0x12  5      OPC=vfmadd213ps_xmm_xmm_xmm
*/
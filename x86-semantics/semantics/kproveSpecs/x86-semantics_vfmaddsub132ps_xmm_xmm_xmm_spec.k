module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vpandn %xmm1, %xmm1, %xmm10 , .Typedoperands ) ~>
execinstr ( vfnmsub231ps %ymm10, %ymm10, %ymm10 , .Typedoperands ) ~>
execinstr ( movdqa %xmm2, %xmm7 , .Typedoperands ) ~>
execinstr ( vaddsubps %xmm7, %xmm10, %xmm2 , .Typedoperands ) ~>
execinstr ( vfmadd132ps %xmm3, %xmm2, %xmm1 , .Typedoperands ) ~>
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
"YMM7" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vfmaddsub132ps_xmm_xmm_xmm
instr:vfmaddsub132ps %xmm3, %xmm2, %xmm1
maybe read:{ %xmm1 %xmm2 %xmm3 }
must read:{ %xmm1 %xmm2 %xmm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ fma }

circuit:vpandn %xmm1, %xmm1, %xmm10          #  1     0     4      OPC=vpandn_xmm_xmm_xmm
circuit:vfnmsub231ps %ymm10, %ymm10, %ymm10  #  2     0x4   5      OPC=vfnmsub231ps_ymm_ymm_ymm
circuit:movdqa %xmm2, %xmm7                  #  3     0x9   4      OPC=movdqa_xmm_xmm
circuit:vaddsubps %xmm7, %xmm10, %xmm2       #  4     0xd   4      OPC=vaddsubps_xmm_xmm_xmm
circuit:vfmadd132ps %xmm3, %xmm2, %xmm1      #  5     0x11  5      OPC=vfmadd132ps_xmm_xmm_xmm
*/
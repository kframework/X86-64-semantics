module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( movapd %xmm3, %xmm7 , .Typedoperands ) ~>
execinstr ( vfmsubadd231ps %xmm1, %xmm2, %xmm7 , .Typedoperands ) ~>
execinstr ( vmulsd %xmm3, %xmm7, %xmm1 , .Typedoperands ) ~>
execinstr ( movupd %xmm7, %xmm1 , .Typedoperands ) ~>
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
"YMM7" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vfmsubadd213ps_xmm_xmm_xmm
instr:vfmsubadd213ps %xmm3, %xmm2, %xmm1
maybe read:{ %xmm1 %xmm2 %xmm3 }
must read:{ %xmm1 %xmm2 %xmm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ fma }

circuit:movapd %xmm3, %xmm7                 #  1     0     4      OPC=movapd_xmm_xmm
circuit:vfmsubadd231ps %xmm1, %xmm2, %xmm7  #  2     0x4   5      OPC=vfmsubadd231ps_xmm_xmm_xmm
circuit:vmulsd %xmm3, %xmm7, %xmm1          #  3     0x9   4      OPC=vmulsd_xmm_xmm_xmm
circuit:movupd %xmm7, %xmm1                 #  4     0xd   4      OPC=movupd_xmm_xmm
*/
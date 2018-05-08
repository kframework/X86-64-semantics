module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
split2NToN(%xmm1,  %xmm10, %xmm11 , 64) ~>
execinstr ( vfmsub213pd %xmm3, %xmm2, %xmm10 , .Typedoperands ) ~>
execinstr ( vmaxsd %xmm2, %xmm11, %xmm1 , .Typedoperands ) ~>
combineNTo2N(%xmm10,  %xmm11, %xmm1, 64, 128, 128) ~>
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
"YMM11" |-> (mi(256, 0):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM3" |-> (mi(256, ?I3:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vfmsub213sd_xmm_xmm_xmm
instr:vfmsub213sd %xmm3, %xmm2, %xmm1
maybe read:{ %xmm1 %xmm2 %xmm3 }
must read:{ %xmm1 %xmm2 %xmm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ fma }

circuit:callq .move_128_64_xmm1_xmm10_xmm11  #  1     0     5      OPC=callq_label
circuit:vfmsub213pd %xmm3, %xmm2, %xmm10     #  2     0x5   5      OPC=vfmsub213pd_xmm_xmm_xmm
circuit:vmaxsd %xmm2, %xmm11, %xmm1          #  3     0xa   4      OPC=vmaxsd_xmm_xmm_xmm
circuit:callq .move_64_128_xmm10_xmm11_xmm1  #  4     0xe   5      OPC=callq_label
*/
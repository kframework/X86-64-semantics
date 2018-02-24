module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vfmaddsub231pd %xmm1, %xmm2, %xmm3 , .Typedoperands ) ~>
split2NToN(%xmm3,  %r12, %r13 , 64) ~>
execinstr ( vaddps %xmm2, %xmm3, %xmm1 , .Typedoperands ) ~>
combineNTo2N(%r12,  %r13, %xmm1, 64, 128, 64) ~>
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
"R12" |-> (mi(64, 0):MInt => _)
"R13" |-> (mi(64, 0):MInt => _)
"YMM1" |-> (mi(256, ?I1:Int):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM3" |-> (mi(256, ?I3:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vfmaddsub213pd_xmm_xmm_xmm
instr:vfmaddsub213pd %xmm3, %xmm2, %xmm1
maybe read:{ %xmm1 %xmm2 %xmm3 }
must read:{ %xmm1 %xmm2 %xmm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ fma }

circuit:vfmaddsub231pd %xmm1, %xmm2, %xmm3  #  1     0     5      OPC=vfmaddsub231pd_xmm_xmm_xmm
circuit:callq .move_128_064_xmm3_r12_r13    #  2     0x5   5      OPC=callq_label
circuit:vaddps %xmm2, %xmm3, %xmm1          #  3     0xa   4      OPC=vaddps_xmm_xmm_xmm
circuit:callq .move_064_128_r12_r13_xmm1    #  4     0xe   5      OPC=callq_label
*/
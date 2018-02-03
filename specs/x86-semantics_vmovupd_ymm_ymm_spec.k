module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
split2NToN(%xmm2,  %r12, %r13 , 64) ~>
execinstr ( vminps %ymm2, %ymm2, %ymm1 , .Typedoperands ) ~>
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
"YMM1" |-> (mi(256, ?I1:Int):MInt => _)
"R13" |-> (mi(64, 0):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"R12" |-> (mi(64, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vmovupd_ymm_ymm
instr:vmovupd %ymm2, %ymm1
maybe read:{ %ymm2 }
must read:{ %ymm2 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx }

circuit:callq .move_128_064_xmm2_r12_r13  #  1     0    5      OPC=callq_label
circuit:vminps %ymm2, %ymm2, %ymm1        #  2     0x5  4      OPC=vminps_ymm_ymm_ymm
circuit:callq .move_064_128_r12_r13_xmm1  #  3     0x9  5      OPC=callq_label
*/
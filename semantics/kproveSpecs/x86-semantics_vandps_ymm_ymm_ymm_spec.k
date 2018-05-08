module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( andps %xmm2, %xmm3 , .Typedoperands ) ~>
split2NToN(%ymm2,  %xmm10, %xmm11 , 128) ~>
split2NToN(%ymm3,  %xmm8, %xmm9 , 128) ~>
execinstr ( pand %xmm11, %xmm9 , .Typedoperands ) ~>
combineNTo2N(%xmm8,  %xmm9, %ymm1, 128, 256, 128) ~>
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
"YMM8" |-> (mi(256, 0):MInt => _)
"YMM9" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vandps_ymm_ymm_ymm
instr:vandps %ymm3, %ymm2, %ymm1
maybe read:{ %ymm2 %ymm3 }
must read:{ %ymm2 %ymm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx }

circuit:andps %xmm2, %xmm3                    #  1     0     3      OPC=andps_xmm_xmm
circuit:callq .move_256_128_ymm2_xmm10_xmm11  #  2     0x3   5      OPC=callq_label
circuit:callq .move_256_128_ymm3_xmm8_xmm9    #  3     0x8   5      OPC=callq_label
circuit:pand %xmm11, %xmm9                    #  4     0xd   5      OPC=pand_xmm_xmm
circuit:callq .move_128_256_xmm8_xmm9_ymm1    #  5     0x12  5      OPC=callq_label
*/
module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vpbroadcastb %xmm2, %xmm1 , .Typedoperands ) ~>
split2NToN(%ymm1,  %xmm10, %xmm11 , 128) ~>
execinstr ( vaddpd %xmm10, %xmm11, %xmm0 , .Typedoperands ) ~>
combineNTo2N(%xmm10,  %xmm11, %xmm3, 64, 128, 128) ~>
execinstr ( vmovlhps %xmm3, %xmm0, %xmm1 , .Typedoperands ) ~>
execinstr ( vpbroadcastw %xmm1, %ymm1 , .Typedoperands ) ~>
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
"YMM0" |-> (mi(256, 0):MInt => _)
"YMM1" |-> (mi(256, ?I1:Int):MInt => _)
"YMM10" |-> (mi(256, 0):MInt => _)
"YMM11" |-> (mi(256, 0):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM3" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vpbroadcastb_ymm_xmm
instr:vpbroadcastb %xmm2, %ymm1
maybe read:{ %xmm2 }
must read:{ %xmm2 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx2 }

circuit:vpbroadcastb %xmm2, %xmm1             #  1     0     5      OPC=vpbroadcastb_xmm_xmm
circuit:callq .move_256_128_ymm1_xmm10_xmm11  #  2     0x5   5      OPC=callq_label
circuit:vaddpd %xmm10, %xmm11, %xmm0          #  3     0xa   5      OPC=vaddpd_xmm_xmm_xmm
circuit:callq .move_64_128_xmm10_xmm11_xmm3   #  4     0xf   5      OPC=callq_label
circuit:vmovlhps %xmm3, %xmm0, %xmm1          #  5     0x14  4      OPC=vmovlhps_xmm_xmm_xmm
circuit:vpbroadcastw %xmm1, %ymm1             #  6     0x18  5      OPC=vpbroadcastw_ymm_xmm
*/
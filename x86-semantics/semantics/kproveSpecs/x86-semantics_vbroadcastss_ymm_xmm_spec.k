module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
split2NToN(%xmm2,  %r8, %r9 , 64) ~>
combineNTo2N(%r8,  %r9, %xmm3, 64, 128, 64) ~>
execinstr ( vbroadcastss %xmm3, %xmm1 , .Typedoperands ) ~>
movByteToPosOfReg( %r8b, 23, %ymm1 ) ~>
execinstr ( vbroadcastsd %xmm1, %ymm1 , .Typedoperands ) ~>
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
"R8" |-> (mi(64, 0):MInt => _)
"R9" |-> (mi(64, 0):MInt => _)
"YMM1" |-> (mi(256, ?I1:Int):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM3" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vbroadcastss_ymm_xmm
instr:vbroadcastss %xmm2, %ymm1
maybe read:{ %xmm2 }
must read:{ %xmm2 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx2 }

circuit:callq .move_128_064_xmm2_r8_r9      #  1     0     5      OPC=callq_label
circuit:callq .move_064_128_r8_r9_xmm3      #  2     0x5   5      OPC=callq_label
circuit:vbroadcastss %xmm3, %xmm1           #  3     0xa   5      OPC=vbroadcastss_xmm_xmm
circuit:callq .move_r8b_to_byte_23_of_ymm1  #  4     0xf   5      OPC=callq_label
circuit:vbroadcastsd %xmm1, %ymm1           #  5     0x14  5      OPC=vbroadcastsd_ymm_xmm
*/
module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vmovd %ebx, %xmm1 , .Typedoperands ) ~>
split2NToN(%xmm1,  %r8, %r9 , 64) ~>
movByteToPosOfReg( %r9b, 25, %ymm1 ) ~>
execinstr ( vcvtdq2pd %ymm1, %ymm3 , .Typedoperands ) ~>
execinstr ( vmovsd %xmm3, %xmm2, %xmm1 , .Typedoperands ) ~>
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
"RBX" |-> (mi(64, ?I1:Int):MInt => _)
"YMM1" |-> (mi(256, ?I2:Int):MInt => _)
"YMM2" |-> (mi(256, ?I3:Int):MInt => _)
"YMM3" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vcvtsi2sdl_xmm_xmm_r32
instr:vcvtsi2sdl %ebx, %xmm2, %xmm1
maybe read:{ %ebx %xmm2 %mxcsr::rc[0] }
must read:{ %ebx %xmm2 %mxcsr::rc[0] }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx }

circuit:vmovd %ebx, %xmm1                   #  1     0     4      OPC=vmovd_xmm_r32
circuit:callq .move_128_064_xmm1_r8_r9      #  2     0x4   5      OPC=callq_label
circuit:callq .move_r9b_to_byte_25_of_ymm1  #  3     0x9   5      OPC=callq_label
circuit:vcvtdq2pd %ymm1, %ymm3              #  4     0xe   4      OPC=vcvtdq2pd_ymm_ymm
circuit:vmovsd %xmm3, %xmm2, %xmm1          #  5     0x12  4      OPC=vmovsd_xmm_xmm_xmm
*/
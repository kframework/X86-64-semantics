module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
split2NToN(%xmm2,  %r8, %r9 , 64) ~>
execinstr ( vzeroall  .Typedoperands ) ~>
movByteToPosOfReg( %r8b, 0, %ymm1 ) ~>
execinstr ( notb %r8b , .Typedoperands ) ~>
combineNTo2N(%r8w,  %r9w, %edx, 16, 32, 16) ~>
split2NToN(%dx,  %r8b, %r9b , 08) ~>
movByteToPosOfReg( %r9b, 8, %ymm1 ) ~>
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
"RDX" |-> (mi(64, 0):MInt => _)
"YMM0" |-> (mi(256, 0):MInt => _)
"YMM1" |-> (mi(256, ?I1:Int):MInt => _)
"YMM10" |-> (mi(256, 0):MInt => _)
"YMM11" |-> (mi(256, 0):MInt => _)
"YMM12" |-> (mi(256, 0):MInt => _)
"YMM13" |-> (mi(256, 0):MInt => _)
"YMM14" |-> (mi(256, 0):MInt => _)
"YMM15" |-> (mi(256, 0):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM3" |-> (mi(256, 0):MInt => _)
"YMM4" |-> (mi(256, 0):MInt => _)
"YMM5" |-> (mi(256, 0):MInt => _)
"YMM6" |-> (mi(256, 0):MInt => _)
"YMM7" |-> (mi(256, 0):MInt => _)
"YMM8" |-> (mi(256, 0):MInt => _)
"YMM9" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vpmovzxbq_xmm_xmm
instr:vpmovzxbq %xmm2, %xmm1
maybe read:{ %xmm2 }
must read:{ %xmm2 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx }

circuit:callq .move_128_064_xmm2_r8_r9     #  1     0     5      OPC=callq_label
circuit:vzeroall                           #  2     0x5   3      OPC=vzeroall
circuit:callq .move_r8b_to_byte_0_of_ymm1  #  3     0x8   5      OPC=callq_label
circuit:notb %r8b                          #  4     0xd   3      OPC=notb_r8
circuit:callq .move_016_032_r8w_r9w_edx    #  5     0x10  5      OPC=callq_label
circuit:callq .move_016_008_dx_r8b_r9b     #  6     0x15  5      OPC=callq_label
circuit:callq .move_r9b_to_byte_8_of_ymm1  #  7     0x1a  5      OPC=callq_label
*/
module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
splitXmmToR32( %xmm2, %eax, %edx, %r8d, %r9d, 32 ) ~>
execinstr ( vmovdqa %ymm2, %ymm1 , .Typedoperands ) ~>
movByteToPosOfReg( %r9b, 12, %ymm1 ) ~>
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
"RAX" |-> (mi(64, 0):MInt => _)
"RDX" |-> (mi(64, 0):MInt => _)
"YMM1" |-> (mi(256, ?I1:Int):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vmovapd_ymm_ymm
instr:vmovapd %ymm2, %ymm1
maybe read:{ %ymm2 }
must read:{ %ymm2 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx }

circuit:callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  1     0    5      OPC=callq_label
circuit:vmovdqa %ymm2, %ymm1                      #  2     0x5  4      OPC=vmovdqa_ymm_ymm
circuit:callq .move_r9b_to_byte_12_of_ymm1        #  3     0x9  5      OPC=callq_label
*/
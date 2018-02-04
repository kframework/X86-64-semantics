module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
movPosOfRegToByte( 7, %ymm1, %r8b ) ~>
movByteToPosOfReg( %r8b, 7, %ymm1 ) ~>
execinstr ( vfnmsub231ps %xmm1, %xmm2, %xmm3 , .Typedoperands ) ~>
execinstr ( vmovapd %xmm3, %xmm1 , .Typedoperands ) ~>
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
"YMM1" |-> (mi(256, ?I1:Int):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM3" |-> (mi(256, ?I3:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vfnmsub213ps_xmm_xmm_xmm
instr:vfnmsub213ps %xmm3, %xmm2, %xmm1
maybe read:{ %xmm1 %xmm2 %xmm3 }
must read:{ %xmm1 %xmm2 %xmm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ fma }

circuit:callq .move_byte_7_of_ymm1_to_r8b  #  1     0     5      OPC=callq_label
circuit:callq .move_r8b_to_byte_7_of_ymm1  #  2     0x5   5      OPC=callq_label
circuit:vfnmsub231ps %xmm1, %xmm2, %xmm3   #  3     0xa   5      OPC=vfnmsub231ps_xmm_xmm_xmm
circuit:vmovapd %xmm3, %xmm1               #  4     0xf   4      OPC=vmovapd_xmm_xmm
*/
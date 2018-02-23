module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%ymm1, "SPAD1") ~>
movPosOfRegToByte( 6, %ymm1, %r8b ) ~>
execinstr ( vsubsd %xmm2, %xmm1, %xmm3 , .Typedoperands ) ~>
movByteToPosOfReg( %r8b, 4, %ymm1 ) ~>
execinstr ( vsqrtss %xmm1, %xmm2, %xmm13 , .Typedoperands ) ~>
execinstr ( addpd %xmm13, %xmm1 , .Typedoperands ) ~>
execinstr ( movsd %xmm3, %xmm1 , .Typedoperands ) ~>
restoreRegister("SPAD1", 128, 128, 0, 0,
          0, 128, %ymm1) ~>
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
"SPAD1" |->    (mi(256, 0) => _)
"R8" |-> (mi(64, 0):MInt => _)
"YMM1" |-> (mi(256, ?I1:Int):MInt => _)
"YMM13" |-> (mi(256, 0):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM3" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:addsubpd_xmm_xmm
instr:addsubpd %xmm2, %xmm1
maybe read:{ %xmm1 %xmm2 }
must read:{ %xmm1 %xmm2 }
maybe write:{ %xmm1 }
must write:{ %xmm1 }
maybe undef:{ }
must undef:{ }
required flags:{ pni }

circuit:callq .move_byte_6_of_ymm1_to_r8b  #  1     0     5      OPC=callq_label
circuit:vsubsd %xmm2, %xmm1, %xmm3         #  2     0x5   4      OPC=vsubsd_xmm_xmm_xmm
circuit:callq .move_r8b_to_byte_4_of_ymm1  #  3     0x9   5      OPC=callq_label
circuit:vsqrtss %xmm1, %xmm2, %xmm13       #  4     0xe   4      OPC=vsqrtss_xmm_xmm_xmm
circuit:addpd %xmm13, %xmm1                #  5     0x12  5      OPC=addpd_xmm_xmm
circuit:movsd %xmm3, %xmm1                 #  6     0x17  4      OPC=movsd_xmm_xmm
*/
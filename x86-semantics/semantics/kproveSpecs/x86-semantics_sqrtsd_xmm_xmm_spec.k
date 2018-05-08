module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%ymm1, "SPAD1") ~>
execinstr ( vpbroadcastq %xmm2, %ymm5 , .Typedoperands ) ~>
split2NToN(%xmm1,  %xmm10, %xmm11 , 64) ~>
execinstr ( vminpd %ymm5, %ymm5, %ymm5 , .Typedoperands ) ~>
execinstr ( vsqrtpd %xmm5, %xmm10 , .Typedoperands ) ~>
combineNTo2N(%xmm10,  %xmm11, %xmm1, 64, 128, 128) ~>
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
"YMM1" |-> (mi(256, ?I1:Int):MInt => _)
"YMM10" |-> (mi(256, 0):MInt => _)
"YMM11" |-> (mi(256, 0):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM5" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:sqrtsd_xmm_xmm
instr:sqrtsd %xmm2, %xmm1
maybe read:{ %xmm1 %xmm2 }
must read:{ %xmm1 %xmm2 }
maybe write:{ %xmm1 }
must write:{ %xmm1 }
maybe undef:{ }
must undef:{ }
required flags:{ sse2 }

circuit:vpbroadcastq %xmm2, %ymm5            #  1     0     5      OPC=vpbroadcastq_ymm_xmm
circuit:callq .move_128_64_xmm1_xmm10_xmm11  #  2     0x5   5      OPC=callq_label
circuit:vminpd %ymm5, %ymm5, %ymm5           #  3     0xa   4      OPC=vminpd_ymm_ymm_ymm
circuit:vsqrtpd %xmm5, %xmm10                #  4     0xe   4      OPC=vsqrtpd_xmm_xmm
circuit:callq .move_64_128_xmm10_xmm11_xmm1  #  5     0x12  5      OPC=callq_label
*/
module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%ymm1, "SPAD1") ~>
execinstr ( vpbroadcastq %xmm2, %ymm10 , .Typedoperands ) ~>
execinstr ( minpd %xmm10, %xmm10 , .Typedoperands ) ~>
execinstr ( vpmovzxwd %xmm10, %xmm14 , .Typedoperands ) ~>
execinstr ( movapd %xmm14, %xmm1 , .Typedoperands ) ~>
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
"YMM14" |-> (mi(256, 0):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:pmovzxwd_xmm_xmm
instr:pmovzxwd %xmm2, %xmm1
maybe read:{ %xmm2 }
must read:{ %xmm2 }
maybe write:{ %xmm1 }
must write:{ %xmm1 }
maybe undef:{ }
must undef:{ }
required flags:{ sse4_1 }

circuit:vpbroadcastq %xmm2, %ymm10  #  1     0     5      OPC=vpbroadcastq_ymm_xmm
circuit:minpd %xmm10, %xmm10        #  2     0x5   5      OPC=minpd_xmm_xmm
circuit:vpmovzxwd %xmm10, %xmm14    #  3     0xa   5      OPC=vpmovzxwd_xmm_xmm
circuit:movapd %xmm14, %xmm1        #  4     0xf   5      OPC=movapd_xmm_xmm
*/
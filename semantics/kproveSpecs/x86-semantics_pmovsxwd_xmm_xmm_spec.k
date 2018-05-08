module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%ymm1, "SPAD1") ~>
execinstr ( vmovsd %xmm2, %xmm2, %xmm0 , .Typedoperands ) ~>
execinstr ( vmaxsd %xmm0, %xmm0, %xmm15 , .Typedoperands ) ~>
execinstr ( pmovzxwd %xmm15, %xmm3 , .Typedoperands ) ~>
execinstr ( vpaddd %xmm2, %xmm2, %xmm2 , .Typedoperands ) ~>
execinstr ( vpmovzxwd %xmm2, %ymm5 , .Typedoperands ) ~>
execinstr ( vpsubq %xmm3, %xmm5, %xmm9 , .Typedoperands ) ~>
execinstr ( movaps %xmm9, %xmm1 , .Typedoperands ) ~>
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
"YMM0" |-> (mi(256, 0):MInt => _)
"YMM1" |-> (mi(256, ?I1:Int):MInt => _)
"YMM15" |-> (mi(256, 0):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM3" |-> (mi(256, 0):MInt => _)
"YMM5" |-> (mi(256, 0):MInt => _)
"YMM9" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:pmovsxwd_xmm_xmm
instr:pmovsxwd %xmm2, %xmm1
maybe read:{ %xmm2 }
must read:{ %xmm2 }
maybe write:{ %xmm1 }
must write:{ %xmm1 }
maybe undef:{ }
must undef:{ }
required flags:{ sse4_1 }

circuit:vmovsd %xmm2, %xmm2, %xmm0   #  1     0     4      OPC=vmovsd_xmm_xmm_xmm
circuit:vmaxsd %xmm0, %xmm0, %xmm15  #  2     0x4   4      OPC=vmaxsd_xmm_xmm_xmm
circuit:pmovzxwd %xmm15, %xmm3       #  3     0x8   6      OPC=pmovzxwd_xmm_xmm
circuit:vpaddd %xmm2, %xmm2, %xmm2   #  4     0xe   4      OPC=vpaddd_xmm_xmm_xmm
circuit:vpmovzxwd %xmm2, %ymm5       #  5     0x12  5      OPC=vpmovzxwd_ymm_xmm
circuit:vpsubq %xmm3, %xmm5, %xmm9   #  6     0x17  4      OPC=vpsubq_xmm_xmm_xmm
circuit:movaps %xmm9, %xmm1          #  7     0x1b  4      OPC=movaps_xmm_xmm
*/
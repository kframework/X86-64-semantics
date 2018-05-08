module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%ymm1, "SPAD1") ~>
execinstr ( movsldup %xmm2, %xmm0 , .Typedoperands ) ~>
execinstr ( vmovsldup %xmm1, %xmm13 , .Typedoperands ) ~>
execinstr ( movdqu %xmm0, %xmm15 , .Typedoperands ) ~>
execinstr ( vpsubq %xmm1, %xmm13, %xmm9 , .Typedoperands ) ~>
execinstr ( vpsubq %xmm2, %xmm15, %xmm0 , .Typedoperands ) ~>
execinstr ( movdqu %xmm9, %xmm1 , .Typedoperands ) ~>
execinstr ( phaddd %xmm0, %xmm1 , .Typedoperands ) ~>
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
"YMM13" |-> (mi(256, 0):MInt => _)
"YMM15" |-> (mi(256, 0):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM9" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:phsubd_xmm_xmm
instr:phsubd %xmm2, %xmm1
maybe read:{ %xmm1 %xmm2 }
must read:{ %xmm1 %xmm2 }
maybe write:{ %xmm1 }
must write:{ %xmm1 }
maybe undef:{ }
must undef:{ }
required flags:{ ssse3 }

circuit:movsldup %xmm2, %xmm0        #  1     0     4      OPC=movsldup_xmm_xmm
circuit:vmovsldup %xmm1, %xmm13      #  2     0x4   4      OPC=vmovsldup_xmm_xmm
circuit:movdqu %xmm0, %xmm15         #  3     0x8   5      OPC=movdqu_xmm_xmm
circuit:vpsubq %xmm1, %xmm13, %xmm9  #  4     0xd   4      OPC=vpsubq_xmm_xmm_xmm
circuit:vpsubq %xmm2, %xmm15, %xmm0  #  5     0x11  4      OPC=vpsubq_xmm_xmm_xmm
circuit:movdqu %xmm9, %xmm1          #  6     0x15  5      OPC=movdqu_xmm_xmm
circuit:phaddd %xmm0, %xmm1          #  7     0x1a  5      OPC=phaddd_xmm_xmm
*/
module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%ymm1, "SPAD1") ~>
execinstr ( vaddpd %xmm2, %xmm1, %xmm9 , .Typedoperands ) ~>
execinstr ( vminpd %ymm9, %ymm9, %ymm12 , .Typedoperands ) ~>
execinstr ( movaps %xmm12, %xmm1 , .Typedoperands ) ~>
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
"YMM12" |-> (mi(256, 0):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM9" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:addpd_xmm_xmm
instr:addpd %xmm2, %xmm1
maybe read:{ %xmm1 %xmm2 }
must read:{ %xmm1 %xmm2 }
maybe write:{ %xmm1 }
must write:{ %xmm1 }
maybe undef:{ }
must undef:{ }
required flags:{ sse2 }

circuit:vaddpd %xmm2, %xmm1, %xmm9   #  1     0    4      OPC=vaddpd_xmm_xmm_xmm
circuit:vminpd %ymm9, %ymm9, %ymm12  #  2     0x4  5      OPC=vminpd_ymm_ymm_ymm
circuit:movaps %xmm12, %xmm1         #  3     0x9  4      OPC=movaps_xmm_xmm
*/
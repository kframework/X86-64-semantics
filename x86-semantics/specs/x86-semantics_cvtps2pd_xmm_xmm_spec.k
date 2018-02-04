module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%ymm1, "SPAD1") ~>
execinstr ( vcvtps2pd %xmm2, %ymm13 , .Typedoperands ) ~>
execinstr ( movaps %xmm13, %xmm1 , .Typedoperands ) ~>
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
"YMM13" |-> (mi(256, 0):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:cvtps2pd_xmm_xmm
instr:cvtps2pd %xmm2, %xmm1
maybe read:{ %xmm2 %mxcsr::rc[0] }
must read:{ %xmm2 %mxcsr::rc[0] }
maybe write:{ %xmm1 }
must write:{ %xmm1 }
maybe undef:{ }
must undef:{ }
required flags:{ sse2 }

circuit:vcvtps2pd %xmm2, %ymm13  #  1     0    4      OPC=vcvtps2pd_ymm_xmm
circuit:movaps %xmm13, %xmm1     #  2     0x4  4      OPC=movaps_xmm_xmm
*/
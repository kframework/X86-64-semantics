module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%ymm1, "SPAD1") ~>
execinstr ( vmovd %ebx, %xmm13 , .Typedoperands ) ~>
execinstr ( vcvtdq2ps %xmm13, %xmm0 , .Typedoperands ) ~>
execinstr ( movss %xmm0, %xmm1 , .Typedoperands ) ~>
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
"RBX" |-> (mi(64, ?I1:Int):MInt => _)
"YMM0" |-> (mi(256, 0):MInt => _)
"YMM1" |-> (mi(256, ?I2:Int):MInt => _)
"YMM13" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:cvtsi2ssl_xmm_r32
instr:cvtsi2ssl %ebx, %xmm1
maybe read:{ %ebx %xmm1 %mxcsr::rc[0] }
must read:{ %ebx %xmm1 %mxcsr::rc[0] }
maybe write:{ %xmm1 }
must write:{ %xmm1 }
maybe undef:{ }
must undef:{ }
required flags:{ sse }

circuit:vmovd %ebx, %xmm13       #  1     0    4      OPC=vmovd_xmm_r32
circuit:vcvtdq2ps %xmm13, %xmm0  #  2     0x4  5      OPC=vcvtdq2ps_xmm_xmm
circuit:movss %xmm0, %xmm1       #  3     0x9  4      OPC=movss_xmm_xmm
*/
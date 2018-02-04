module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%ymm1, "SPAD1") ~>
split2NToN(%xmm1,  %xmm12, %xmm13 , 64) ~>
split2NToN(%xmm2,  %r12, %r13 , 64) ~>
execinstr ( movq %xmm13, %r12 , .Typedoperands ) ~>
combineNTo2N(%r12,  %r13, %xmm1, 64, 128, 64) ~>
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
"R12" |-> (mi(64, 0):MInt => _)
"R13" |-> (mi(64, 0):MInt => _)
"YMM1" |-> (mi(256, ?I1:Int):MInt => _)
"YMM12" |-> (mi(256, 0):MInt => _)
"YMM13" |-> (mi(256, 0):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:unpckhpd_xmm_xmm
instr:unpckhpd %xmm2, %xmm1
maybe read:{ %xmm1 %xmm2 }
must read:{ %xmm1 %xmm2 }
maybe write:{ %xmm1 }
must write:{ %xmm1 }
maybe undef:{ }
must undef:{ }
required flags:{ sse2 }

circuit:callq .move_128_64_xmm1_xmm12_xmm13  #  1     0     5      OPC=callq_label
circuit:callq .move_128_064_xmm2_r12_r13     #  2     0x5   5      OPC=callq_label
circuit:movq %xmm13, %r12                    #  3     0xa   5      OPC=movq_r64_xmm
circuit:callq .move_064_128_r12_r13_xmm1     #  4     0xf   5      OPC=callq_label
*/
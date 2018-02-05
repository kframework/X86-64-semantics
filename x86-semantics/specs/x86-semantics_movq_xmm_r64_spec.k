module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%ymm1, "SPAD1") ~>
execinstr ( vmovq %rbx, %xmm6 , .Typedoperands ) ~>
execinstr ( vpor %xmm6, %xmm6, %xmm0 , .Typedoperands ) ~>
execinstr ( movupd %xmm0, %xmm1 , .Typedoperands ) ~>
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
"YMM6" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:movq_xmm_r64
instr:movq %rbx, %xmm1
maybe read:{ %rbx }
must read:{ %rbx }
maybe write:{ %xmm1 }
must write:{ %xmm1 }
maybe undef:{ }
must undef:{ }
required flags:{ sse2 }

circuit:vmovq %rbx, %xmm6         #  1     0    5      OPC=vmovq_xmm_r64
circuit:vpor %xmm6, %xmm6, %xmm0  #  2     0x5  4      OPC=vpor_xmm_xmm_xmm
circuit:movupd %xmm0, %xmm1       #  3     0x9  4      OPC=movupd_xmm_xmm
*/
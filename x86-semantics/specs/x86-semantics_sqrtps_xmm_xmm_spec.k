module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%ymm1, "SPAD1") ~>
execinstr ( vmovdqu %xmm2, %xmm4 , .Typedoperands ) ~>
execinstr ( vsqrtps %ymm4, %ymm7 , .Typedoperands ) ~>
execinstr ( movdqa %xmm7, %xmm1 , .Typedoperands ) ~>
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
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM4" |-> (mi(256, 0):MInt => _)
"YMM7" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:sqrtps_xmm_xmm
instr:sqrtps %xmm2, %xmm1
maybe read:{ %xmm2 }
must read:{ %xmm2 }
maybe write:{ %xmm1 }
must write:{ %xmm1 }
maybe undef:{ }
must undef:{ }
required flags:{ sse }

circuit:vmovdqu %xmm2, %xmm4  #  1     0    4      OPC=vmovdqu_xmm_xmm
circuit:vsqrtps %ymm4, %ymm7  #  2     0x4  4      OPC=vsqrtps_ymm_ymm
circuit:movdqa %xmm7, %xmm1   #  3     0x8  4      OPC=movdqa_xmm_xmm
*/
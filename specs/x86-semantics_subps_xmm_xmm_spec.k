module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%ymm1, "SPAD1") ~>
execinstr ( vmovaps %xmm2, %xmm10 , .Typedoperands ) ~>
execinstr ( vminps %xmm1, %xmm1, %xmm4 , .Typedoperands ) ~>
execinstr ( vsubps %ymm10, %ymm4, %ymm2 , .Typedoperands ) ~>
execinstr ( movdqu %xmm2, %xmm1 , .Typedoperands ) ~>
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
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM4" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:subps_xmm_xmm
instr:subps %xmm2, %xmm1
maybe read:{ %xmm1 %xmm2 }
must read:{ %xmm1 %xmm2 }
maybe write:{ %xmm1 }
must write:{ %xmm1 }
maybe undef:{ }
must undef:{ }
required flags:{ sse }

circuit:vmovaps %xmm2, %xmm10        #  1     0     4      OPC=vmovaps_xmm_xmm
circuit:vminps %xmm1, %xmm1, %xmm4   #  2     0x4   4      OPC=vminps_xmm_xmm_xmm
circuit:vsubps %ymm10, %ymm4, %ymm2  #  3     0x8   5      OPC=vsubps_ymm_ymm_ymm
circuit:movdqu %xmm2, %xmm1          #  4     0xd   4      OPC=movdqu_xmm_xmm
*/
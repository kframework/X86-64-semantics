module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vmovddup %ymm2, %ymm12 , .Typedoperands ) ~>
execinstr ( vpunpckhdq %ymm2, %ymm12, %ymm0 , .Typedoperands ) ~>
execinstr ( vunpcklps %ymm3, %ymm0, %ymm6 , .Typedoperands ) ~>
execinstr ( vpunpckhdq %ymm3, %ymm6, %ymm1 , .Typedoperands ) ~>
execinstr ( vunpcklps %ymm1, %ymm6, %ymm14 , .Typedoperands ) ~>
execinstr ( vpunpckhqdq %ymm1, %ymm0, %ymm5 , .Typedoperands ) ~>
execinstr ( vsubps %ymm5, %ymm14, %ymm1 , .Typedoperands ) ~>
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
"YMM0" |-> (mi(256, 0):MInt => _)
"YMM1" |-> (mi(256, ?I1:Int):MInt => _)
"YMM12" |-> (mi(256, 0):MInt => _)
"YMM14" |-> (mi(256, 0):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM3" |-> (mi(256, ?I3:Int):MInt => _)
"YMM5" |-> (mi(256, 0):MInt => _)
"YMM6" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vhsubps_ymm_ymm_ymm
instr:vhsubps %ymm3, %ymm2, %ymm1
maybe read:{ %ymm2 %ymm3 }
must read:{ %ymm2 %ymm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx }

circuit:vmovddup %ymm2, %ymm12           #  1     0     4      OPC=vmovddup_ymm_ymm
circuit:vpunpckhdq %ymm2, %ymm12, %ymm0  #  2     0x4   4      OPC=vpunpckhdq_ymm_ymm_ymm
circuit:vunpcklps %ymm3, %ymm0, %ymm6    #  3     0x8   4      OPC=vunpcklps_ymm_ymm_ymm
circuit:vpunpckhdq %ymm3, %ymm6, %ymm1   #  4     0xc   4      OPC=vpunpckhdq_ymm_ymm_ymm
circuit:vunpcklps %ymm1, %ymm6, %ymm14   #  5     0x10  4      OPC=vunpcklps_ymm_ymm_ymm
circuit:vpunpckhqdq %ymm1, %ymm0, %ymm5  #  6     0x14  4      OPC=vpunpckhqdq_ymm_ymm_ymm
circuit:vsubps %ymm5, %ymm14, %ymm1      #  7     0x18  4      OPC=vsubps_ymm_ymm_ymm
*/
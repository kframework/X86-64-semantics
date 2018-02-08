module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vpunpckhqdq %ymm3, %ymm2, %ymm4 , .Typedoperands ) ~>
execinstr ( vunpckhpd %ymm4, %ymm4, %ymm5 , .Typedoperands ) ~>
execinstr ( vpunpcklwd %ymm5, %ymm4, %ymm1 , .Typedoperands ) ~>
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
"YMM1" |-> (mi(256, ?I1:Int):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM3" |-> (mi(256, ?I3:Int):MInt => _)
"YMM4" |-> (mi(256, 0):MInt => _)
"YMM5" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vpunpckhwd_ymm_ymm_ymm
instr:vpunpckhwd %ymm3, %ymm2, %ymm1
maybe read:{ %ymm2 %ymm3 }
must read:{ %ymm2 %ymm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx2 }

circuit:vpunpckhqdq %ymm3, %ymm2, %ymm4  #  1     0    4      OPC=vpunpckhqdq_ymm_ymm_ymm
circuit:vunpckhpd %ymm4, %ymm4, %ymm5    #  2     0x4  4      OPC=vunpckhpd_ymm_ymm_ymm
circuit:vpunpcklwd %ymm5, %ymm4, %ymm1   #  3     0x8  4      OPC=vpunpcklwd_ymm_ymm_ymm
*/
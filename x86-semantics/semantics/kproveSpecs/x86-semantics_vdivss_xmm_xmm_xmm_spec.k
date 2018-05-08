module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( movdqu %xmm3, %xmm3 , .Typedoperands ) ~>
execinstr ( divss %xmm3, %xmm2 , .Typedoperands ) ~>
execinstr ( vmovaps %xmm2, %xmm1 , .Typedoperands ) ~>
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

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vdivss_xmm_xmm_xmm
instr:vdivss %xmm3, %xmm2, %xmm1
maybe read:{ %xmm2 %xmm3 }
must read:{ %xmm2 %xmm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx }

circuit:movdqu %xmm3, %xmm3   #  1     0    4      OPC=movdqu_xmm_xmm
circuit:divss %xmm3, %xmm2    #  2     0x4  4      OPC=divss_xmm_xmm
circuit:vmovaps %xmm2, %xmm1  #  3     0x8  4      OPC=vmovaps_xmm_xmm
*/
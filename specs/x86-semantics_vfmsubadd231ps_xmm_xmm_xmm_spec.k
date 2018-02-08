module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vpmovzxbd %xmm1, %xmm8 , .Typedoperands ) ~>
execinstr ( vfnmsub231ps %xmm1, %xmm8, %xmm1 , .Typedoperands ) ~>
execinstr ( vfmaddsub231ps %xmm3, %xmm2, %xmm1 , .Typedoperands ) ~>
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
"YMM8" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vfmsubadd231ps_xmm_xmm_xmm
instr:vfmsubadd231ps %xmm3, %xmm2, %xmm1
maybe read:{ %xmm1 %xmm2 %xmm3 }
must read:{ %xmm1 %xmm2 %xmm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ fma }

circuit:vpmovzxbd %xmm1, %xmm8              #  1     0    5      OPC=vpmovzxbd_xmm_xmm
circuit:vfnmsub231ps %xmm1, %xmm8, %xmm1    #  2     0x5  5      OPC=vfnmsub231ps_xmm_xmm_xmm
circuit:vfmaddsub231ps %xmm3, %xmm2, %xmm1  #  3     0xa  5      OPC=vfmaddsub231ps_xmm_xmm_xmm
*/
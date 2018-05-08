module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vfmadd132pd %xmm3, %xmm1, %xmm2 , .Typedoperands ) ~>
split2NToN(%xmm2,  %xmm10, %xmm11 , 64) ~>
execinstr ( vmovsd %xmm10, %xmm1, %xmm1 , .Typedoperands ) ~>
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
"YMM10" |-> (mi(256, 0):MInt => _)
"YMM11" |-> (mi(256, 0):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM3" |-> (mi(256, ?I3:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vfmadd231sd_xmm_xmm_xmm
instr:vfmadd231sd %xmm3, %xmm2, %xmm1
maybe read:{ %xmm1 %xmm2 %xmm3 }
must read:{ %xmm1 %xmm2 %xmm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ fma }

circuit:vfmadd132pd %xmm3, %xmm1, %xmm2      #  1     0    5      OPC=vfmadd132pd_xmm_xmm_xmm
circuit:callq .move_128_64_xmm2_xmm10_xmm11  #  2     0x5  5      OPC=callq_label
circuit:vmovsd %xmm10, %xmm1, %xmm1          #  3     0xa  5      OPC=vmovsd_xmm_xmm_xmm
*/
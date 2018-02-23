module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( movddup %xmm1, %xmm14 , .Typedoperands ) ~>
splitXmmToR32( %xmm2, %xmm8, %xmm9, %xmm10, %xmm11, 128 ) ~>
execinstr ( vminsd %xmm8, %xmm10, %xmm15 , .Typedoperands ) ~>
execinstr ( movaps %xmm3, %xmm6 , .Typedoperands ) ~>
execinstr ( vfnmsub213pd %xmm2, %xmm15, %xmm15 , .Typedoperands ) ~>
execinstr ( vxorps %xmm8, %xmm1, %xmm10 , .Typedoperands ) ~>
execinstr ( vfmsub213sd %xmm6, %xmm15, %xmm14 , .Typedoperands ) ~>
execinstr ( vmovsd %xmm14, %xmm10, %xmm1 , .Typedoperands ) ~>
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
"YMM14" |-> (mi(256, 0):MInt => _)
"YMM15" |-> (mi(256, 0):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM3" |-> (mi(256, ?I3:Int):MInt => _)
"YMM6" |-> (mi(256, 0):MInt => _)
"YMM8" |-> (mi(256, 0):MInt => _)
"YMM9" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vfnmsub213sd_xmm_xmm_xmm
instr:vfnmsub213sd %xmm3, %xmm2, %xmm1
maybe read:{ %xmm1 %xmm2 %xmm3 }
must read:{ %xmm1 %xmm2 %xmm3 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ fma }

circuit:movddup %xmm1, %xmm14                           #  1     0     5      OPC=movddup_xmm_xmm
circuit:callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label
circuit:vminsd %xmm8, %xmm10, %xmm15                    #  3     0xa   5      OPC=vminsd_xmm_xmm_xmm
circuit:movaps %xmm3, %xmm6                             #  4     0xf   3      OPC=movaps_xmm_xmm
circuit:vfnmsub213pd %xmm2, %xmm15, %xmm15              #  5     0x12  5      OPC=vfnmsub213pd_xmm_xmm_xmm
circuit:vxorps %xmm8, %xmm1, %xmm10                     #  6     0x17  5      OPC=vxorps_xmm_xmm_xmm
circuit:vfmsub213sd %xmm6, %xmm15, %xmm14               #  7     0x1c  5      OPC=vfmsub213sd_xmm_xmm_xmm
circuit:vmovsd %xmm14, %xmm10, %xmm1                    #  8     0x21  5      OPC=vmovsd_xmm_xmm_xmm
*/
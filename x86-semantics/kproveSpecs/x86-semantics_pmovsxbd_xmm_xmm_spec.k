module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%ymm1, "SPAD1") ~>
execinstr ( movq $0xffffffffffffff80, %rdx , .Typedoperands ) ~>
execinstr ( movq %rdx, %xmm3 , .Typedoperands ) ~>
execinstr ( vpbroadcastd %xmm3, %ymm5 , .Typedoperands ) ~>
execinstr ( movups %xmm5, %xmm14 , .Typedoperands ) ~>
execinstr ( pmovzxbd %xmm2, %xmm2 , .Typedoperands ) ~>
execinstr ( vpaddd %xmm14, %xmm2, %xmm6 , .Typedoperands ) ~>
execinstr ( xorps %xmm14, %xmm6 , .Typedoperands ) ~>
execinstr ( movaps %xmm6, %xmm1 , .Typedoperands ) ~>
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
"RDX" |-> (mi(64, 0):MInt => _)
"YMM1" |-> (mi(256, ?I1:Int):MInt => _)
"YMM14" |-> (mi(256, 0):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"YMM3" |-> (mi(256, 0):MInt => _)
"YMM5" |-> (mi(256, 0):MInt => _)
"YMM6" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:pmovsxbd_xmm_xmm
instr:pmovsxbd %xmm2, %xmm1
maybe read:{ %xmm2 }
must read:{ %xmm2 }
maybe write:{ %xmm1 }
must write:{ %xmm1 }
maybe undef:{ }
must undef:{ }
required flags:{ sse4_1 }

circuit:movq $0xffffffffffffff80, %rdx  #  1     0     10     OPC=movq_r64_imm64
circuit:movq %rdx, %xmm3                #  2     0xa   5      OPC=movq_xmm_r64
circuit:vpbroadcastd %xmm3, %ymm5       #  3     0xf   5      OPC=vpbroadcastd_ymm_xmm
circuit:movups %xmm5, %xmm14            #  4     0x14  4      OPC=movups_xmm_xmm
circuit:pmovzxbd %xmm2, %xmm2           #  5     0x18  5      OPC=pmovzxbd_xmm_xmm
circuit:vpaddd %xmm14, %xmm2, %xmm6     #  6     0x1d  5      OPC=vpaddd_xmm_xmm_xmm
circuit:xorps %xmm14, %xmm6             #  7     0x22  4      OPC=xorps_xmm_xmm
circuit:movaps %xmm6, %xmm1             #  8     0x26  3      OPC=movaps_xmm_xmm
*/
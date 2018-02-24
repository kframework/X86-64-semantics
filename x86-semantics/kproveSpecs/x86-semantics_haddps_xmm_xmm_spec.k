module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%ymm1, "SPAD1") ~>
execinstr ( vmovupd %xmm1, %xmm5 , .Typedoperands ) ~>
execinstr ( vhaddps %xmm2, %xmm5, %xmm5 , .Typedoperands ) ~>
execinstr ( movups %xmm5, %xmm1 , .Typedoperands ) ~>
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
"YMM5" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:haddps_xmm_xmm
instr:haddps %xmm2, %xmm1
maybe read:{ %xmm1 %xmm2 }
must read:{ %xmm1 %xmm2 }
maybe write:{ %xmm1 }
must write:{ %xmm1 }
maybe undef:{ }
must undef:{ }
required flags:{ pni }

circuit:vmovupd %xmm1, %xmm5         #  1     0    4      OPC=vmovupd_xmm_xmm
circuit:vhaddps %xmm2, %xmm5, %xmm5  #  2     0x4  4      OPC=vhaddps_xmm_xmm_xmm
circuit:movups %xmm5, %xmm1          #  3     0x8  3      OPC=movups_xmm_xmm
*/
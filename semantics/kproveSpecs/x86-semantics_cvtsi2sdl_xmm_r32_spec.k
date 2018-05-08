module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%ymm1, "SPAD1") ~>
execinstr ( vcvtsi2sdl %ebx, %xmm1, %xmm12 , .Typedoperands ) ~>
execinstr ( movsd %xmm12, %xmm1 , .Typedoperands ) ~>
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
"RBX" |-> (mi(64, ?I1:Int):MInt => _)
"YMM1" |-> (mi(256, ?I2:Int):MInt => _)
"YMM12" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:cvtsi2sdl_xmm_r32
instr:cvtsi2sdl %ebx, %xmm1
maybe read:{ %ebx %xmm1 %mxcsr::rc[0] }
must read:{ %ebx %xmm1 %mxcsr::rc[0] }
maybe write:{ %xmm1 }
must write:{ %xmm1 }
maybe undef:{ }
must undef:{ }
required flags:{ sse2 }

circuit:vcvtsi2sdl %ebx, %xmm1, %xmm12  #  1     0    4      OPC=vcvtsi2sdl_xmm_xmm_r32
circuit:movsd %xmm12, %xmm1             #  2     0x4  5      OPC=movsd_xmm_xmm
*/
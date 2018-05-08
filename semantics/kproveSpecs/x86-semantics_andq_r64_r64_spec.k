module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vmovq %rbx, %xmm12 , .Typedoperands ) ~>
execinstr ( vmovq %xmm12, %xmm2 , .Typedoperands ) ~>
execinstr ( vmovq %rcx, %xmm4 , .Typedoperands ) ~>
execinstr ( xorw %cx, %cx , .Typedoperands ) ~>
execinstr ( vandpd %ymm2, %ymm4, %ymm1 , .Typedoperands ) ~>
execinstr ( vmovq %xmm1, %rbx , .Typedoperands ) ~>
setSZPForRegister( %rbx ) ~>
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
"AF" |-> (mi(1, ?I1:Int):MInt => _)
"CF" |-> (mi(1, ?I2:Int):MInt => _)
"OF" |-> (mi(1, ?I3:Int):MInt => _)
"PF" |-> (mi(1, ?I4:Int):MInt => _)
"RBX" |-> (mi(64, ?I5:Int):MInt => _)
"RCX" |-> (mi(64, ?I6:Int):MInt => _)
"SF" |-> (mi(1, ?I7:Int):MInt => _)
"YMM1" |-> (mi(256, 0):MInt => _)
"YMM12" |-> (mi(256, 0):MInt => _)
"YMM2" |-> (mi(256, 0):MInt => _)
"YMM4" |-> (mi(256, 0):MInt => _)
"ZF" |-> (mi(1, ?I8:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:andq_r64_r64
instr:andq %rcx, %rbx
maybe read:{ %rcx %rbx }
must read:{ %rcx %rbx }
maybe write:{ %rbx %cf %pf %zf %sf %of }
must write:{ %rbx %cf %pf %zf %sf %of }
maybe undef:{ %af }
must undef:{ %af }
required flags:{ }

circuit:vmovq %rbx, %xmm12          #  1     0     5      OPC=vmovq_xmm_r64
circuit:vmovq %xmm12, %xmm2         #  2     0x5   5      OPC=vmovq_xmm_xmm
circuit:vmovq %rcx, %xmm4           #  3     0xa   5      OPC=vmovq_xmm_r64
circuit:xorw %cx, %cx               #  4     0xf   3      OPC=xorw_r16_r16
circuit:vandpd %ymm2, %ymm4, %ymm1  #  5     0x12  4      OPC=vandpd_ymm_ymm_ymm
circuit:vmovq %xmm1, %rbx           #  6     0x16  5      OPC=vmovq_r64_xmm
circuit:callq .set_szp_for_rbx      #  7     0x1b  5      OPC=callq_label
*/
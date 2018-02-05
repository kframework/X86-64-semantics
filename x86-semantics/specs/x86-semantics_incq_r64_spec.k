module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vxorps %xmm2, %xmm2, %xmm7 , .Typedoperands ) ~>
execinstr ( vsubpd %ymm7, %ymm7, %ymm1 , .Typedoperands ) ~>
split2NToN(%xmm1,  %r8, %r9 , 64) ~>
execinstr ( negw %r8w , .Typedoperands ) ~>
execinstr ( setge %r9b , .Typedoperands ) ~>
execinstr ( addq %r9, %rbx , .Typedoperands ) ~>
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
"CF" |-> (mi(1, 0):MInt => _)
"OF" |-> (mi(1, ?I2:Int):MInt => _)
"PF" |-> (mi(1, ?I3:Int):MInt => _)
"R8" |-> (mi(64, 0):MInt => _)
"R9" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, ?I4:Int):MInt => _)
"SF" |-> (mi(1, ?I5:Int):MInt => _)
"YMM1" |-> (mi(256, 0):MInt => _)
"YMM7" |-> (mi(256, 0):MInt => _)
"ZF" |-> (mi(1, ?I6:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:incq_r64
instr:incq %rbx
maybe read:{ %rbx }
must read:{ %rbx }
maybe write:{ %rbx %pf %af %zf %sf %of }
must write:{ %rbx %pf %af %zf %sf %of }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:vxorps %xmm2, %xmm2, %xmm7      #  1     0     4      OPC=vxorps_xmm_xmm_xmm
circuit:vsubpd %ymm7, %ymm7, %ymm1      #  2     0x4   4      OPC=vsubpd_ymm_ymm_ymm
circuit:callq .move_128_064_xmm1_r8_r9  #  3     0x8   5      OPC=callq_label
circuit:negw %r8w                       #  4     0xd   4      OPC=negw_r16
circuit:setge %r9b                      #  5     0x11  4      OPC=setge_r8
circuit:addq %r9, %rbx                  #  6     0x15  3      OPC=addq_r64_r64
*/
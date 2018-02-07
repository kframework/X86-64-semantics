module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vpxor %xmm2, %xmm2, %xmm1 , .Typedoperands ) ~>
movPosOfRegToByte( 25, %ymm1, %r8b ) ~>
execinstr ( setnl %r14b , .Typedoperands ) ~>
execinstr ( xaddb %r14b, %r8b , .Typedoperands ) ~>
execinstr ( cmovel %ecx, %ebx , .Typedoperands ) ~>
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
"AF" |-> (mi(1, 0):MInt => _)
"CF" |-> (mi(1, 0):MInt => _)
"OF" |-> (mi(1, ?I1:Int):MInt => _)
"PF" |-> (mi(1, 0):MInt => _)
"R14" |-> (mi(64, 0):MInt => _)
"R8" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, ?I2:Int):MInt => _)
"RCX" |-> (mi(64, ?I3:Int):MInt => _)
"SF" |-> (mi(1, ?I4:Int):MInt => _)
"YMM1" |-> (mi(256, 0):MInt => _)
"YMM2" |-> (mi(256, 0):MInt => _)
"ZF" |-> (mi(1, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:cmovll_r32_r32
instr:cmovll %ecx, %ebx
maybe read:{ %ecx %sf %of }
must read:{ %ecx %sf %of }
maybe write:{ %rbx }
must write:{ }
maybe undef:{ }
must undef:{ }
required flags:{ cmov }

circuit:vpxor %xmm2, %xmm2, %xmm1           #  1     0     4      OPC=vpxor_xmm_xmm_xmm
circuit:callq .move_byte_25_of_ymm1_to_r8b  #  2     0x4   5      OPC=callq_label
circuit:setnl %r14b                         #  3     0x9   4      OPC=setnl_r8
circuit:xaddb %r14b, %r8b                   #  4     0xd   4      OPC=xaddb_r8_r8
circuit:cmovel %ecx, %ebx                   #  5     0x11  3      OPC=cmovel_r32_r32
*/
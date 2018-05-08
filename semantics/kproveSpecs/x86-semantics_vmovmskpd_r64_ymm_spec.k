module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
split2NToN(%ymm1,  %xmm10, %xmm11 , 128) ~>
execinstr ( vmovmskpd %xmm11, %r9d , .Typedoperands ) ~>
execinstr ( vmovmskpd %xmm10, %ebx , .Typedoperands ) ~>
execinstr ( xaddb %r9b, %r9b , .Typedoperands ) ~>
execinstr ( xaddb %bl, %r9b , .Typedoperands ) ~>
execinstr ( addw %r9w, %bx , .Typedoperands ) ~>
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
"OF" |-> (mi(1, 0):MInt => _)
"PF" |-> (mi(1, 0):MInt => _)
"R9" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, ?I1:Int):MInt => _)
"SF" |-> (mi(1, 0):MInt => _)
"YMM1" |-> (mi(256, ?I2:Int):MInt => _)
"YMM10" |-> (mi(256, 0):MInt => _)
"YMM11" |-> (mi(256, 0):MInt => _)
"ZF" |-> (mi(1, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:vmovmskpd_r64_ymm
instr:vmovmskpd %ymm1, %rbx
maybe read:{ %ymm1 }
must read:{ %ymm1 }
maybe write:{ %rbx }
must write:{ %rbx }
maybe undef:{ }
must undef:{ }
required flags:{ avx }

circuit:callq .move_256_128_ymm1_xmm10_xmm11  #  1     0     5      OPC=callq_label
circuit:vmovmskpd %xmm11, %r9d                #  2     0x5   5      OPC=vmovmskpd_r32_xmm
circuit:vmovmskpd %xmm10, %ebx                #  3     0xa   5      OPC=vmovmskpd_r32_xmm
circuit:xaddb %r9b, %r9b                      #  4     0xf   4      OPC=xaddb_r8_r8
circuit:xaddb %bl, %r9b                       #  5     0x13  4      OPC=xaddb_r8_r8
circuit:addw %r9w, %bx                        #  6     0x17  4      OPC=addw_r16_r16
*/
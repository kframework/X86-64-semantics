module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%ymm1, "SPAD1") ~>
split2NToN(%xmm2,  %r10, %r11 , 64) ~>
split2NToN(%xmm1,  %r8, %r9 , 64) ~>
execinstr ( addq %r10, %r8 , .Typedoperands ) ~>
execinstr ( xchgw %r8w, %r8w , .Typedoperands ) ~>
execinstr ( addq %r11, %r9 , .Typedoperands ) ~>
combineNTo2N(%r8,  %r9, %xmm1, 64, 128, 64) ~>
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
"AF" |-> (mi(1, 0):MInt => _)
"CF" |-> (mi(1, 0):MInt => _)
"OF" |-> (mi(1, 0):MInt => _)
"PF" |-> (mi(1, 0):MInt => _)
"R10" |-> (mi(64, 0):MInt => _)
"R11" |-> (mi(64, 0):MInt => _)
"R8" |-> (mi(64, 0):MInt => _)
"R9" |-> (mi(64, 0):MInt => _)
"SF" |-> (mi(1, 0):MInt => _)
"YMM1" |-> (mi(256, ?I1:Int):MInt => _)
"YMM2" |-> (mi(256, ?I2:Int):MInt => _)
"ZF" |-> (mi(1, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:paddq_xmm_xmm
instr:paddq %xmm2, %xmm1
maybe read:{ %xmm1 %xmm2 }
must read:{ %xmm1 %xmm2 }
maybe write:{ %xmm1 }
must write:{ %xmm1 }
maybe undef:{ }
must undef:{ }
required flags:{ sse2 }

circuit:callq .move_128_064_xmm2_r10_r11  #  1     0     5      OPC=callq_label
circuit:callq .move_128_064_xmm1_r8_r9    #  2     0x5   5      OPC=callq_label
circuit:addq %r10, %r8                    #  3     0xa   3      OPC=addq_r64_r64
circuit:xchgw %r8w, %r8w                  #  4     0xd   4      OPC=xchgw_r16_r16
circuit:addq %r11, %r9                    #  5     0x11  3      OPC=addq_r64_r64
circuit:callq .move_064_128_r8_r9_xmm1    #  6     0x14  5      OPC=callq_label
*/
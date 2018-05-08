module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( movslq %ebx, %rsi , .Typedoperands ) ~>
execinstr ( vmovd %ecx, %xmm1 , .Typedoperands ) ~>
split2NToN(%xmm1,  %r8, %r9 , 64) ~>
execinstr ( cmovnel %r8d, %ebx , .Typedoperands ) ~>
execinstr ( adcb %r9b, %r9b , .Typedoperands ) ~>
execinstr ( cmovnzl %esi, %ebx , .Typedoperands ) ~>
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
"CF" |-> (mi(1, ?I1:Int):MInt => _)
"OF" |-> (mi(1, 0):MInt => _)
"PF" |-> (mi(1, 0):MInt => _)
"R8" |-> (mi(64, 0):MInt => _)
"R9" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, ?I2:Int):MInt => _)
"RCX" |-> (mi(64, ?I3:Int):MInt => _)
"RSI" |-> (mi(64, 0):MInt => _)
"SF" |-> (mi(1, 0):MInt => _)
"YMM1" |-> (mi(256, 0):MInt => _)
"ZF" |-> (mi(1, ?I4:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:cmovnbel_r32_r32
instr:cmovnbel %ecx, %ebx
maybe read:{ %ecx %cf %zf }
must read:{ %ecx %cf %zf }
maybe write:{ %rbx }
must write:{ }
maybe undef:{ }
must undef:{ }
required flags:{ cmov }

circuit:movslq %ebx, %rsi               #  1     0     3      OPC=movslq_r64_r32
circuit:vmovd %ecx, %xmm1               #  2     0x3   4      OPC=vmovd_xmm_r32
circuit:callq .move_128_064_xmm1_r8_r9  #  3     0x7   5      OPC=callq_label
circuit:cmovnel %r8d, %ebx              #  4     0xc   4      OPC=cmovnel_r32_r32
circuit:adcb %r9b, %r9b                 #  5     0x10  3      OPC=adcb_r8_r8
circuit:cmovnzl %esi, %ebx              #  6     0x13  3      OPC=cmovnzl_r32_r32
*/
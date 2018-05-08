module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( movd %ecx, %xmm3 , .Typedoperands ) ~>
split2NToN(%xmm3,  %r8, %r9 , 64) ~>
execinstr ( tzcntl %r9d, %r13d , .Typedoperands ) ~>
execinstr ( andnl %edx, %r13d, %edi , .Typedoperands ) ~>
execinstr ( shrxq %rdi, %r8, %rbx , .Typedoperands ) ~>
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
"R13" |-> (mi(64, 0):MInt => _)
"R8" |-> (mi(64, 0):MInt => _)
"R9" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, ?I1:Int):MInt => _)
"RCX" |-> (mi(64, ?I2:Int):MInt => _)
"RDI" |-> (mi(64, 0):MInt => _)
"RDX" |-> (mi(64, ?I3:Int):MInt => _)
"SF" |-> (mi(1, 0):MInt => _)
"YMM3" |-> (mi(256, 0):MInt => _)
"ZF" |-> (mi(1, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:shrxl_r32_r32_r32
instr:shrxl %edx, %ecx, %ebx
maybe read:{ %ecx %edx }
must read:{ %ecx %edx }
maybe write:{ %rbx }
must write:{ %rbx }
maybe undef:{ }
must undef:{ }
required flags:{ bmi2 }

circuit:movd %ecx, %xmm3                #  1     0     4      OPC=movd_xmm_r32
circuit:callq .move_128_064_xmm3_r8_r9  #  2     0x4   5      OPC=callq_label
circuit:tzcntl %r9d, %r13d              #  3     0x9   5      OPC=tzcntl_r32_r32
circuit:andnl %edx, %r13d, %edi         #  4     0xe   5      OPC=andnl_r32_r32_r32
circuit:shrxq %rdi, %r8, %rbx           #  5     0x13  5      OPC=shrxq_r64_r64_r64
*/
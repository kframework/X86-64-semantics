module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( xchgl %ecx, %ebx , .Typedoperands ) ~>
execinstr ( vmovd %ecx, %xmm1 , .Typedoperands ) ~>
split2NToN(%xmm1,  %r8, %r9 , 64) ~>
execinstr ( cmovnlel %r8d, %ebx , .Typedoperands ) ~>
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
"OF" |-> (mi(1, ?I1:Int):MInt => _)
"R8" |-> (mi(64, 0):MInt => _)
"R9" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, ?I2:Int):MInt => _)
"RCX" |-> (mi(64, ?I3:Int):MInt => _)
"SF" |-> (mi(1, ?I4:Int):MInt => _)
"YMM1" |-> (mi(256, 0):MInt => _)
"ZF" |-> (mi(1, ?I5:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:cmovngl_r32_r32
instr:cmovngl %ecx, %ebx
maybe read:{ %ecx %zf %sf %of }
must read:{ %ecx %zf %sf %of }
maybe write:{ %rbx }
must write:{ }
maybe undef:{ }
must undef:{ }
required flags:{ cmov }

circuit:xchgl %ecx, %ebx                #  1     0    2      OPC=xchgl_r32_r32
circuit:vmovd %ecx, %xmm1               #  2     0x2  4      OPC=vmovd_xmm_r32
circuit:callq .move_128_064_xmm1_r8_r9  #  3     0x6  5      OPC=callq_label
circuit:cmovnlel %r8d, %ebx             #  4     0xb  4      OPC=cmovnlel_r32_r32
*/
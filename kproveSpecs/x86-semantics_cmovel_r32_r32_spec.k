module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
split2NToN(%rbx,  %r12d, %r13d , 32) ~>
execinstr ( xchgl %ebx, %ecx , .Typedoperands ) ~>
execinstr ( cmovnel %r12d, %ebx , .Typedoperands ) ~>
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
"R12" |-> (mi(64, 0):MInt => _)
"R13" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, ?I1:Int):MInt => _)
"RCX" |-> (mi(64, ?I2:Int):MInt => _)
"ZF" |-> (mi(1, ?I3:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:cmovel_r32_r32
instr:cmovel %ecx, %ebx
maybe read:{ %ecx %zf }
must read:{ %ecx %zf }
maybe write:{ %rbx }
must write:{ }
maybe undef:{ }
must undef:{ }
required flags:{ cmov }

circuit:callq .move_064_032_rbx_r12d_r13d  #  1     0    5      OPC=callq_label
circuit:xchgl %ebx, %ecx                   #  2     0x5  2      OPC=xchgl_r32_r32
circuit:cmovnel %r12d, %ebx                #  3     0x7  4      OPC=cmovnel_r32_r32
*/
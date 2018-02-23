module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
split2NToN(%rbx,  %r10d, %r11d , 32) ~>
execinstr ( cmovpol %r10d, %ecx , .Typedoperands ) ~>
execinstr ( xchgl %ebx, %ecx , .Typedoperands ) ~>
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
"PF" |-> (mi(1, ?I1:Int):MInt => _)
"R10" |-> (mi(64, 0):MInt => _)
"R11" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, ?I2:Int):MInt => _)
"RCX" |-> (mi(64, ?I3:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:cmovpel_r32_r32
instr:cmovpel %ecx, %ebx
maybe read:{ %ecx %pf }
must read:{ %ecx %pf }
maybe write:{ %rbx }
must write:{ }
maybe undef:{ }
must undef:{ }
required flags:{ cmov }

circuit:callq .move_064_032_rbx_r10d_r11d  #  1     0    5      OPC=callq_label
circuit:cmovpol %r10d, %ecx                #  2     0x5  4      OPC=cmovpol_r32_r32
circuit:xchgl %ebx, %ecx                   #  3     0x9  2      OPC=xchgl_r32_r32
*/
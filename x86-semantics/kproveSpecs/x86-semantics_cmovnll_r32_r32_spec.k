module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( cmovngel %ebx, %ecx , .Typedoperands ) ~>
execinstr ( movl %ecx, %r10d , .Typedoperands ) ~>
execinstr ( xchgl %ebx, %r10d , .Typedoperands ) ~>
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
"R10" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, ?I2:Int):MInt => _)
"RCX" |-> (mi(64, ?I3:Int):MInt => _)
"SF" |-> (mi(1, ?I4:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:cmovnll_r32_r32
instr:cmovnll %ecx, %ebx
maybe read:{ %ecx %sf %of }
must read:{ %ecx %sf %of }
maybe write:{ %rbx }
must write:{ }
maybe undef:{ }
must undef:{ }
required flags:{ cmov }

circuit:cmovngel %ebx, %ecx  #  1     0    3      OPC=cmovngel_r32_r32
circuit:movl %ecx, %r10d     #  2     0x3  3      OPC=movl_r32_r32
circuit:xchgl %ebx, %r10d    #  3     0x6  3      OPC=xchgl_r32_r32
*/
module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( xchgl %eax, %ebx , .Typedoperands ) ~>
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
"RAX" |-> (mi(64, ?I1:Int):MInt => _)
"RBX" |-> (mi(64, ?I2:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:xchgl_eax_r32
instr:xchgl %ebx, %eax
maybe read:{ %eax %ebx }
must read:{ %eax %ebx }
maybe write:{ %rax %rbx }
must write:{ %rax %rbx }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:xchgl %eax, %ebx  #  1     0    2      OPC=xchgl_r32_r32
*/
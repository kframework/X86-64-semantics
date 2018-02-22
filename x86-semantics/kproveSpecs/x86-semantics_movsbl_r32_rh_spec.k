module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( movb %ah, %cl , .Typedoperands ) ~>
execinstr ( movsbl %cl, %ebp , .Typedoperands ) ~>
execinstr ( movq %rbp, %rbx , .Typedoperands ) ~>
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
"RBP" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, ?I2:Int):MInt => _)
"RCX" |-> (mi(64, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:movsbl_r32_rh
instr:movsbl %ah, %ebx
maybe read:{ %ah }
must read:{ %ah }
maybe write:{ %rbx }
must write:{ %rbx }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:movb %ah, %cl     #  1     0    2      OPC=movb_r8_rh
circuit:movsbl %cl, %ebp  #  2     0x2  3      OPC=movsbl_r32_r8
circuit:movq %rbp, %rbx   #  3     0x5  3      OPC=movq_r64_r64
*/
module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( xorq %rax, %rax , .Typedoperands ) ~>
execinstr ( adcb %al, %al , .Typedoperands ) ~>
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
"RAX" |-> (mi(64, 0):MInt => _)
"SF" |-> (mi(1, 0):MInt => _)
"ZF" |-> (mi(1, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:clc
instr:clc
maybe read:{ }
must read:{ }
maybe write:{ %cf }
must write:{ %cf }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:xorq %rax, %rax  #  1     0    3      OPC=xorq_r64_r64
circuit:adcb %al, %al    #  2     0x3  2      OPC=adcb_r8_r8
*/
module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( xorq %rsi, %rsi , .Typedoperands ) ~>
execinstr ( movslq %esi, %r9 , .Typedoperands ) ~>
execinstr ( adcl %r9d, %eax , .Typedoperands ) ~>
execinstr ( movslq %eax, %rax , .Typedoperands ) ~>
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
"R9" |-> (mi(64, 0):MInt => _)
"RAX" |-> (mi(64, ?I1:Int):MInt => _)
"RSI" |-> (mi(64, 0):MInt => _)
"SF" |-> (mi(1, 0):MInt => _)
"ZF" |-> (mi(1, 0):MInt => _)
"CF" |-> (mi(1, 0):MInt => _)
"AF" |-> (mi(1, 0):MInt => _)
"PF" |-> (mi(1, 0):MInt => _)
"OF" |-> (mi(1, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:cltq
instr:cltq
maybe read:{ %eax }
must read:{ %eax }
maybe write:{ %rax }
must write:{ %rax }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:xorq %rsi, %rsi    #  1     0    3      OPC=xorq_r64_r64
circuit:movslq %esi, %r9   #  2     0x3  3      OPC=movslq_r64_r32
circuit:adcl %r9d, %eax    #  3     0x6  3      OPC=adcl_r32_r32
circuit:movslq %eax, %rax  #  4     0x9  3      OPC=movslq_r64_r32
*/
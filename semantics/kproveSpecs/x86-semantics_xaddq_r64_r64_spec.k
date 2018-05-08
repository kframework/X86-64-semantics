module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( movq %rbx, %rsi , .Typedoperands ) ~>
execinstr ( addq %rsi, %rcx , .Typedoperands ) ~>
execinstr ( xchgq %rcx, %rbx , .Typedoperands ) ~>
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
"AF" |-> (mi(1, ?I1:Int):MInt => _)
"CF" |-> (mi(1, ?I2:Int):MInt => _)
"OF" |-> (mi(1, ?I3:Int):MInt => _)
"PF" |-> (mi(1, ?I4:Int):MInt => _)
"RBX" |-> (mi(64, ?I5:Int):MInt => _)
"RCX" |-> (mi(64, ?I6:Int):MInt => _)
"RSI" |-> (mi(64, 0):MInt => _)
"SF" |-> (mi(1, ?I7:Int):MInt => _)
"ZF" |-> (mi(1, ?I8:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:xaddq_r64_r64
instr:xaddq %rcx, %rbx
maybe read:{ %rcx %rbx }
must read:{ %rcx %rbx }
maybe write:{ %rcx %rbx %cf %pf %af %zf %sf %of }
must write:{ %rcx %rbx %cf %pf %af %zf %sf %of }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:movq %rbx, %rsi   #  1     0    3      OPC=movq_r64_r64
circuit:addq %rsi, %rcx   #  2     0x3  3      OPC=addq_r64_r64
circuit:xchgq %rcx, %rbx  #  3     0x6  3      OPC=xchgq_r64_r64
*/
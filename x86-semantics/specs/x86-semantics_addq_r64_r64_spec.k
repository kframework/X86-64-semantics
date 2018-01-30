module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( orq %rbx, %rbx , .Typedoperands ) ~>
execinstr ( adcq %rcx, %rbx , .Typedoperands ) ~>
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
"OF" |-> (mi(1, ?I2:Int):MInt => _)
"RCX" |-> (mi(64, ?I3:Int):MInt => _)
"CF" |-> (mi(1, ?I4:Int):MInt => _)
"ZF" |-> (mi(1, ?I5:Int):MInt => _)
"RBX" |-> (mi(64, ?I6:Int):MInt => _)
"SF" |-> (mi(1, ?I7:Int):MInt => _)
"PF" |-> (mi(1, ?I8:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:addq_r64_r64
instr:addq %rcx, %rbx
maybe read:{ %rcx %rbx }
must read:{ %rcx %rbx }
maybe write:{ %rbx %cf %pf %af %zf %sf %of }
must write:{ %rbx %cf %pf %af %zf %sf %of }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:orq %rbx, %rbx   #  1     0    3      OPC=orq_r64_r64
circuit:adcq %rcx, %rbx  #  2     0x3  3      OPC=adcq_r64_r64
*/
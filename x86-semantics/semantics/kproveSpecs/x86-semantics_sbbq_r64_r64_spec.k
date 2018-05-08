module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( notq %rcx , .Typedoperands ) ~>
execinstr ( cmc  .Typedoperands ) ~>
execinstr ( adcq %rcx, %rbx , .Typedoperands ) ~>
execinstr ( cmc  .Typedoperands ) ~>
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
"SF" |-> (mi(1, ?I7:Int):MInt => _)
"ZF" |-> (mi(1, ?I8:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:sbbq_r64_r64
instr:sbbq %rcx, %rbx
maybe read:{ %rcx %rbx %cf }
must read:{ %rcx %rbx %cf }
maybe write:{ %rbx %cf %pf %af %zf %sf %of }
must write:{ %rbx %cf %pf %af %zf %sf %of }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:notq %rcx        #  1     0    3      OPC=notq_r64
circuit:cmc              #  2     0x3  1      OPC=cmc
circuit:adcq %rcx, %rbx  #  3     0x4  3      OPC=adcq_r64_r64
circuit:cmc              #  4     0x7  1      OPC=cmc
*/
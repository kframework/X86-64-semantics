module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( salq %cl, %rbx , .Typedoperands ) ~>
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
"PF" |-> (mi(1, ?I2:Int):MInt => _)
"OF" |-> (mi(1, ?I3:Int):MInt => _)
"RCX" |-> (mi(64, ?I4:Int):MInt => _)
"RBX" |-> (mi(64, ?I5:Int):MInt => _)
"SF" |-> (mi(1, ?I6:Int):MInt => _)
"CF" |-> (mi(1, ?I7:Int):MInt => _)
"ZF" |-> (mi(1, ?I8:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:shlq_r64_cl
instr:shlq %cl, %rbx
maybe read:{ %cl %rbx }
must read:{ %cl %rbx }
maybe write:{ %rbx %cf %pf %zf %sf %of }
must write:{ %rbx }
maybe undef:{ %cf %af %of }
must undef:{ }
required flags:{ }

circuit:salq %cl, %rbx  #  1     0    3      OPC=salq_r64_cl
*/
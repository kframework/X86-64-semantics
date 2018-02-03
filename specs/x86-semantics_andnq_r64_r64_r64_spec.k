module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( orq %rcx, %rdx , .Typedoperands ) ~>
execinstr ( xorq %rcx, %rdx , .Typedoperands ) ~>
execinstr ( movq %rdx, %rbx , .Typedoperands ) ~>
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
"RDX" |-> (mi(64, ?I2:Int):MInt => _)
"PF" |-> (mi(1, ?I3:Int):MInt => _)
"AF" |-> (mi(1, ?I4:Int):MInt => _)
"ZF" |-> (mi(1, ?I5:Int):MInt => _)
"CF" |-> (mi(1, ?I6:Int):MInt => _)
"SF" |-> (mi(1, ?I7:Int):MInt => _)
"RBX" |-> (mi(64, ?I8:Int):MInt => _)
"RCX" |-> (mi(64, ?I9:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:andnq_r64_r64_r64
instr:andnq %rdx, %rcx, %rbx
maybe read:{ %rcx %rdx }
must read:{ %rcx %rdx }
maybe write:{ %rbx %cf %zf %sf %of }
must write:{ %rbx %cf %zf %sf %of }
maybe undef:{ %pf %af }
must undef:{ %pf %af }
required flags:{ bmi1 }

circuit:orq %rcx, %rdx   #  1     0    3      OPC=orq_r64_r64
circuit:xorq %rcx, %rdx  #  2     0x3  3      OPC=xorq_r64_r64
circuit:movq %rdx, %rbx  #  3     0x6  3      OPC=movq_r64_r64
*/
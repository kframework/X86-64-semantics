module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( movslq %ebx, %rbx , .Typedoperands ) ~>
execinstr ( sarq $0x1, %rbx , .Typedoperands ) ~>
execinstr ( movl %ebx, %ebx , .Typedoperands ) ~>
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
"SF" |-> (mi(1, ?I6:Int):MInt => _)
"ZF" |-> (mi(1, ?I7:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:sarl_r32_one
instr:sarl $0x1, %ebx
maybe read:{ %ebx }
must read:{ %ebx }
maybe write:{ %rbx %cf %pf %zf %sf %of }
must write:{ %rbx %cf %pf %zf %sf %of }
maybe undef:{ %af }
must undef:{ %af }
required flags:{ }

circuit:movslq %ebx, %rbx  #  1     0    3      OPC=movslq_r64_r32
circuit:sarq $0x1, %rbx    #  2     0x3  3      OPC=sarq_r64_one
circuit:movl %ebx, %ebx    #  3     0x6  2      OPC=movl_r32_r32
*/
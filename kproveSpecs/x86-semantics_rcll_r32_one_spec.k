module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( movslq %ebx, %rbx , .Typedoperands ) ~>
execinstr ( adcl %ebx, %ebx , .Typedoperands ) ~>
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
"OF" |-> (mi(1, ?I2:Int):MInt => _)
"PF" |-> (mi(1, 0):MInt => _)
"RBX" |-> (mi(64, ?I3:Int):MInt => _)
"SF" |-> (mi(1, 0):MInt => _)
"ZF" |-> (mi(1, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:rcll_r32_one
instr:rcll $0x1, %ebx
maybe read:{ %ebx %cf }
must read:{ %ebx %cf }
maybe write:{ %rbx %cf %of }
must write:{ %rbx %cf %of }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:movslq %ebx, %rbx  #  1     0    3      OPC=movslq_r64_r32
circuit:adcl %ebx, %ebx    #  2     0x3  2      OPC=adcl_r32_r32
*/
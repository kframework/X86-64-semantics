module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( setpo %dh , .Typedoperands ) ~>
execinstr ( salb $0x1, %dh , .Typedoperands ) ~>
execinstr ( cmovnaq %rcx, %rbx , .Typedoperands ) ~>
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
"CF" |-> (mi(1, 0):MInt => _)
"OF" |-> (mi(1, 0):MInt => _)
"PF" |-> (mi(1, ?I1:Int):MInt => _)
"RBX" |-> (mi(64, ?I2:Int):MInt => _)
"RCX" |-> (mi(64, ?I3:Int):MInt => _)
"RDX" |-> (mi(64, 0):MInt => _)
"SF" |-> (mi(1, 0):MInt => _)
"ZF" |-> (mi(1, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:cmovpeq_r64_r64
instr:cmovpeq %rcx, %rbx
maybe read:{ %rcx %pf }
must read:{ %rcx %pf }
maybe write:{ %rbx }
must write:{ }
maybe undef:{ }
must undef:{ }
required flags:{ cmov }

circuit:setpo %dh           #  1     0    3      OPC=setpo_rh
circuit:salb $0x1, %dh      #  2     0x3  2      OPC=salb_rh_one
circuit:cmovnaq %rcx, %rbx  #  3     0x5  4      OPC=cmovnaq_r64_r64
*/
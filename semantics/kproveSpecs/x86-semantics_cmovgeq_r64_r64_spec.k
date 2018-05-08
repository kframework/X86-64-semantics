module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( setnge %dh , .Typedoperands ) ~>
execinstr ( negb %dh , .Typedoperands ) ~>
execinstr ( cmovaw %cx, %cx , .Typedoperands ) ~>
execinstr ( cmovaeq %rcx, %rbx , .Typedoperands ) ~>
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
"OF" |-> (mi(1, ?I1:Int):MInt => _)
"PF" |-> (mi(1, 0):MInt => _)
"RBX" |-> (mi(64, ?I2:Int):MInt => _)
"RCX" |-> (mi(64, ?I3:Int):MInt => _)
"RDX" |-> (mi(64, 0):MInt => _)
"SF" |-> (mi(1, ?I4:Int):MInt => _)
"ZF" |-> (mi(1, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:cmovgeq_r64_r64
instr:cmovgeq %rcx, %rbx
maybe read:{ %rcx %sf %of }
must read:{ %rcx %sf %of }
maybe write:{ %rbx }
must write:{ }
maybe undef:{ }
must undef:{ }
required flags:{ cmov }

circuit:setnge %dh          #  1     0    3      OPC=setnge_rh
circuit:negb %dh            #  2     0x3  2      OPC=negb_rh
circuit:cmovaw %cx, %cx     #  3     0x5  4      OPC=cmovaw_r16_r16
circuit:cmovaeq %rcx, %rbx  #  4     0x9  4      OPC=cmovaeq_r64_r64
*/
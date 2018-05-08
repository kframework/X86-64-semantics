module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( movq %rcx, %rbx , .Typedoperands ) ~>
execinstr ( xaddb %cl, %dl , .Typedoperands ) ~>
execinstr ( xchgw %bx, %bx , .Typedoperands ) ~>
execinstr ( shrq %cl, %rbx , .Typedoperands ) ~>
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
"PF" |-> (mi(1, 0):MInt => _)
"RBX" |-> (mi(64, ?I1:Int):MInt => _)
"RCX" |-> (mi(64, ?I2:Int):MInt => _)
"RDX" |-> (mi(64, ?I3:Int):MInt => _)
"SF" |-> (mi(1, 0):MInt => _)
"ZF" |-> (mi(1, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:shrxq_r64_r64_r64
instr:shrxq %rdx, %rcx, %rbx
maybe read:{ %rcx %rdx }
must read:{ %rcx %rdx }
maybe write:{ %rbx }
must write:{ %rbx }
maybe undef:{ }
must undef:{ }
required flags:{ bmi2 }

circuit:movq %rcx, %rbx  #  1     0    3      OPC=movq_r64_r64
circuit:xaddb %cl, %dl   #  2     0x3  3      OPC=xaddb_r8_r8
circuit:xchgw %bx, %bx   #  3     0x6  3      OPC=xchgw_r16_r16
circuit:shrq %cl, %rbx   #  4     0x9  3      OPC=shrq_r64_cl
*/
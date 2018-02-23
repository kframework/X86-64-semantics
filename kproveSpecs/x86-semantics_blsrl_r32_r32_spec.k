module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( movl %ecx, %ebx , .Typedoperands ) ~>
execinstr ( decq %rbx , .Typedoperands ) ~>
execinstr ( andl %ecx, %ebx , .Typedoperands ) ~>
execinstr ( blsmskl %ecx, %ecx , .Typedoperands ) ~>
setSZPForRegister( %ebx ) ~>
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
opcode:blsrl_r32_r32
instr:blsrl %ecx, %ebx
maybe read:{ %ecx }
must read:{ %ecx }
maybe write:{ %rbx %cf %zf %sf %of }
must write:{ %rbx %cf %zf %sf %of }
maybe undef:{ %pf %af }
must undef:{ %pf %af }
required flags:{ bmi1 }

circuit:movl %ecx, %ebx         #  1     0     2      OPC=movl_r32_r32
circuit:decq %rbx               #  2     0x2   3      OPC=decq_r64
circuit:andl %ecx, %ebx         #  3     0x5   2      OPC=andl_r32_r32
circuit:blsmskl %ecx, %ecx      #  4     0x7   5      OPC=blsmskl_r32_r32
circuit:callq .set_szp_for_ebx  #  5     0xc   5      OPC=callq_label
*/
module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( xchgl %ebx, %ecx , .Typedoperands ) ~>
setFlag( mi(1, 0), "CF") ~>
execinstr ( adcl %ecx, %ebx , .Typedoperands ) ~>
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
opcode:xaddl_r32_r32
instr:xaddl %ecx, %ebx
maybe read:{ %ecx %ebx }
must read:{ %ecx %ebx }
maybe write:{ %rcx %rbx %cf %pf %af %zf %sf %of }
must write:{ %rcx %rbx %cf %pf %af %zf %sf %of }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:xchgl %ebx, %ecx  #  1     0    2      OPC=xchgl_r32_r32
circuit:callq .clear_cf   #  2     0x2  5      OPC=callq_label
circuit:adcl %ecx, %ebx   #  3     0x7  2      OPC=adcl_r32_r32
*/
module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( notl %ecx , .Typedoperands ) ~>
execinstr ( cmc  .Typedoperands ) ~>
execinstr ( adcl %ecx, %ebx , .Typedoperands ) ~>
setSZPForRegister( %ebx ) ~>
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
opcode:sbbl_r32_r32
instr:sbbl %ecx, %ebx
maybe read:{ %ecx %ebx %cf }
must read:{ %ecx %ebx %cf }
maybe write:{ %rbx %cf %pf %af %zf %sf %of }
must write:{ %rbx %cf %pf %af %zf %sf %of }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:notl %ecx               #  1     0    2      OPC=notl_r32
circuit:cmc                     #  2     0x2  1      OPC=cmc
circuit:adcl %ecx, %ebx         #  3     0x3  2      OPC=adcl_r32_r32
circuit:callq .set_szp_for_ebx  #  4     0x5  5      OPC=callq_label
circuit:cmc                     #  5     0xa  1      OPC=cmc
*/
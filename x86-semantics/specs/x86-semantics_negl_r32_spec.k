module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( notl %ebx , .Typedoperands ) ~>
execinstr ( xorl %eax, %eax , .Typedoperands ) ~>
execinstr ( setnb %al , .Typedoperands ) ~>
execinstr ( addl %eax, %ebx , .Typedoperands ) ~>
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
"RAX" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, ?I5:Int):MInt => _)
"SF" |-> (mi(1, ?I6:Int):MInt => _)
"ZF" |-> (mi(1, ?I7:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:negl_r32
instr:negl %ebx
maybe read:{ %ebx }
must read:{ %ebx }
maybe write:{ %rbx %cf %pf %af %zf %sf %of }
must write:{ %rbx %cf %pf %af %zf %sf %of }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:notl %ebx        #  1     0    2      OPC=notl_r32
circuit:xorl %eax, %eax  #  2     0x2  2      OPC=xorl_r32_r32
circuit:setnb %al        #  3     0x4  3      OPC=setnb_r8
circuit:addl %eax, %ebx  #  4     0x7  2      OPC=addl_r32_r32
circuit:cmc              #  5     0x9  1      OPC=cmc
*/
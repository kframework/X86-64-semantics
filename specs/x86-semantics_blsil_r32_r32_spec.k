module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( blsrl %ecx, %ebx , .Typedoperands ) ~>
execinstr ( xorl %ecx, %ebx , .Typedoperands ) ~>
execinstr ( movq $0xfffffffffffffff9, %rcx , .Typedoperands ) ~>
execinstr ( cmovnaq %rbx, %rcx , .Typedoperands ) ~>
execinstr ( rorb $0x1, %cl , .Typedoperands ) ~>
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
opcode:blsil_r32_r32
instr:blsil %ecx, %ebx
maybe read:{ %ecx %ebx }
must read:{ %ecx %ebx }
maybe write:{ %rbx %cf %zf %sf %of }
must write:{ %rbx %cf %zf %sf %of }
maybe undef:{ %pf %af }
must undef:{ %pf %af }
required flags:{ bmi1 }

circuit:blsrl %ecx, %ebx                #  1     0     5      OPC=blsrl_r32_r32
circuit:xorl %ecx, %ebx                 #  2     0x5   2      OPC=xorl_r32_r32
circuit:movq $0xfffffffffffffff9, %rcx  #  3     0x7   10     OPC=movq_r64_imm64
circuit:cmovnaq %rbx, %rcx              #  4     0x11  4      OPC=cmovnaq_r64_r64
circuit:rorb $0x1, %cl                  #  5     0x15  2      OPC=rorb_r8_one
*/
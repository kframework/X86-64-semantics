module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( movq $0xffffffffffffffff, %rcx , .Typedoperands ) ~>
execinstr ( xchgl %ebx, %ebx , .Typedoperands ) ~>
execinstr ( xaddl %ecx, %ebx , .Typedoperands ) ~>
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
"CF" |-> (mi(1, 0):MInt => _)
"OF" |-> (mi(1, ?I2:Int):MInt => _)
"PF" |-> (mi(1, ?I3:Int):MInt => _)
"RBX" |-> (mi(64, ?I4:Int):MInt => _)
"RCX" |-> (mi(64, 0):MInt => _)
"SF" |-> (mi(1, ?I5:Int):MInt => _)
"ZF" |-> (mi(1, ?I6:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:decl_r32
instr:decl %ebx
maybe read:{ %ebx }
must read:{ %ebx }
maybe write:{ %rbx %pf %af %zf %sf %of }
must write:{ %rbx %pf %af %zf %sf %of }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:movq $0xffffffffffffffff, %rcx  #  1     0    10     OPC=movq_r64_imm64
circuit:xchgl %ebx, %ebx                #  2     0xa  2      OPC=xchgl_r32_r32
circuit:xaddl %ecx, %ebx                #  3     0xc  3      OPC=xaddl_r32_r32
*/
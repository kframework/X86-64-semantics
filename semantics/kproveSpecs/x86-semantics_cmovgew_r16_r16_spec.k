module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rbx, "SPAD1") ~>
execinstr ( setge %bpl , .Typedoperands ) ~>
execinstr ( movzbl %bpl, %r8d , .Typedoperands ) ~>
execinstr ( popcntq %r8, %rax , .Typedoperands ) ~>
execinstr ( cmovnew %cx, %bx , .Typedoperands ) ~>
restoreRegister("SPAD1", 16, 48, 0, 0,
          0, 16, %rbx) ~>
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
"SPAD1" |->    (mi(256, 0) => _)
"AF" |-> (mi(1, 0):MInt => _)
"CF" |-> (mi(1, 0):MInt => _)
"OF" |-> (mi(1, ?I1:Int):MInt => _)
"PF" |-> (mi(1, 0):MInt => _)
"R8" |-> (mi(64, 0):MInt => _)
"RAX" |-> (mi(64, 0):MInt => _)
"RBP" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, ?I2:Int):MInt => _)
"RCX" |-> (mi(64, ?I3:Int):MInt => _)
"SF" |-> (mi(1, ?I4:Int):MInt => _)
"ZF" |-> (mi(1, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:cmovgew_r16_r16
instr:cmovgew %cx, %bx
maybe read:{ %cx %sf %of }
must read:{ %cx %sf %of }
maybe write:{ %bx }
must write:{ }
maybe undef:{ }
must undef:{ }
required flags:{ cmov }

circuit:setge %bpl         #  1     0     4      OPC=setge_r8
circuit:movzbl %bpl, %r8d  #  2     0x4   4      OPC=movzbl_r32_r8
circuit:popcntq %r8, %rax  #  3     0x8   5      OPC=popcntq_r64_r64
circuit:cmovnew %cx, %bx   #  4     0xd   4      OPC=cmovnew_r16_r16
*/
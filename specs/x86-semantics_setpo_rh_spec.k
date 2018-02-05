module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rax, "SPAD1") ~>
execinstr ( setpo %r14b , .Typedoperands ) ~>
execinstr ( movzbl %r14b, %ecx , .Typedoperands ) ~>
execinstr ( movq $0xfffffffffffffff0, %rax , .Typedoperands ) ~>
execinstr ( xaddb %ah, %cl , .Typedoperands ) ~>
restoreRegister("SPAD1", 0, 8, 16, 48, 
          8, 8, %rax) ~>
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
"OF" |-> (mi(1, 0):MInt => _)
"PF" |-> (mi(1, ?I1:Int):MInt => _)
"R14" |-> (mi(64, 0):MInt => _)
"RAX" |-> (mi(64, ?I2:Int):MInt => _)
"RCX" |-> (mi(64, 0):MInt => _)
"SF" |-> (mi(1, 0):MInt => _)
"ZF" |-> (mi(1, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:setpo_rh
instr:setpo %ah
maybe read:{ %pf }
must read:{ %pf }
maybe write:{ %ah }
must write:{ %ah }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:setpo %r14b                     #  1     0     4      OPC=setpo_r8
circuit:movzbl %r14b, %ecx              #  2     0x4   4      OPC=movzbl_r32_r8
circuit:movq $0xfffffffffffffff0, %rax  #  3     0x8   10     OPC=movq_r64_imm64
circuit:xaddb %ah, %cl                  #  4     0x12  3      OPC=xaddb_r8_rh
*/
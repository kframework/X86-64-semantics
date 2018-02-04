module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rbx, "SPAD1") ~>
saveRegister(%rax, "SPAD2") ~>
execinstr ( movb %bl, %ch , .Typedoperands ) ~>
execinstr ( movb %ch, %cl , .Typedoperands ) ~>
execinstr ( movzbl %ah, %edx , .Typedoperands ) ~>
execinstr ( xaddb %bl, %dl , .Typedoperands ) ~>
execinstr ( movb %cl, %ah , .Typedoperands ) ~>
restoreRegister("SPAD1", 8, 56, 0, 0, 
          0, 8, %rbx) ~>
restoreRegister("SPAD2", 0, 8, 16, 48, 
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
"SPAD2" |->    (mi(256, 0) => _)
"AF" |-> (mi(1, 0):MInt => _)
"CF" |-> (mi(1, 0):MInt => _)
"OF" |-> (mi(1, 0):MInt => _)
"PF" |-> (mi(1, 0):MInt => _)
"RAX" |-> (mi(64, ?I1:Int):MInt => _)
"RBX" |-> (mi(64, ?I2:Int):MInt => _)
"RCX" |-> (mi(64, 0):MInt => _)
"RDX" |-> (mi(64, 0):MInt => _)
"SF" |-> (mi(1, 0):MInt => _)
"ZF" |-> (mi(1, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:xchgb_r8_rh
instr:xchgb %ah, %bl
maybe read:{ %ah %bl }
must read:{ %ah %bl }
maybe write:{ %ah %bl }
must write:{ %ah %bl }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:movb %bl, %ch     #  1     0    2      OPC=movb_rh_r8
circuit:movb %ch, %cl     #  2     0x2  2      OPC=movb_r8_rh
circuit:movzbl %ah, %edx  #  3     0x4  3      OPC=movzbl_r32_rh
circuit:xaddb %bl, %dl    #  4     0x7  3      OPC=xaddb_r8_r8
circuit:movb %cl, %ah     #  5     0xa  2      OPC=movb_rh_r8
*/
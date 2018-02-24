module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rax, "SPAD1") ~>
saveRegister(%rbx, "SPAD2") ~>
execinstr ( movzbl %ah, %eax , .Typedoperands ) ~>
execinstr ( addb %bh, %ah , .Typedoperands ) ~>
execinstr ( xaddb %bh, %al , .Typedoperands ) ~>
execinstr ( xchgb %ah, %al , .Typedoperands ) ~>
restoreRegister("SPAD1", 0, 8, 16, 48,
          8, 8, %rax) ~>
restoreRegister("SPAD2", 0, 8, 16, 48,
          8, 8, %rbx) ~>
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
"AF" |-> (mi(1, ?I1:Int):MInt => _)
"CF" |-> (mi(1, ?I2:Int):MInt => _)
"OF" |-> (mi(1, ?I3:Int):MInt => _)
"PF" |-> (mi(1, ?I4:Int):MInt => _)
"RAX" |-> (mi(64, ?I5:Int):MInt => _)
"RBX" |-> (mi(64, ?I6:Int):MInt => _)
"SF" |-> (mi(1, ?I7:Int):MInt => _)
"ZF" |-> (mi(1, ?I8:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:xaddb_rh_rh
instr:xaddb %bh, %ah
maybe read:{ %ah %bh }
must read:{ %ah %bh }
maybe write:{ %ah %bh %cf %pf %af %zf %sf %of }
must write:{ %ah %bh %cf %pf %af %zf %sf %of }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:movzbl %ah, %eax  #  1     0    3      OPC=movzbl_r32_rh
circuit:addb %bh, %ah     #  2     0x3  2      OPC=addb_rh_rh
circuit:xaddb %bh, %al    #  3     0x5  3      OPC=xaddb_r8_rh
circuit:xchgb %ah, %al    #  4     0x8  2      OPC=xchgb_r8_rh
*/
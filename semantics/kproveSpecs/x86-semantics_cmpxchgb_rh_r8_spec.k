module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rax, "SPAD1") ~>
saveRegister(%rbx, "SPAD2") ~>
execinstr ( movb %cl, %ah , .Typedoperands ) ~>
execinstr ( cmpxchgb %ah, %bh , .Typedoperands ) ~>
restoreRegister("SPAD1", 8, 56, 0, 0,
          0, 8, %rax) ~>
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
"RCX" |-> (mi(64, ?I7:Int):MInt => _)
"SF" |-> (mi(1, ?I8:Int):MInt => _)
"ZF" |-> (mi(1, ?I9:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:cmpxchgb_rh_r8
instr:cmpxchgb %cl, %bh
maybe read:{ %al %cl %bh }
must read:{ %al %cl %bh }
maybe write:{ %al %bh %cf %pf %af %zf %sf %of }
must write:{ %cf %pf %af %zf %sf %of }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:movb %cl, %ah      #  1     0    2      OPC=movb_rh_r8
circuit:cmpxchgb %ah, %bh  #  2     0x2  3      OPC=cmpxchgb_rh_rh
*/
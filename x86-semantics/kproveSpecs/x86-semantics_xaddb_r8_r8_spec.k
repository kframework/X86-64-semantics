module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rbx, "SPAD1") ~>
saveRegister(%rcx, "SPAD2") ~>
setFlag( mi(1, 0), "CF") ~>
execinstr ( movsbl %cl, %r13d , .Typedoperands ) ~>
execinstr ( movsbl %bl, %r15d , .Typedoperands ) ~>
execinstr ( movsbq %r15b, %rcx , .Typedoperands ) ~>
execinstr ( adcb %cl, %r13b , .Typedoperands ) ~>
execinstr ( movslq %r13d, %rbx , .Typedoperands ) ~>
restoreRegister("SPAD1", 8, 56, 0, 0,
          0, 8, %rbx) ~>
restoreRegister("SPAD2", 8, 56, 0, 0,
          0, 8, %rcx) ~>
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
"R13" |-> (mi(64, 0):MInt => _)
"R15" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, ?I5:Int):MInt => _)
"RCX" |-> (mi(64, ?I6:Int):MInt => _)
"SF" |-> (mi(1, ?I7:Int):MInt => _)
"ZF" |-> (mi(1, ?I8:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:xaddb_r8_r8
instr:xaddb %cl, %bl
maybe read:{ %cl %bl }
must read:{ %cl %bl }
maybe write:{ %cl %bl %cf %pf %af %zf %sf %of }
must write:{ %cl %bl %cf %pf %af %zf %sf %of }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:callq .clear_cf     #  1     0     5      OPC=callq_label
circuit:movsbl %cl, %r13d   #  2     0x5   4      OPC=movsbl_r32_r8
circuit:movsbl %bl, %r15d   #  3     0x9   4      OPC=movsbl_r32_r8
circuit:movsbq %r15b, %rcx  #  4     0xd   4      OPC=movsbq_r64_r8
circuit:adcb %cl, %r13b     #  5     0x11  3      OPC=adcb_r8_r8
circuit:movslq %r13d, %rbx  #  6     0x14  3      OPC=movslq_r64_r32
*/
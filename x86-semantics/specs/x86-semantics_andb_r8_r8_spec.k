module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rbx, "SPAD1") ~>
execinstr ( movsbq %bl, %r12 , .Typedoperands ) ~>
execinstr ( movsbl %cl, %ebx , .Typedoperands ) ~>
execinstr ( andl %r12d, %ebx , .Typedoperands ) ~>
restoreRegister("SPAD1", 8, 56, 0, 0,
          0, 8, %rbx) ~>
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
"AF" |-> (mi(1, ?I1:Int):MInt => _)
"CF" |-> (mi(1, ?I2:Int):MInt => _)
"OF" |-> (mi(1, ?I3:Int):MInt => _)
"PF" |-> (mi(1, ?I4:Int):MInt => _)
"R12" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, ?I5:Int):MInt => _)
"RCX" |-> (mi(64, ?I6:Int):MInt => _)
"SF" |-> (mi(1, ?I7:Int):MInt => _)
"ZF" |-> (mi(1, ?I8:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:andb_r8_r8
instr:andb %cl, %bl
maybe read:{ %cl %bl }
must read:{ %cl %bl }
maybe write:{ %bl %cf %pf %zf %sf %of }
must write:{ %bl %cf %pf %zf %sf %of }
maybe undef:{ %af }
must undef:{ %af }
required flags:{ }

circuit:movsbq %bl, %r12  #  1     0    4      OPC=movsbq_r64_r8
circuit:movsbl %cl, %ebx  #  2     0x4  3      OPC=movsbl_r32_r8
circuit:andl %r12d, %ebx  #  3     0x7  3      OPC=andl_r32_r32
*/
module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rbx, "SPAD1") ~>
execinstr ( movzbl %bl, %r14d , .Typedoperands ) ~>
execinstr ( negw %r14w , .Typedoperands ) ~>
execinstr ( xaddb %bl, %r14b , .Typedoperands ) ~>
setSZPForRegister( %bl ) ~>
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
"R14" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, ?I5:Int):MInt => _)
"SF" |-> (mi(1, ?I6:Int):MInt => _)
"ZF" |-> (mi(1, ?I7:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:negb_r8
instr:negb %bl
maybe read:{ %bl }
must read:{ %bl }
maybe write:{ %bl %cf %pf %af %zf %sf %of }
must write:{ %bl %cf %pf %af %zf %sf %of }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:movzbl %bl, %r14d      #  1     0     4      OPC=movzbl_r32_r8
circuit:negw %r14w             #  2     0x4   4      OPC=negw_r16
circuit:xaddb %bl, %r14b       #  3     0x8   4      OPC=xaddb_r8_r8
circuit:callq .set_szp_for_bl  #  4     0xc   5      OPC=callq_label
*/
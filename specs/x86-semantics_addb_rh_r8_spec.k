module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rax, "SPAD1") ~>
execinstr ( xaddb %ah, %bl , .Typedoperands ) ~>
setSZPForRegister( %bl ) ~>
execinstr ( movb %bl, %ah , .Typedoperands ) ~>
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
opcode:addb_rh_r8
instr:addb %bl, %ah
maybe read:{ %ah %bl }
must read:{ %ah %bl }
maybe write:{ %ah %cf %pf %af %zf %sf %of }
must write:{ %ah %cf %pf %af %zf %sf %of }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:xaddb %ah, %bl         #  1     0    3      OPC=xaddb_r8_rh
circuit:callq .set_szp_for_bl  #  2     0x3  5      OPC=callq_label
circuit:movb %bl, %ah          #  3     0x8  2      OPC=movb_rh_r8
*/
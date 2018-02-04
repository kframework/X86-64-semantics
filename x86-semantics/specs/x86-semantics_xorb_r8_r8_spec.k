module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rbx, "SPAD1") ~>
execinstr ( movb %cl, %bh , .Typedoperands ) ~>
execinstr ( xorb %bh, %bl , .Typedoperands ) ~>
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
"RBX" |-> (mi(64, ?I5:Int):MInt => _)
"RCX" |-> (mi(64, ?I6:Int):MInt => _)
"SF" |-> (mi(1, ?I7:Int):MInt => _)
"ZF" |-> (mi(1, ?I8:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:xorb_r8_r8
instr:xorb %cl, %bl
maybe read:{ %cl %bl }
must read:{ %cl %bl }
maybe write:{ %bl %cf %pf %zf %sf %of }
must write:{ %bl %cf %pf %zf %sf %of }
maybe undef:{ %af }
must undef:{ %af }
required flags:{ }

circuit:movb %cl, %bh          #  1     0    2      OPC=movb_rh_r8
circuit:xorb %bh, %bl          #  2     0x2  2      OPC=xorb_r8_rh
circuit:callq .set_szp_for_bl  #  3     0x4  5      OPC=callq_label
*/
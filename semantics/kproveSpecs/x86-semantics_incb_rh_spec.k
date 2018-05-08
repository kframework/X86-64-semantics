module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rax, "SPAD1") ~>
execinstr ( xorb %al, %al , .Typedoperands ) ~>
setFlag( mi(1, 1), "CF") ~>
execinstr ( adcb %al, %ah , .Typedoperands ) ~>
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
"CF" |-> (mi(1, 0):MInt => _)
"OF" |-> (mi(1, ?I2:Int):MInt => _)
"PF" |-> (mi(1, ?I3:Int):MInt => _)
"RAX" |-> (mi(64, ?I4:Int):MInt => _)
"SF" |-> (mi(1, ?I5:Int):MInt => _)
"ZF" |-> (mi(1, ?I6:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:incb_rh
instr:incb %ah
maybe read:{ %ah }
must read:{ %ah }
maybe write:{ %ah %pf %af %zf %sf %of }
must write:{ %ah %pf %af %zf %sf %of }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:xorb %al, %al  #  1     0    2      OPC=xorb_r8_r8
circuit:callq .set_cf  #  2     0x2  5      OPC=callq_label
circuit:adcb %al, %ah  #  3     0x7  2      OPC=adcb_rh_r8
*/
module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rax, "SPAD1") ~>
execinstr ( cmc  .Typedoperands ) ~>
execinstr ( notb %bh , .Typedoperands ) ~>
execinstr ( adcb %bh, %ah , .Typedoperands ) ~>
execinstr ( cmc  .Typedoperands ) ~>
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
opcode:sbbb_rh_rh
instr:sbbb %bh, %ah
maybe read:{ %ah %bh %cf }
must read:{ %ah %bh %cf }
maybe write:{ %ah %cf %pf %af %zf %sf %of }
must write:{ %ah %cf %pf %af %zf %sf %of }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:cmc            #  1     0    1      OPC=cmc
circuit:notb %bh       #  2     0x1  2      OPC=notb_rh
circuit:adcb %bh, %ah  #  3     0x3  2      OPC=adcb_rh_rh
circuit:cmc            #  4     0x5  1      OPC=cmc
*/
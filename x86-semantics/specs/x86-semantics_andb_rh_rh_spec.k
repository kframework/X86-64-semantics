module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rax, "SPAD1") ~>
execinstr ( movsbw %ah, %dx , .Typedoperands ) ~>
execinstr ( andb %bh, %dl , .Typedoperands ) ~>
execinstr ( xchgb %ah, %dl , .Typedoperands ) ~>
execinstr ( testb %bh, %dl , .Typedoperands ) ~>
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
"RDX" |-> (mi(64, 0):MInt => _)
"SF" |-> (mi(1, ?I7:Int):MInt => _)
"ZF" |-> (mi(1, ?I8:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:andb_rh_rh
instr:andb %bh, %ah
maybe read:{ %ah %bh }
must read:{ %ah %bh }
maybe write:{ %ah %cf %pf %zf %sf %of }
must write:{ %ah %cf %pf %zf %sf %of }
maybe undef:{ %af }
must undef:{ %af }
required flags:{ }

circuit:movsbw %ah, %dx  #  1     0    4      OPC=movsbw_r16_rh
circuit:andb %bh, %dl    #  2     0x4  2      OPC=andb_r8_rh
circuit:xchgb %ah, %dl   #  3     0x6  2      OPC=xchgb_r8_rh
circuit:testb %bh, %dl   #  4     0x8  2      OPC=testb_r8_rh
*/
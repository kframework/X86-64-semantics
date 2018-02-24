module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rbx, "SPAD1") ~>
saveRegister(%rax, "SPAD2") ~>
execinstr ( cmpb %bh, %al , .Typedoperands ) ~>
execinstr ( setnle %cl , .Typedoperands ) ~>
execinstr ( movb %bh, %al , .Typedoperands ) ~>
execinstr ( cmovew %cx, %bx , .Typedoperands ) ~>
restoreRegister("SPAD1", 0, 8, 16, 48,
          8, 8, %rbx) ~>
restoreRegister("SPAD2", 8, 56, 0, 0,
          0, 8, %rax) ~>
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
opcode:cmpxchgb_rh_rh
instr:cmpxchgb %ch, %bh
maybe read:{ %al %ch %bh }
must read:{ %al %ch %bh }
maybe write:{ %al %bh %cf %pf %af %zf %sf %of }
must write:{ %cf %pf %af %zf %sf %of }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:cmpb %bh, %al    #  1     0    2      OPC=cmpb_r8_rh
circuit:setnle %cl       #  2     0x2  3      OPC=setnle_r8
circuit:movb %bh, %al    #  3     0x5  2      OPC=movb_r8_rh
circuit:cmovew %cx, %bx  #  4     0x7  4      OPC=cmovew_r16_r16
*/
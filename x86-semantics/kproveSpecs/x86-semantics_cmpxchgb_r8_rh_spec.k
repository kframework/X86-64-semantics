module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rcx, "SPAD1") ~>
saveRegister(%rax, "SPAD2") ~>
execinstr ( movzbw %bh, %si , .Typedoperands ) ~>
execinstr ( cmpxchgb %sil, %cl , .Typedoperands ) ~>
restoreRegister("SPAD1", 8, 56, 0, 0,
          0, 8, %rcx) ~>
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
"RSI" |-> (mi(64, 0):MInt => _)
"SF" |-> (mi(1, ?I8:Int):MInt => _)
"ZF" |-> (mi(1, ?I9:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:cmpxchgb_r8_rh
instr:cmpxchgb %bh, %cl
maybe read:{ %al %cl %bh }
must read:{ %al %cl %bh }
maybe write:{ %al %cl %cf %pf %af %zf %sf %of }
must write:{ %cf %pf %af %zf %sf %of }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:movzbw %bh, %si     #  1     0    4      OPC=movzbw_r16_rh
circuit:cmpxchgb %sil, %cl  #  2     0x4  4      OPC=cmpxchgb_r8_r8
*/
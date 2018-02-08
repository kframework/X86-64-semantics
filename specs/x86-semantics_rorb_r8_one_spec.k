module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rbx, "SPAD1") ~>
execinstr ( movb %bl, %bh , .Typedoperands ) ~>
execinstr ( sarw $0x1, %bx , .Typedoperands ) ~>
execinstr ( movsbl %bl, %eax , .Typedoperands ) ~>
execinstr ( salb $0x1, %al , .Typedoperands ) ~>
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
"AF" |-> (mi(1, 0):MInt => _)
"CF" |-> (mi(1, ?I1:Int):MInt => _)
"OF" |-> (mi(1, ?I2:Int):MInt => _)
"PF" |-> (mi(1, 0):MInt => _)
"RAX" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, ?I3:Int):MInt => _)
"SF" |-> (mi(1, 0):MInt => _)
"ZF" |-> (mi(1, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:rorb_r8_one
instr:rorb $0x1, %bl
maybe read:{ %bl }
must read:{ %bl }
maybe write:{ %bl %cf %of }
must write:{ %bl %cf %of }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:movb %bl, %bh     #  1     0    2      OPC=movb_rh_r8
circuit:sarw $0x1, %bx    #  2     0x2  3      OPC=sarw_r16_one
circuit:movsbl %bl, %eax  #  3     0x5  3      OPC=movsbl_r32_r8
circuit:salb $0x1, %al    #  4     0x8  2      OPC=salb_r8_one
*/
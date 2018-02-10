module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rbx, "SPAD1") ~>
execinstr ( xorq %rax, %rax , .Typedoperands ) ~>
execinstr ( setnp %ah , .Typedoperands ) ~>
execinstr ( setnz %bh , .Typedoperands ) ~>
execinstr ( addw %bx, %ax , .Typedoperands ) ~>
execinstr ( adcb %al, %al , .Typedoperands ) ~>
execinstr ( adcb %bl, %bl , .Typedoperands ) ~>
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
opcode:rolb_r8_one
instr:rolb $0x1, %bl
maybe read:{ %bl }
must read:{ %bl }
maybe write:{ %bl %cf %of }
must write:{ %bl %cf %of }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:xorq %rax, %rax  #  1     0     3      OPC=xorq_r64_r64
circuit:setnp %ah        #  2     0x3   3      OPC=setnp_rh
circuit:setnz %bh        #  3     0x6   3      OPC=setnz_rh
circuit:addw %bx, %ax    #  4     0x9   3      OPC=addw_r16_r16
circuit:adcb %al, %al    #  5     0xc   2      OPC=adcb_r8_r8
circuit:adcb %bl, %bl    #  6     0xe   2      OPC=adcb_r8_r8
*/
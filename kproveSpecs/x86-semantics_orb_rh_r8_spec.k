module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rax, "SPAD1") ~>
execinstr ( xorb %al, %al , .Typedoperands ) ~>
execinstr ( xchgb %ah, %bl , .Typedoperands ) ~>
execinstr ( adcb %ah, %al , .Typedoperands ) ~>
execinstr ( movb %bl, %bh , .Typedoperands ) ~>
execinstr ( orw %bx, %ax , .Typedoperands ) ~>
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
opcode:orb_rh_r8
instr:orb %bl, %ah
maybe read:{ %ah %bl }
must read:{ %ah %bl }
maybe write:{ %ah %cf %pf %zf %sf %of }
must write:{ %ah %cf %pf %zf %sf %of }
maybe undef:{ %af }
must undef:{ %af }
required flags:{ }

circuit:xorb %al, %al   #  1     0    2      OPC=xorb_r8_r8
circuit:xchgb %ah, %bl  #  2     0x2  2      OPC=xchgb_r8_rh
circuit:adcb %ah, %al   #  3     0x4  2      OPC=adcb_r8_rh
circuit:movb %bl, %bh   #  4     0x6  2      OPC=movb_rh_r8
circuit:orw %bx, %ax    #  5     0x8  3      OPC=orw_r16_r16
*/
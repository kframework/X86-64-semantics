module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rax, "SPAD1") ~>
setFlag( mi(1, 1), "SF") ~>
execinstr ( setns %al , .Typedoperands ) ~>
execinstr ( xaddb %ah, %al , .Typedoperands ) ~>
execinstr ( xaddb %ah, %al , .Typedoperands ) ~>
execinstr ( addw %ax, %ax , .Typedoperands ) ~>
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
"AF" |-> (mi(1, 0):MInt => _)
"CF" |-> (mi(1, ?I1:Int):MInt => _)
"OF" |-> (mi(1, ?I2:Int):MInt => _)
"PF" |-> (mi(1, 0):MInt => _)
"RAX" |-> (mi(64, ?I3:Int):MInt => _)
"SF" |-> (mi(1, 0):MInt => _)
"ZF" |-> (mi(1, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:rolb_rh_one
instr:rolb $0x1, %ah
maybe read:{ %ah }
must read:{ %ah }
maybe write:{ %ah %cf %of }
must write:{ %ah %cf %of }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:callq .set_sf   #  1     0     5      OPC=callq_label
circuit:setns %al       #  2     0x5   3      OPC=setns_r8
circuit:xaddb %ah, %al  #  3     0x8   3      OPC=xaddb_r8_rh
circuit:xaddb %ah, %al  #  4     0xb   3      OPC=xaddb_r8_rh
circuit:addw %ax, %ax   #  5     0xe   3      OPC=addw_r16_r16
*/
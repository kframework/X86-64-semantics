module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rcx, "SPAD1") ~>
saveRegister(%rbx, "SPAD2") ~>
execinstr ( movzbq %bl, %r8 , .Typedoperands ) ~>
execinstr ( movzbw %cl, %cx , .Typedoperands ) ~>
execinstr ( movb %ch, %bh , .Typedoperands ) ~>
execinstr ( xaddb %bl, %ch , .Typedoperands ) ~>
execinstr ( xaddw %bx, %cx , .Typedoperands ) ~>
execinstr ( xchgw %cx, %r8w , .Typedoperands ) ~>
restoreRegister("SPAD1", 8, 56, 0, 0, 
          0, 8, %rcx) ~>
restoreRegister("SPAD2", 8, 56, 0, 0, 
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
"SPAD2" |->    (mi(256, 0) => _)
"AF" |-> (mi(1, 0):MInt => _)
"CF" |-> (mi(1, 0):MInt => _)
"OF" |-> (mi(1, 0):MInt => _)
"PF" |-> (mi(1, 0):MInt => _)
"R8" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, ?I1:Int):MInt => _)
"RCX" |-> (mi(64, ?I2:Int):MInt => _)
"SF" |-> (mi(1, 0):MInt => _)
"ZF" |-> (mi(1, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:xchgb_r8_r8
instr:xchgb %cl, %bl
maybe read:{ %cl %bl }
must read:{ %cl %bl }
maybe write:{ %cl %bl }
must write:{ %cl %bl }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:movzbq %bl, %r8  #  1     0     4      OPC=movzbq_r64_r8
circuit:movzbw %cl, %cx  #  2     0x4   4      OPC=movzbw_r16_r8
circuit:movb %ch, %bh    #  3     0x8   2      OPC=movb_rh_rh
circuit:xaddb %bl, %ch   #  4     0xa   3      OPC=xaddb_rh_r8
circuit:xaddw %bx, %cx   #  5     0xd   4      OPC=xaddw_r16_r16
circuit:xchgw %cx, %r8w  #  6     0x11  4      OPC=xchgw_r16_r16
*/
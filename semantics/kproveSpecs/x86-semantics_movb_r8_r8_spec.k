module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rbx, "SPAD1") ~>
execinstr ( movq $0x1, %rbx , .Typedoperands ) ~>
setSZPForRegister( %rbx ) ~>
execinstr ( movzbq %cl, %r15 , .Typedoperands ) ~>
readFlagToRegister( "SF", %rbx ) ~>
execinstr ( xaddb %r15b, %bl , .Typedoperands ) ~>
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
"CF" |-> (mi(1, 0):MInt => _)
"OF" |-> (mi(1, 0):MInt => _)
"PF" |-> (mi(1, 0):MInt => _)
"R15" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, ?I1:Int):MInt => _)
"RCX" |-> (mi(64, ?I2:Int):MInt => _)
"SF" |-> (mi(1, 0):MInt => _)
"ZF" |-> (mi(1, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:movb_r8_r8
instr:movb %cl, %bl
maybe read:{ %cl }
must read:{ %cl }
maybe write:{ %bl }
must write:{ %bl }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:movq $0x1, %rbx          #  1     0     10     OPC=movq_r64_imm64
circuit:callq .set_szp_for_rbx   #  2     0xa   5      OPC=callq_label
circuit:movzbq %cl, %r15         #  3     0xf   4      OPC=movzbq_r64_r8
circuit:callq .read_sf_into_rbx  #  4     0x13  5      OPC=callq_label
circuit:xaddb %r15b, %bl         #  5     0x18  4      OPC=xaddb_r8_r8
*/
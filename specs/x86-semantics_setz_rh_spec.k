module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rax, "SPAD1") ~>
readFlagToRegister( "ZF", %rbx ) ~>
execinstr ( xorq %rax, %rax , .Typedoperands ) ~>
execinstr ( xaddb %ah, %bl , .Typedoperands ) ~>
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
"CF" |-> (mi(1, 0):MInt => _)
"OF" |-> (mi(1, 0):MInt => _)
"PF" |-> (mi(1, 0):MInt => _)
"RAX" |-> (mi(64, ?I1:Int):MInt => _)
"RBX" |-> (mi(64, 0):MInt => _)
"SF" |-> (mi(1, 0):MInt => _)
"ZF" |-> (mi(1, ?I2:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:setz_rh
instr:setz %ah
maybe read:{ %zf }
must read:{ %zf }
maybe write:{ %ah }
must write:{ %ah }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:callq .read_zf_into_rbx  #  1     0    5      OPC=callq_label
circuit:xorq %rax, %rax          #  2     0x5  3      OPC=xorq_r64_r64
circuit:xaddb %ah, %bl           #  3     0x8  3      OPC=xaddb_r8_rh
*/
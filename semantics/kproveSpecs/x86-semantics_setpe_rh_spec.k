module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rax, "SPAD1") ~>
readFlagToRegister( "PF", %rbx ) ~>
execinstr ( movw %bx, %ax , .Typedoperands ) ~>
execinstr ( xchgb %al, %bh , .Typedoperands ) ~>
execinstr ( xorw %bx, %ax , .Typedoperands ) ~>
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
"PF" |-> (mi(1, ?I1:Int):MInt => _)
"RAX" |-> (mi(64, ?I2:Int):MInt => _)
"RBX" |-> (mi(64, 0):MInt => _)
"SF" |-> (mi(1, 0):MInt => _)
"ZF" |-> (mi(1, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:setpe_rh
instr:setpe %ah
maybe read:{ %pf }
must read:{ %pf }
maybe write:{ %ah }
must write:{ %ah }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:callq .read_pf_into_rbx  #  1     0    5      OPC=callq_label
circuit:movw %bx, %ax            #  2     0x5  3      OPC=movw_r16_r16
circuit:xchgb %al, %bh           #  3     0x8  2      OPC=xchgb_rh_r8
circuit:xorw %bx, %ax            #  4     0xa  3      OPC=xorw_r16_r16
*/
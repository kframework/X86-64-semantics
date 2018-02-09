module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rax, "SPAD1") ~>
setFlag( mi(1, 1), "CF") ~>
execinstr ( setnae %ah , .Typedoperands ) ~>
readFlagToRegister( "CF", %rcx ) ~>
execinstr ( cmoveq %rcx, %rax , .Typedoperands ) ~>
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
"CF" |-> (mi(1, 0):MInt => _)
"RAX" |-> (mi(64, ?I1:Int):MInt => _)
"RCX" |-> (mi(64, 0):MInt => _)
"ZF" |-> (mi(1, ?I2:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:setnz_rh
instr:setnz %ah
maybe read:{ %zf }
must read:{ %zf }
maybe write:{ %ah }
must write:{ %ah }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:callq .set_cf            #  1     0     5      OPC=callq_label
circuit:setnae %ah               #  2     0x5   3      OPC=setnae_rh
circuit:callq .read_cf_into_rcx  #  3     0x8   5      OPC=callq_label
circuit:cmoveq %rcx, %rax        #  4     0xd   4      OPC=cmoveq_r64_r64
*/
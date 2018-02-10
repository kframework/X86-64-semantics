module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rax, "SPAD1") ~>
readFlagToRegister( "CF", %rcx ) ~>
writeRegisterToFlag( %cl, "ZF") ~>
execinstr ( setnz %ah , .Typedoperands ) ~>
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
"CF" |-> (mi(1, ?I1:Int):MInt => _)
"RAX" |-> (mi(64, ?I2:Int):MInt => _)
"RCX" |-> (mi(64, 0):MInt => _)
"ZF" |-> (mi(1, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:setnb_rh
instr:setnb %ah
maybe read:{ %cf }
must read:{ %cf }
maybe write:{ %ah }
must write:{ %ah }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:callq .read_cf_into_rcx  #  1     0    5      OPC=callq_label
circuit:callq .write_cl_to_zf    #  2     0x5  5      OPC=callq_label
circuit:setnz %ah                #  3     0xa  3      OPC=setnz_rh
*/
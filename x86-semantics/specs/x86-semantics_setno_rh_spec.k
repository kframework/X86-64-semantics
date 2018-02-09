module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rax, "SPAD1") ~>
readFlagToRegister( "OF", %rbx ) ~>
setSZPForRegister( %ebx ) ~>
readFlagToRegister( "ZF", %rcx ) ~>
execinstr ( movb %cl, %ah , .Typedoperands ) ~>
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
"OF" |-> (mi(1, ?I1:Int):MInt => _)
"PF" |-> (mi(1, 0):MInt => _)
"RAX" |-> (mi(64, ?I2:Int):MInt => _)
"RBX" |-> (mi(64, 0):MInt => _)
"RCX" |-> (mi(64, 0):MInt => _)
"SF" |-> (mi(1, 0):MInt => _)
"ZF" |-> (mi(1, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:setno_rh
instr:setno %ah
maybe read:{ %of }
must read:{ %of }
maybe write:{ %ah }
must write:{ %ah }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:callq .read_of_into_rbx  #  1     0     5      OPC=callq_label
circuit:callq .set_szp_for_ebx   #  2     0x5   5      OPC=callq_label
circuit:callq .read_zf_into_rcx  #  3     0xa   5      OPC=callq_label
circuit:movb %cl, %ah            #  4     0xf   2      OPC=movb_rh_r8
*/
module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rax, "SPAD1") ~>
execinstr ( movzbl %ah, %edi , .Typedoperands ) ~>
execinstr ( adcb %dil, %bl , .Typedoperands ) ~>
setSZPForRegister( %bl ) ~>
execinstr ( movb %bl, %ah , .Typedoperands ) ~>
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
"RDI" |-> (mi(64, 0):MInt => _)
"SF" |-> (mi(1, ?I7:Int):MInt => _)
"ZF" |-> (mi(1, ?I8:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:adcb_rh_r8
instr:adcb %bl, %ah
maybe read:{ %ah %bl %cf }
must read:{ %ah %bl %cf }
maybe write:{ %ah %cf %pf %af %zf %sf %of }
must write:{ %ah %cf %pf %af %zf %sf %of }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:movzbl %ah, %edi       #  1     0    3      OPC=movzbl_r32_rh
circuit:adcb %dil, %bl         #  2     0x3  3      OPC=adcb_r8_r8
circuit:callq .set_szp_for_bl  #  3     0x6  5      OPC=callq_label
circuit:movb %bl, %ah          #  4     0xb  2      OPC=movb_rh_r8
*/
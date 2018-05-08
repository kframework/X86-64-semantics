module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rax, "SPAD1") ~>
execinstr ( xorb %al, %al , .Typedoperands ) ~>
readFlagToRegister( "OF", %rcx ) ~>
execinstr ( cwtl  .Typedoperands ) ~>
execinstr ( movzbl %cl, %ebx , .Typedoperands ) ~>
execinstr ( decw %bx , .Typedoperands ) ~>
execinstr ( addb %bh, %ah , .Typedoperands ) ~>
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
"CF" |-> (mi(1, 0):MInt => _)
"OF" |-> (mi(1, ?I2:Int):MInt => _)
"PF" |-> (mi(1, ?I3:Int):MInt => _)
"RAX" |-> (mi(64, ?I4:Int):MInt => _)
"RBX" |-> (mi(64, 0):MInt => _)
"RCX" |-> (mi(64, 0):MInt => _)
"SF" |-> (mi(1, ?I5:Int):MInt => _)
"ZF" |-> (mi(1, ?I6:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:decb_rh
instr:decb %ah
maybe read:{ %ah }
must read:{ %ah }
maybe write:{ %ah %pf %af %zf %sf %of }
must write:{ %ah %pf %af %zf %sf %of }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:xorb %al, %al            #  1     0     2      OPC=xorb_r8_r8
circuit:callq .read_of_into_rcx  #  2     0x2   5      OPC=callq_label
circuit:cwtl                     #  3     0x7   1      OPC=cwtl
circuit:movzbl %cl, %ebx         #  4     0x8   3      OPC=movzbl_r32_r8
circuit:decw %bx                 #  5     0xb   3      OPC=decw_r16
circuit:addb %bh, %ah            #  6     0xe   2      OPC=addb_rh_rh
*/
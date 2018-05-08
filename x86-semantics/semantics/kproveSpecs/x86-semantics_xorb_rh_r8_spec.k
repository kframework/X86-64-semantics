module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rax, "SPAD1") ~>
execinstr ( movq $0x4, %rdi , .Typedoperands ) ~>
execinstr ( shlb $0x1, %dil , .Typedoperands ) ~>
execinstr ( xorq %r8, %r8 , .Typedoperands ) ~>
execinstr ( xorb %ah, %bl , .Typedoperands ) ~>
execinstr ( popcntw %r8w, %ax , .Typedoperands ) ~>
execinstr ( xaddb %ah, %bl , .Typedoperands ) ~>
execinstr ( rcll $0x1, %edi , .Typedoperands ) ~>
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
"R8" |-> (mi(64, 0):MInt => _)
"RAX" |-> (mi(64, ?I5:Int):MInt => _)
"RBX" |-> (mi(64, ?I6:Int):MInt => _)
"RDI" |-> (mi(64, 0):MInt => _)
"SF" |-> (mi(1, ?I7:Int):MInt => _)
"ZF" |-> (mi(1, ?I8:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:xorb_rh_r8
instr:xorb %bl, %ah
maybe read:{ %ah %bl }
must read:{ %ah %bl }
maybe write:{ %ah %cf %pf %zf %sf %of }
must write:{ %ah %cf %pf %zf %sf %of }
maybe undef:{ %af }
must undef:{ %af }
required flags:{ }

circuit:movq $0x4, %rdi    #  1     0     10     OPC=movq_r64_imm64
circuit:shlb $0x1, %dil    #  2     0xa   3      OPC=shlb_r8_one
circuit:xorq %r8, %r8      #  3     0xd   3      OPC=xorq_r64_r64
circuit:xorb %ah, %bl      #  4     0x10  2      OPC=xorb_r8_rh
circuit:popcntw %r8w, %ax  #  5     0x12  6      OPC=popcntw_r16_r16
circuit:xaddb %ah, %bl     #  6     0x18  3      OPC=xaddb_r8_rh
circuit:rcll $0x1, %edi    #  7     0x1b  2      OPC=rcll_r32_one
*/
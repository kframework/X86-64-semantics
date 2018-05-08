module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rax, "SPAD1") ~>
execinstr ( movq $0xfffffffffffffffd, %rdx , .Typedoperands ) ~>
writeRegisterToFlag( %dl, "ZF") ~>
readFlagToRegister( "ZF", %rbx ) ~>
execinstr ( stc  .Typedoperands ) ~>
execinstr ( adcw %dx, %bx , .Typedoperands ) ~>
execinstr ( xorb %bl, %ah , .Typedoperands ) ~>
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
"RDX" |-> (mi(64, 0):MInt => _)
"SF" |-> (mi(1, 0):MInt => _)
"ZF" |-> (mi(1, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:notb_rh
instr:notb %ah
maybe read:{ %ah }
must read:{ %ah }
maybe write:{ %ah }
must write:{ %ah }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:movq $0xfffffffffffffffd, %rdx  #  1     0     10     OPC=movq_r64_imm64
circuit:callq .write_dl_to_zf           #  2     0xa   5      OPC=callq_label
circuit:callq .read_zf_into_rbx         #  3     0xf   5      OPC=callq_label
circuit:stc                             #  4     0x14  1      OPC=stc
circuit:adcw %dx, %bx                   #  5     0x15  3      OPC=adcw_r16_r16
circuit:xorb %bl, %ah                   #  6     0x18  2      OPC=xorb_rh_r8
*/
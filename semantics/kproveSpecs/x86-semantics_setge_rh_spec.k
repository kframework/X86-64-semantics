module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rax, "SPAD1") ~>
execinstr ( movq $0x1, %rax , .Typedoperands ) ~>
execinstr ( setge %al , .Typedoperands ) ~>
execinstr ( movb %al, %ah , .Typedoperands ) ~>
execinstr ( movq %rax, %rax , .Typedoperands ) ~>
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
"RAX" |-> (mi(64, ?I2:Int):MInt => _)
"SF" |-> (mi(1, ?I3:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:setge_rh
instr:setge %ah
maybe read:{ %sf %of }
must read:{ %sf %of }
maybe write:{ %ah }
must write:{ %ah }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:movq $0x1, %rax  #  1     0     10     OPC=movq_r64_imm64
circuit:setge %al        #  2     0xa   3      OPC=setge_r8
circuit:movb %al, %ah    #  3     0xd   2      OPC=movb_rh_r8
circuit:movq %rax, %rax  #  4     0xf   3      OPC=movq_r64_r64
*/